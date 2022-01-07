; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_read_sys_chunk_array.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_read_sys_chunk_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_super_block }
%struct.btrfs_super_block = type { i64, i64 }
%struct.btrfs_disk_key = type { i32, i32, i32 }
%struct.btrfs_chunk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BtrFsInfo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"reading chunk array\0A-----------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"chunk key objectid: %llx, offset: %llx, type: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"chunk length: %llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"chunk owner: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"chunk stripe_len: %llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"chunk type: %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"chunk io_align: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"chunk io_width: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"chunk sector_size: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"chunk num_stripes: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"chunk sub_stripes: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"read_sys_chunk_array() cur=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @btrfs_read_sys_chunk_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_read_sys_chunk_array() #0 {
  %1 = alloca %struct.btrfs_super_block*, align 8
  %2 = alloca %struct.btrfs_disk_key*, align 8
  %3 = alloca %struct.btrfs_chunk*, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BtrFsInfo, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.btrfs_super_block* %6, %struct.btrfs_super_block** %1, align 8
  %7 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %14, %0
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %11 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %86

14:                                               ; preds = %8
  %15 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %16 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %17, %18
  %20 = inttoptr i64 %19 to %struct.btrfs_disk_key*
  store %struct.btrfs_disk_key* %20, %struct.btrfs_disk_key** %2, align 8
  %21 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %2, align 8
  %22 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 12
  store i64 %32, i64* %4, align 8
  %33 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %1, align 8
  %34 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %35, %36
  %38 = inttoptr i64 %37 to %struct.btrfs_chunk*
  store %struct.btrfs_chunk* %38, %struct.btrfs_chunk** %3, align 8
  %39 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  %55 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %57)
  %59 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %60 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %61)
  %63 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %65)
  %67 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %68 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %69)
  %71 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %72 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %73)
  %75 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %76 = getelementptr inbounds %struct.btrfs_chunk, %struct.btrfs_chunk* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @btrfs_chunk_item_size(i64 %77)
  %79 = load i64, i64* %4, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 %81)
  %83 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %2, align 8
  %84 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %3, align 8
  %85 = call i32 @insert_map(%struct.btrfs_disk_key* %83, %struct.btrfs_chunk* %84)
  br label %8

86:                                               ; preds = %8
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @btrfs_chunk_item_size(i64) #1

declare dso_local i32 @insert_map(%struct.btrfs_disk_key*, %struct.btrfs_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
