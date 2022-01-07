; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit.c_mtd_get_squashfs_len.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit.c_mtd_get_squashfs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32 }
%struct.squashfs_super_block = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"error occured while reading from \22%s\22\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SQUASHFS_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no squashfs found in \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"squashfs is empty in \22%s\22\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"squashfs has invalid size in \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_get_squashfs_len(%struct.mtd_info* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.squashfs_super_block, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = bitcast %struct.squashfs_super_block* %8 to i8*
  %14 = call i32 @mtd_read(%struct.mtd_info* %11, i64 %12, i32 8, i64* %9, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %27

20:                                               ; preds = %17, %3
  %21 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_alert(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.squashfs_super_block, %struct.squashfs_super_block* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = load i64, i64* @SQUASHFS_MAGIC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %35 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pr_alert(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %71

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.squashfs_super_block, %struct.squashfs_super_block* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le64_to_cpu(i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ule i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_alert(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %71

53:                                               ; preds = %40
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pr_alert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %53
  %69 = load i64, i64* %9, align 8
  %70 = load i64*, i64** %7, align 8
  store i64 %69, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %61, %46, %33, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i32 @pr_alert(i8*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
