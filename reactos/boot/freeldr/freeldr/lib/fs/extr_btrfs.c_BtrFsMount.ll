; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsMount.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsMount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.btrfs_root_item, %struct.TYPE_6__, i32 }
%struct.btrfs_root_item = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.btrfs_path = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Enter BtrFsMount(%lu)\0A\00", align 1
@TAG_BTRFS_INFO = common dso_local global i32 0, align 4
@BtrFsInfo = common dso_local global %struct.TYPE_7__* null, align 8
@BTRFS_SUPER_INFO_OFFSET = common dso_local global i32 0, align 4
@BTRFS_MAGIC_N = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"BtrFsMount(%lu) superblock magic ok\0A\00", align 1
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"BtrFsMount(%lu) success\0A\00", align 1
@BtrFsFuncTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BtrFsMount(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_path, align 4
  %5 = alloca %struct.btrfs_root_item, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @TAG_BTRFS_INFO, align 4
  %9 = call %struct.TYPE_7__* @FrLdrTempAlloc(i32 4, i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** @BtrFsInfo, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %15 = call i32 @RtlZeroMemory(%struct.TYPE_7__* %14, i32 4)
  %16 = load i32, i32* @BTRFS_SUPER_INFO_OFFSET, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = call i32 @disk_read(i32 %16, %struct.TYPE_6__* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %23 = load i32, i32* @TAG_BTRFS_INFO, align 4
  %24 = call i32 @FrLdrTempFree(%struct.TYPE_7__* %22, i32 %23)
  store i32* null, i32** %2, align 8
  br label %75

25:                                               ; preds = %13
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BTRFS_MAGIC_N, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %34 = load i32, i32* @TAG_BTRFS_INFO, align 4
  %35 = call i32 @FrLdrTempFree(%struct.TYPE_7__* %33, i32 %34)
  store i32* null, i32** %2, align 8
  br label %75

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @btrfs_init_crc32c()
  %43 = call i32 (...) @btrfs_read_sys_chunk_array()
  %44 = call i32 (...) @btrfs_read_chunk_tree()
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %5, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %5, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = call i32 @init_path(%struct.btrfs_path* %4)
  %56 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %57 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %58 = call i32 @BtrFsSearchTreeType(%struct.btrfs_root_item* %5, i32 %56, i32 %57, %struct.btrfs_path* %4)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %36
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %62 = load i32, i32* @TAG_BTRFS_INFO, align 4
  %63 = call i32 @FrLdrTempFree(%struct.TYPE_7__* %61, i32 %62)
  %64 = call i32 @free_path(%struct.btrfs_path* %4)
  store i32* null, i32** %2, align 8
  br label %75

65:                                               ; preds = %36
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @BtrFsInfo, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i64 @path_current_data(%struct.btrfs_path* %4)
  %69 = inttoptr i64 %68 to %struct.btrfs_root_item*
  %70 = bitcast %struct.btrfs_root_item* %67 to i8*
  %71 = bitcast %struct.btrfs_root_item* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 4 %71, i64 8, i1 false)
  %72 = call i32 @free_path(%struct.btrfs_path* %4)
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32* @BtrFsFuncTable, i32** %2, align 8
  br label %75

75:                                               ; preds = %65, %60, %32, %21, %12
  %76 = load i32*, i32** %2, align 8
  ret i32* %76
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @disk_read(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @btrfs_init_crc32c(...) #1

declare dso_local i32 @btrfs_read_sys_chunk_array(...) #1

declare dso_local i32 @btrfs_read_chunk_tree(...) #1

declare dso_local i32 @init_path(%struct.btrfs_path*) #1

declare dso_local i32 @BtrFsSearchTreeType(%struct.btrfs_root_item*, i32, i32, %struct.btrfs_path*) #1

declare dso_local i32 @free_path(%struct.btrfs_path*) #1

declare dso_local i64 @path_current_data(%struct.btrfs_path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
