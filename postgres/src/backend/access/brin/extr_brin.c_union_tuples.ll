; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_union_tuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_union_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"brin union\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@BRIN_PROCNUM_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*)* @union_tuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @union_tuples(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @CurrentMemoryContext, align 4
  %15 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %16 = call i32 @AllocSetContextCreate(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @MemoryContextSwitchTo(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.TYPE_13__* @brin_deform_tuple(%struct.TYPE_12__* %19, i32* %20, i32* null)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %69, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 %37
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %12, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %13, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @BRIN_PROCNUM_UNION, align 4
  %51 = call i32* @index_getprocinfo(%struct.TYPE_14__* %47, i32 %49, i32 %50)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = call i32 @PointerGetDatum(%struct.TYPE_12__* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = call i32 @PointerGetDatum(%struct.TYPE_12__* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = call i32 @PointerGetDatum(%struct.TYPE_12__* %66)
  %68 = call i32 @FunctionCall3Coll(i32* %52, i32 %61, i32 %63, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %32
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %24

72:                                               ; preds = %24
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @MemoryContextDelete(i32 %73)
  ret void
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_13__* @brin_deform_tuple(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32* @index_getprocinfo(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @FunctionCall3Coll(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_12__*) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
