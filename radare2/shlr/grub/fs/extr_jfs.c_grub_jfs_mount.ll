; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_data = type { %struct.TYPE_2__, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GRUB_JFS_SBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"JFS1\00", align 1
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"not a JFS filesystem\00", align 1
@GRUB_JFS_FS1_INODE_BLK = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_jfs_data* (i32)* @grub_jfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_jfs_data* @grub_jfs_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_jfs_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_jfs_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.grub_jfs_data* null, %struct.grub_jfs_data** %4, align 8
  %5 = call %struct.grub_jfs_data* @grub_malloc(i32 40)
  store %struct.grub_jfs_data* %5, %struct.grub_jfs_data** %4, align 8
  %6 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %7 = icmp ne %struct.grub_jfs_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.grub_jfs_data* null, %struct.grub_jfs_data** %2, align 8
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GRUB_JFS_SBLOCK, align 4
  %12 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %13 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %12, i32 0, i32 4
  %14 = call i64 @grub_disk_read(i32 %10, i32 %11, i32 0, i32 4, %struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %47

17:                                               ; preds = %9
  %18 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %19 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i64 @grub_strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %27 = call i32 @grub_error(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %47

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %31 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %33 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %35 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %37 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GRUB_JFS_FS1_INODE_BLK, align 4
  %40 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %41 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %40, i32 0, i32 0
  %42 = call i64 @grub_disk_read(i32 %38, i32 %39, i32 0, i32 4, %struct.TYPE_2__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %47

45:                                               ; preds = %28
  %46 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  store %struct.grub_jfs_data* %46, %struct.grub_jfs_data** %2, align 8
  br label %57

47:                                               ; preds = %44, %25, %16
  %48 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %49 = call i32 @grub_free(%struct.grub_jfs_data* %48)
  %50 = load i64, i64* @grub_errno, align 8
  %51 = load i64, i64* @GRUB_ERR_OUT_OF_RANGE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %55 = call i32 @grub_error(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  store %struct.grub_jfs_data* null, %struct.grub_jfs_data** %2, align 8
  br label %57

57:                                               ; preds = %56, %45, %8
  %58 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %2, align 8
  ret %struct.grub_jfs_data* %58
}

declare dso_local %struct.grub_jfs_data* @grub_malloc(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_free(%struct.grub_jfs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
