; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_tpl_ramips_recoveryflag.c_mtd_tpl_recoverflag_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_tpl_ramips_recoveryflag.c_mtd_tpl_recoverflag_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erase_info_user = type { i32, i64 }
%struct.uboot_args = type { i64 }

@erasesize = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not allocate memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@TPL_RECOVER_MAGIC = common dso_local global i64 0, align 8
@TPL_NO_RECOVER_MAGIC = common dso_local global i64 0, align 8
@MEMERASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to erase block: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to write: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_tpl_recoverflag_write(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.erase_info_user, align 8
  %7 = alloca %struct.uboot_args*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @erasesize, align 4
  %12 = call %struct.uboot_args* @malloc(i32 %11)
  store %struct.uboot_args* %12, %struct.uboot_args** %7, align 8
  %13 = load %struct.uboot_args*, %struct.uboot_args** %7, align 8
  %14 = icmp ne %struct.uboot_args* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @mtd_check_open(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %9, align 4
  br label %73

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.uboot_args*, %struct.uboot_args** %7, align 8
  %30 = load i32, i32* @erasesize, align 4
  %31 = call i32 @pread(i32 %28, %struct.uboot_args* %29, i32 %30, i32 0)
  %32 = load i64, i64* @TPL_RECOVER_MAGIC, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* @TPL_NO_RECOVER_MAGIC, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.uboot_args*, %struct.uboot_args** %7, align 8
  %40 = getelementptr inbounds %struct.uboot_args, %struct.uboot_args* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %73

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %6, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @erasesize, align 4
  %47 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @MEMERASE, align 4
  %50 = call i32 @ioctl(i32 %48, i32 %49, %struct.erase_info_user* %6)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %73

57:                                               ; preds = %44
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.uboot_args*, %struct.uboot_args** %7, align 8
  %60 = getelementptr inbounds %struct.uboot_args, %struct.uboot_args* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.uboot_args*, %struct.uboot_args** %7, align 8
  %63 = load i32, i32* @erasesize, align 4
  %64 = call i32 @pwrite(i32 %61, %struct.uboot_args* %62, i32 %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %57
  %72 = call i32 (...) @sync()
  br label %73

73:                                               ; preds = %71, %53, %43, %23
  %74 = load %struct.uboot_args*, %struct.uboot_args** %7, align 8
  %75 = call i32 @free(%struct.uboot_args* %74)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.uboot_args* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

declare dso_local i32 @pread(i32, %struct.uboot_args*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.erase_info_user*) #1

declare dso_local i32 @pwrite(i32, %struct.uboot_args*, i32, i32) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @free(%struct.uboot_args*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
