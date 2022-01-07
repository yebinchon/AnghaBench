; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsSearchTreeType.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsSearchTreeType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32, i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_disk_key = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root_item*, i32, i32, %struct.btrfs_path*)* @BtrFsSearchTreeType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BtrFsSearchTreeType(%struct.btrfs_root_item* %0, i32 %1, i32 %2, %struct.btrfs_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca %struct.btrfs_disk_key, align 8
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.btrfs_path* %3, %struct.btrfs_path** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %10, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %10, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %10, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %23 = call i32 @_BtrFsSearchTree(i32 %18, i32 %21, %struct.btrfs_disk_key* %10, %struct.btrfs_path* %22)
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %25 = call %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %31 = call %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path* %30)
  %32 = call i32 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %10, %struct.TYPE_3__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %29, %4
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @_BtrFsSearchTree(i32, i32, %struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_comp_keys_type(%struct.btrfs_disk_key*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
