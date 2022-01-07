; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_write_partition.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_tplink-safeloader.c_write_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i32, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can not read partition from input_file\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Can not write partition to output_file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.flash_partition_entry*, i32*)* @write_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_partition(i32* %0, i64 %1, %struct.flash_partition_entry* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.flash_partition_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.flash_partition_entry* %2, %struct.flash_partition_entry** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %7, align 8
  %13 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @fseek(i32* %11, i64 %16, i32 %17)
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %44, %4
  %20 = load i64, i64* %10, align 8
  %21 = add i64 4096, %20
  %22 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %7, align 8
  %23 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ule i64 %21, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @fread(i8* %28, i64 4096, i32 1, i32* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @error(i32 1, i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @fwrite(i8* %36, i64 4096, i32 1, i32* %37)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @error(i32 1, i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 4096
  store i64 %46, i64* %10, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %7, align 8
  %50 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %7, align 8
  %56 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %10, align 8
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %62 = load i64, i64* %10, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @fread(i8* %61, i64 %62, i32 1, i32* %63)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @error(i32 1, i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %54
  %70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %71 = load i64, i64* %10, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @fwrite(i8* %70, i64 %71, i32 1, i32* %72)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @error(i32 1, i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %47
  ret void
}

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
