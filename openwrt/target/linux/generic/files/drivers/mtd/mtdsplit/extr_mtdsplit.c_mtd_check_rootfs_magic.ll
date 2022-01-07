; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit.c_mtd_check_rootfs_magic.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit.c_mtd_check_rootfs_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SQUASHFS_MAGIC = common dso_local global i64 0, align 8
@MTDSPLIT_PART_TYPE_SQUASHFS = common dso_local global i32 0, align 4
@MTDSPLIT_PART_TYPE_JFFS2 = common dso_local global i32 0, align 4
@UBI_EC_MAGIC = common dso_local global i64 0, align 8
@MTDSPLIT_PART_TYPE_UBI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_check_rootfs_magic(%struct.mtd_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = bitcast i32* %8 to i8*
  %14 = call i32 @mtd_read(%struct.mtd_info* %11, i64 %12, i32 4, i64* %9, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  %28 = load i64, i64* @SQUASHFS_MAGIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @MTDSPLIT_PART_TYPE_SQUASHFS, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %4, align 4
  br label %64

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 428154883
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @MTDSPLIT_PART_TYPE_JFFS2, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %4, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @be32_to_cpu(i32 %48)
  %50 = load i64, i64* @UBI_EC_MAGIC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @MTDSPLIT_PART_TYPE_UBI, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %4, align 4
  br label %64

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %58, %46, %36, %22, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
