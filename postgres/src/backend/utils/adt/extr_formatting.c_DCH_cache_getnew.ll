; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_DCH_cache_getnew.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_DCH_cache_getnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@n_DCHCache = common dso_local global i32 0, align 4
@DCH_CACHE_ENTRIES = common dso_local global i32 0, align 4
@DCHCache = common dso_local global %struct.TYPE_4__** null, align 8
@DCH_CACHE_SIZE = common dso_local global i64 0, align 8
@DCHCounter = common dso_local global i8* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@DEBUG_elog_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i32)* @DCH_cache_getnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @DCH_cache_getnew(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @DCH_prevent_counter_overflow()
  %10 = load i32, i32* @n_DCHCache, align 4
  %11 = load i32, i32* @DCH_CACHE_ENTRIES, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @DCHCache, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DCH_CACHE_ENTRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @DCHCache, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %7, align 8
  br label %52

38:                                               ; preds = %26
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %7, align 8
  br label %48

48:                                               ; preds = %46, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %22

52:                                               ; preds = %36, %22
  br label %53

53:                                               ; preds = %52, %13
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* @DCH_CACHE_SIZE, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @StrNCpy(i32 %58, i8* %59, i64 %61)
  %63 = load i8*, i8** @DCHCounter, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** @DCHCounter, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %3, align 8
  br label %105

69:                                               ; preds = %2
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @DCHCache, align 8
  %71 = load i32, i32* @n_DCHCache, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp eq %struct.TYPE_4__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i32, i32* @TopMemoryContext, align 4
  %79 = call i64 @MemoryContextAllocZero(i32 %78, i32 24)
  %80 = inttoptr i64 %79 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %6, align 8
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @DCHCache, align 8
  %82 = load i32, i32* @n_DCHCache, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %83
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* @DCH_CACHE_SIZE, align 8
  %92 = add nsw i64 %91, 1
  %93 = call i32 @StrNCpy(i32 %89, i8* %90, i64 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @DCHCounter, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** @DCHCounter, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* @n_DCHCache, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @n_DCHCache, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %3, align 8
  br label %105

105:                                              ; preds = %69, %53
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %106
}

declare dso_local i32 @DCH_prevent_counter_overflow(...) #1

declare dso_local i32 @StrNCpy(i32, i8*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
