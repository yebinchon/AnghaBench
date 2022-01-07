; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_logical_physical.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_logical_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.btrfs_chunk_map }
%struct.btrfs_chunk_map = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.btrfs_chunk_map_item = type { i64 }

@BtrFsInfo = common dso_local global %struct.TYPE_4__* null, align 8
@btrfs_comp_chunk_map = common dso_local global i64 0, align 8
@INVALID_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Address translation: 0x%llx -> 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @logical_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @logical_physical(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.btrfs_chunk_map*, align 8
  %5 = alloca %struct.btrfs_chunk_map_item, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BtrFsInfo, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.btrfs_chunk_map* %9, %struct.btrfs_chunk_map** %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_chunk_map_item, %struct.btrfs_chunk_map_item* %5, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @btrfs_comp_chunk_map, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bin_search(%struct.TYPE_3__* %14, i32 24, %struct.btrfs_chunk_map_item* %5, i32 %16, i32 0, i32 %19, i32* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @INVALID_ADDRESS, align 8
  store i64 %30, i64* %2, align 8
  br label %101

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %42, %51
  %53 = icmp sge i64 %33, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i64, i64* @INVALID_ADDRESS, align 8
  store i64 %55, i64* %2, align 8
  br label %101

56:                                               ; preds = %32
  %57 = load i64, i64* %3, align 8
  %58 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %59 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %68, %77
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %78)
  %80 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %81 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %3, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.btrfs_chunk_map*, %struct.btrfs_chunk_map** %4, align 8
  %92 = getelementptr inbounds %struct.btrfs_chunk_map, %struct.btrfs_chunk_map* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %90, %99
  store i64 %100, i64* %2, align 8
  br label %101

101:                                              ; preds = %56, %54, %29
  %102 = load i64, i64* %2, align 8
  ret i64 %102
}

declare dso_local i32 @bin_search(%struct.TYPE_3__*, i32, %struct.btrfs_chunk_map_item*, i32, i32, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
