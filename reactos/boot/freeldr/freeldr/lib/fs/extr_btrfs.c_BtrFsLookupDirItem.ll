; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsLookupDirItem.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsLookupDirItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_disk_key = type { i32, i32, i32 }

@BTRFS_DIR_ITEM_KEY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root_item*, i32, i8*, i32, %struct.btrfs_dir_item*)* @BtrFsLookupDirItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BtrFsLookupDirItem(%struct.btrfs_root_item* %0, i32 %1, i8* %2, i32 %3, %struct.btrfs_dir_item* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_dir_item*, align 8
  %12 = alloca %struct.btrfs_path, align 4
  %13 = alloca %struct.btrfs_disk_key, align 4
  %14 = alloca %struct.btrfs_dir_item*, align 8
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.btrfs_dir_item* %4, %struct.btrfs_dir_item** %11, align 8
  store %struct.btrfs_dir_item* null, %struct.btrfs_dir_item** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %13, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @BTRFS_DIR_ITEM_KEY, align 4
  %18 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %13, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @btrfs_crc32c(i8* %19, i32 %20)
  %22 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 @init_path(%struct.btrfs_path* %12)
  %24 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %7, align 8
  %25 = call i32 @BtrFsSearchTree(%struct.btrfs_root_item* %24, %struct.btrfs_disk_key* %13, %struct.btrfs_path* %12)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = call i32 @free_path(%struct.btrfs_path* %12)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %6, align 4
  br label %46

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.btrfs_dir_item* @BtrFsMatchDirItemName(%struct.btrfs_path* %12, i8* %31, i32 %32)
  store %struct.btrfs_dir_item* %33, %struct.btrfs_dir_item** %14, align 8
  %34 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %35 = icmp ne %struct.btrfs_dir_item* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %11, align 8
  %38 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %39 = bitcast %struct.btrfs_dir_item* %37 to i8*
  %40 = bitcast %struct.btrfs_dir_item* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %36, %30
  %42 = call i32 @free_path(%struct.btrfs_path* %12)
  %43 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %14, align 8
  %44 = icmp ne %struct.btrfs_dir_item* %43, null
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @btrfs_crc32c(i8*, i32) #1

declare dso_local i32 @init_path(%struct.btrfs_path*) #1

declare dso_local i32 @BtrFsSearchTree(%struct.btrfs_root_item*, %struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i32 @free_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_dir_item* @BtrFsMatchDirItemName(%struct.btrfs_path*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
