; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_beginscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_beginscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@SO_ALLOW_PAGEMODE = common dso_local global i32 0, align 4
@SO_TYPE_SEQSCAN = common dso_local global i32 0, align 4
@SO_TYPE_SAMPLESCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_beginscan(i32 %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @RelationIncrementReferenceCount(i32 %14)
  %16 = call i64 @palloc(i32 4)
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i64 %22, i64* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %6
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @IsMVCCSnapshot(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %6
  %47 = load i32, i32* @SO_ALLOW_PAGEMODE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SO_TYPE_SEQSCAN, align 4
  %60 = load i32, i32* @SO_TYPE_SAMPLESCAN, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @Assert(i64 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @PredicateLockRelation(i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @RelationGetRelid(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = call i64 @palloc(i32 %82)
  %84 = inttoptr i64 %83 to i32*
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32* %84, i32** %87, align 8
  br label %92

88:                                               ; preds = %70
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %88, %78
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @initscan(%struct.TYPE_7__* %93, i32* %94, i32 0)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %97 = ptrtoint %struct.TYPE_7__* %96 to i32
  ret i32 %97
}

declare dso_local i32 @RelationIncrementReferenceCount(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @IsMVCCSnapshot(i64) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i32 @PredicateLockRelation(i32, i64) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @initscan(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
