; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_read_chunk_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_read_chunk_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_super_block }
%struct.btrfs_super_block = type { i32, i32, i32, i32 }
%struct.btrfs_disk_key = type { i64, i32, i32 }
%struct.btrfs_chunk = type { i32 }
%struct.btrfs_path = type { i32 }

@BtrFsInfo = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_SUPER_FLAG_METADUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"warning: only support single device btrfs\0A\00", align 1
@BTRFS_DEV_ITEMS_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_DEV_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_FIRST_CHUNK_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_CHUNK_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @btrfs_read_chunk_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_read_chunk_tree() #0 {
  %1 = alloca %struct.btrfs_super_block*, align 8
  %2 = alloca %struct.btrfs_disk_key, align 8
  %3 = alloca %struct.btrfs_disk_key, align 8
  %4 = alloca %struct.btrfs_chunk*, align 8
  %5 = alloca %struct.btrfs_path, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BtrFsInfo, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.btrfs_super_block* %7, %struct.btrfs_super_block** %1, align 8
  %8 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %9 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BTRFS_SUPER_FLAG_METADUMP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %0
  %15 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %16 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* @BTRFS_DEV_ITEMS_OBJECTID, align 4
  %23 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %2, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @BTRFS_DEV_ITEM_KEY, align 4
  %25 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %2, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @BTRFS_FIRST_CHUNK_TREE_OBJECTID, align 4
  %27 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @BTRFS_CHUNK_ITEM_KEY, align 4
  %29 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %3, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = call i32 @init_path(%struct.btrfs_path* %5)
  %32 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %33 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %36 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_BtrFsSearchTree(i32 %34, i32 %37, %struct.btrfs_disk_key* %3, %struct.btrfs_path* %5)
  br label %39

39:                                               ; preds = %55, %21
  %40 = call i32 @path_current_disk_key(%struct.btrfs_path* %5)
  %41 = call i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %2, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %55

44:                                               ; preds = %39
  %45 = call i32 @path_current_disk_key(%struct.btrfs_path* %5)
  %46 = call i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %3, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %59

49:                                               ; preds = %44
  %50 = call i64 @path_current_data(%struct.btrfs_path* %5)
  %51 = inttoptr i64 %50 to %struct.btrfs_chunk*
  store %struct.btrfs_chunk* %51, %struct.btrfs_chunk** %4, align 8
  %52 = call i32 @path_current_disk_key(%struct.btrfs_path* %5)
  %53 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %54 = call i32 @insert_map(i32 %52, %struct.btrfs_chunk* %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = call i32 @next_slot(%struct.btrfs_disk_key* %3, %struct.btrfs_path* %5)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %39, label %59

59:                                               ; preds = %55, %48
  %60 = call i32 @free_path(%struct.btrfs_path* %5)
  br label %61

61:                                               ; preds = %59, %0
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @init_path(%struct.btrfs_path*) #1

declare dso_local i32 @_BtrFsSearchTree(i32, i32, %struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i64 @path_current_data(%struct.btrfs_path*) #1

declare dso_local i32 @insert_map(i32, %struct.btrfs_chunk*) #1

declare dso_local i32 @next_slot(%struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i32 @free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
