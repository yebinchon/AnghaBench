; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_scan_mtd.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_tffs_nand_read.c_scan_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_info_user = type { i32, i32 }

@mtdfd = common dso_local global i32 0, align 4
@MEMGETINFO = common dso_local global i32 0, align 4
@blocksize = common dso_local global i32 0, align 4
@TFFS_SECTOR_SIZE = common dso_local global i32 0, align 4
@sectors = common dso_local global %struct.TYPE_3__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: memory allocation failed!\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scan_mtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_mtd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mtd_info_user, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @mtdfd, align 4
  %8 = load i32, i32* @MEMGETINFO, align 4
  %9 = call i64 @ioctl(i32 %7, i32 %8, %struct.mtd_info_user* %2)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %96

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @blocksize, align 4
  %15 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %2, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TFFS_SECTOR_SIZE, align 4
  %18 = sdiv i32 %16, %17
  %19 = add nsw i32 %18, 7
  %20 = sdiv i32 %19, 8
  %21 = sext i32 %20 to i64
  %22 = add i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_3__* @malloc(i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** @sectors, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sectors, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %2, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TFFS_SECTOR_SIZE, align 4
  %36 = sdiv i32 %34, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sectors, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sectors, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %2, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TFFS_SECTOR_SIZE, align 4
  %45 = sdiv i32 %43, %44
  %46 = add nsw i32 %45, 7
  %47 = sdiv i32 %46, 8
  %48 = call i32 @memset(i32 %41, i32 255, i32 %47)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %88, %32
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %2, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %2, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @check_block(i32 %61, i32 %62)
  store i64 %63, i64* %5, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @sector_mark_bad(i32 %64)
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %60
  br label %87

72:                                               ; preds = %54
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @sector_get_good(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @check_sector(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79, %75, %72
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @sector_mark_bad(i32 %84)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @TFFS_SECTOR_SIZE, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %49

94:                                               ; preds = %49
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %1, align 4
  br label %96

96:                                               ; preds = %94, %11
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i64 @ioctl(i32, i32, %struct.mtd_info_user*) #1

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @check_block(i32, i32) #1

declare dso_local i32 @sector_mark_bad(i32) #1

declare dso_local i32 @sector_get_good(i32) #1

declare dso_local i32 @check_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
