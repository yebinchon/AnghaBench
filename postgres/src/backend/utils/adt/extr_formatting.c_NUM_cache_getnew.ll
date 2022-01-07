; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_cache_getnew.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_cache_getnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@n_NUMCache = common dso_local global i32 0, align 4
@NUM_CACHE_ENTRIES = common dso_local global i32 0, align 4
@NUMCache = common dso_local global %struct.TYPE_4__** null, align 8
@NUM_CACHE_SIZE = common dso_local global i64 0, align 8
@NUMCounter = common dso_local global i8* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@DEBUG_elog_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @NUM_cache_getnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @NUM_cache_getnew(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @NUM_prevent_counter_overflow()
  %8 = load i32, i32* @n_NUMCache, align 4
  %9 = load i32, i32* @NUM_CACHE_ENTRIES, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @NUMCache, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NUM_CACHE_ENTRIES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @NUMCache, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %5, align 8
  br label %50

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %5, align 8
  br label %46

46:                                               ; preds = %44, %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %20

50:                                               ; preds = %34, %20
  br label %51

51:                                               ; preds = %50, %11
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* @NUM_CACHE_SIZE, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @StrNCpy(i32 %56, i8* %57, i64 %59)
  %61 = load i8*, i8** @NUMCounter, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** @NUMCounter, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %2, align 8
  br label %100

67:                                               ; preds = %1
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @NUMCache, align 8
  %69 = load i32, i32* @n_NUMCache, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp eq %struct.TYPE_4__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load i32, i32* @TopMemoryContext, align 4
  %77 = call i64 @MemoryContextAllocZero(i32 %76, i32 24)
  %78 = inttoptr i64 %77 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %4, align 8
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @NUMCache, align 8
  %80 = load i32, i32* @n_NUMCache, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %81
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load i64, i64* @NUM_CACHE_SIZE, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @StrNCpy(i32 %87, i8* %88, i64 %90)
  %92 = load i8*, i8** @NUMCounter, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** @NUMCounter, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @n_NUMCache, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @n_NUMCache, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %2, align 8
  br label %100

100:                                              ; preds = %67, %51
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %101
}

declare dso_local i32 @NUM_prevent_counter_overflow(...) #1

declare dso_local i32 @StrNCpy(i32, i8*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
