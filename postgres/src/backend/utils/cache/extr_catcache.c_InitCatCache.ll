; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_catcache.c_InitCatCache.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_catcache.c_InitCatCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32*, i32, i64, i64, i8*, i8*, i32 }

@CacheMemoryContext = common dso_local global i32 0, align 4
@CacheHdr = common dso_local global %struct.TYPE_5__* null, align 8
@PG_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"(not known yet)\00", align 1
@InitCatCache_DEBUG2 = common dso_local global i32 0, align 4
@CatCachePrintStats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @InitCatCache(i32 %0, i8* %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 0, %21
  %23 = and i32 %20, %22
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %23, %24
  br label %26

26:                                               ; preds = %19, %6
  %27 = phi i1 [ false, %6 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* @CacheMemoryContext, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 (...) @CreateCacheMemoryContext()
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* @CacheMemoryContext, align 4
  %36 = call i32 @MemoryContextSwitchTo(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CacheHdr, align 8
  %38 = icmp eq %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = call i64 @palloc(i32 16)
  %41 = inttoptr i64 %40 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** @CacheHdr, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CacheHdr, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @slist_init(i32* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CacheHdr, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* @PG_CACHE_LINE_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 88, %49
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @palloc0(i32 %52)
  %54 = call i64 @CACHELINEALIGN(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @palloc0(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 9
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %102, %47
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %86

105:                                              ; preds = %86
  %106 = load i32, i32* @InitCatCache_DEBUG2, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CacheHdr, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 6
  %111 = call i32 @slist_push_head(i32* %108, i32* %110)
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @MemoryContextSwitchTo(i32 %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  ret %struct.TYPE_6__* %114
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @slist_init(i32*) #1

declare dso_local i64 @CACHELINEALIGN(i32) #1

declare dso_local i32 @palloc0(i32) #1

declare dso_local i32 @slist_push_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
