; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_xfs_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.grub_xfs_inode = type { i64 }

@grub_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"not a correct XFS inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_xfs_data*, i32, %struct.grub_xfs_inode*)* @grub_xfs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_xfs_read_inode(%struct.grub_xfs_data* %0, i32 %1, %struct.grub_xfs_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_xfs_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_xfs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.grub_xfs_data* %0, %struct.grub_xfs_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.grub_xfs_inode* %2, %struct.grub_xfs_inode** %7, align 8
  %10 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @grub_xfs_inode_block(%struct.grub_xfs_data* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @grub_xfs_inode_offset(%struct.grub_xfs_data* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %17 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %5, align 8
  %22 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.grub_xfs_inode*, %struct.grub_xfs_inode** %7, align 8
  %27 = call i64 @grub_disk_read(i32 %18, i32 %19, i32 %20, i32 %25, %struct.grub_xfs_inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @grub_errno, align 4
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %3
  %32 = load %struct.grub_xfs_inode*, %struct.grub_xfs_inode** %7, align 8
  %33 = getelementptr inbounds %struct.grub_xfs_inode, %struct.grub_xfs_inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i64 @grub_strncmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %40 = call i32 @grub_error(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @grub_xfs_inode_block(%struct.grub_xfs_data*, i32) #1

declare dso_local i32 @grub_xfs_inode_offset(%struct.grub_xfs_data*, i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.grub_xfs_inode*) #1

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
