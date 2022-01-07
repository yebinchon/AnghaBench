; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_blocklist.c_CacheInternalAddBlockToCache.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_blocklist.c_CacheInternalAddBlockToCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"CacheInternalAddBlockToCache() BlockNumber = %d\0A\00", align 1
@TAG_CACHE_BLOCK = common dso_local global i32 0, align 4
@TAG_CACHE_DATA = common dso_local global i32 0, align 4
@DiskReadBuffer = common dso_local global i32 0, align 4
@CacheBlockCount = common dso_local global i32 0, align 4
@CacheSizeCurrent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @CacheInternalAddBlockToCache(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @CacheInternalCheckCacheSizeLimits(%struct.TYPE_10__* %9)
  %11 = load i32, i32* @TAG_CACHE_BLOCK, align 4
  %12 = call i8* @FrLdrTempAlloc(i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = call i32 @RtlZeroMemory(%struct.TYPE_11__* %18, i32 4)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load i32, i32* @TAG_CACHE_DATA, align 4
  %31 = call i8* @FrLdrTempAlloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_11__*
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = load i32, i32* @TAG_CACHE_BLOCK, align 4
  %42 = call i32 @FrLdrTempFree(%struct.TYPE_11__* %40, i32 %41)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %99

43:                                               ; preds = %17
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DiskReadBuffer, align 4
  %56 = call i32 @MachDiskReadLogicalSectors(i32 %46, i32 %51, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %43
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* @TAG_CACHE_DATA, align 4
  %63 = call i32 @FrLdrTempFree(%struct.TYPE_11__* %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = load i32, i32* @TAG_CACHE_BLOCK, align 4
  %66 = call i32 @FrLdrTempFree(%struct.TYPE_11__* %64, i32 %65)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %99

67:                                               ; preds = %43
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* @DiskReadBuffer, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = call i32 @RtlCopyMemory(%struct.TYPE_11__* %70, i32 %71, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = call i32 @InsertTailList(i32* %81, i32* %83)
  %85 = load i32, i32* @CacheBlockCount, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @CacheBlockCount, align 4
  %87 = load i32, i32* @CacheBlockCount, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = mul nsw i32 %87, %94
  store i32 %95, i32* @CacheSizeCurrent, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = call i32 @CacheInternalDumpBlockList(%struct.TYPE_10__* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %3, align 8
  br label %99

99:                                               ; preds = %67, %58, %39, %16
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %100
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @CacheInternalCheckCacheSizeLimits(%struct.TYPE_10__*) #1

declare dso_local i8* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @MachDiskReadLogicalSectors(i32, i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @CacheInternalDumpBlockList(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
