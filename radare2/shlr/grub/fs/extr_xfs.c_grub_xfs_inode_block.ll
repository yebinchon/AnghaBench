; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_inode_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_xfs.c_grub_xfs_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_xfs_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@GRUB_DISK_SECTOR_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_xfs_data*, i64)* @grub_xfs_inode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_xfs_inode_block(%struct.grub_xfs_data* %0, i64 %1) #0 {
  %3 = alloca %struct.grub_xfs_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.grub_xfs_data* %0, %struct.grub_xfs_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @GRUB_XFS_INO_INOINAG(%struct.grub_xfs_data* %8, i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @GRUB_XFS_INO_AG(%struct.grub_xfs_data* %11, i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %3, align 8
  %16 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = ashr i64 %14, %18
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %3, align 8
  %22 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = mul nsw i64 %20, %23
  %25 = add nsw i64 %19, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.grub_xfs_data*, %struct.grub_xfs_data** %3, align 8
  %27 = getelementptr inbounds %struct.grub_xfs_data, %struct.grub_xfs_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GRUB_DISK_SECTOR_BITS, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = shl i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  ret i64 %34
}

declare dso_local i64 @GRUB_XFS_INO_INOINAG(%struct.grub_xfs_data*, i64) #1

declare dso_local i64 @GRUB_XFS_INO_AG(%struct.grub_xfs_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
