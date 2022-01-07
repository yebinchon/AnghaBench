; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ufs.c_grub_ufs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ufs_data = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@sblocklist = common dso_local global i32* null, align 8
@grub_errno = common dso_local global i64 0, align 8
@GRUB_UFS_MAGIC = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not an ufs1 filesystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_ufs_data* (i32)* @grub_ufs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_ufs_data* @grub_ufs_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_ufs_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_ufs_data*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @sblocklist, align 8
  store i32* %6, i32** %5, align 8
  %7 = call %struct.grub_ufs_data* @grub_malloc(i32 24)
  store %struct.grub_ufs_data* %7, %struct.grub_ufs_data** %4, align 8
  %8 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %9 = icmp ne %struct.grub_ufs_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.grub_ufs_data* null, %struct.grub_ufs_data** %2, align 8
  br label %74

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %14 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %16 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %56, %11
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %26 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %25, i32 0, i32 1
  %27 = call i32 @grub_disk_read(i32 %22, i32 %24, i32 0, i32 4, %struct.TYPE_2__* %26)
  %28 = load i64, i64* @grub_errno, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %33 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @grub_le_to_cpu32(i32 %35)
  %37 = load i64, i64* @GRUB_UFS_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %41 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  store %struct.grub_ufs_data* %42, %struct.grub_ufs_data** %2, align 8
  br label %74

43:                                               ; preds = %31
  %44 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %45 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @grub_be_to_cpu32(i32 %47)
  %49 = load i64, i64* @GRUB_UFS_MAGIC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %53 = getelementptr inbounds %struct.grub_ufs_data, %struct.grub_ufs_data* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  store %struct.grub_ufs_data* %54, %struct.grub_ufs_data** %2, align 8
  br label %74

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  br label %17

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i64, i64* @grub_errno, align 8
  %62 = load i64, i64* @GRUB_ERR_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* @grub_errno, align 8
  %66 = load i64, i64* @GRUB_ERR_OUT_OF_RANGE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %70 = call i32 @grub_error(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %4, align 8
  %73 = call i32 @grub_free(%struct.grub_ufs_data* %72)
  store %struct.grub_ufs_data* null, %struct.grub_ufs_data** %2, align 8
  br label %74

74:                                               ; preds = %71, %51, %39, %10
  %75 = load %struct.grub_ufs_data*, %struct.grub_ufs_data** %2, align 8
  ret %struct.grub_ufs_data* %75
}

declare dso_local %struct.grub_ufs_data* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @grub_le_to_cpu32(i32) #1

declare dso_local i64 @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_free(%struct.grub_ufs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
