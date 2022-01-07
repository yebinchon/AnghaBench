; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_get_tabstat_entry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_get_tabstat_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }

@pgStatTabHash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"pgstat TabStatusArray lookup hash table\00", align 1
@TABSTAT_QUANTUM = common dso_local global i64 0, align 8
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@pgStatTabList = common dso_local global %struct.TYPE_10__* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32, i32)* @get_tabstat_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @get_tabstat_entry(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** @pgStatTabHash, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = call i32 @memset(%struct.TYPE_13__* %10, i32 0, i32 8)
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 4, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 8, i32* %16, align 4
  %17 = load i64, i64* @TABSTAT_QUANTUM, align 8
  %18 = load i32, i32* @HASH_ELEM, align 4
  %19 = load i32, i32* @HASH_BLOBS, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @hash_create(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %17, %struct.TYPE_13__* %10, i32 %20)
  store i32* %21, i32** @pgStatTabHash, align 8
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32*, i32** @pgStatTabHash, align 8
  %24 = load i32, i32* @HASH_ENTER, align 4
  %25 = call %struct.TYPE_11__* @hash_search(i32* %23, i32* %4, i32 %24, i32* %9)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %3, align 8
  br label %89

40:                                               ; preds = %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgStatTabList, align 8
  %42 = icmp eq %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @TopMemoryContext, align 4
  %45 = call i64 @MemoryContextAllocZero(i32 %44, i32 24)
  %46 = inttoptr i64 %45 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** @pgStatTabList, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgStatTabList, align 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %8, align 8
  br label %49

49:                                               ; preds = %66, %47
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TABSTAT_QUANTUM, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp eq %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @TopMemoryContext, align 4
  %62 = call i64 @MemoryContextAllocZero(i32 %61, i32 24)
  %63 = inttoptr i64 %62 to %struct.TYPE_10__*
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %8, align 8
  br label %49

70:                                               ; preds = %49
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %76
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %7, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %3, align 8
  br label %89

89:                                               ; preds = %70, %36
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %90
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i64, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_11__* @hash_search(i32*, i32*, i32, i32*) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
