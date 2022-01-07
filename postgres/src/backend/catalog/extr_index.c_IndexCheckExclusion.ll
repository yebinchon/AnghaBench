; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_IndexCheckExclusion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_IndexCheckExclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_14__*)* @IndexCheckExclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IndexCheckExclusion(i32 %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %16 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RelationGetRelid(i32 %23)
  %25 = call i64 @ReindexIsCurrentlyProcessingIndex(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 (...) @ResetReindexProcessing()
  br label %29

29:                                               ; preds = %27, %3
  %30 = call i32* (...) @CreateExecutorState()
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call %struct.TYPE_15__* @GetPerTupleExprContext(i32* %31)
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %14, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.TYPE_13__* @table_slot_create(i32 %33, i32* null)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %12, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32* @ExecPrepareQual(i32 %40, i32* %41)
  store i32* %42, i32** %11, align 8
  %43 = call i32 (...) @GetLatestSnapshot()
  %44 = call i32 @RegisterSnapshot(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @table_beginscan_strat(i32 %45, i32 %46, i32 0, i32* null, i32 1, i32 1)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %65, %63, %29
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ForwardScanDirection, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = call i64 @table_scan_getnextslot(i32 %49, i32 %50, %struct.TYPE_13__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = call i32 @ExecQual(i32* %59, %struct.TYPE_15__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %48

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %54
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @FormIndexDatum(%struct.TYPE_14__* %66, %struct.TYPE_13__* %67, i32* %68, i32* %19, i32* %22)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @check_exclusion_constraint(i32 %70, i32 %71, %struct.TYPE_14__* %72, i32* %74, i32* %19, i32* %22, i32* %75, i32 1)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @MemoryContextReset(i32 %79)
  br label %48

81:                                               ; preds = %48
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @table_endscan(i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @UnregisterSnapshot(i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %87 = call i32 @ExecDropSingleTupleTableSlot(%struct.TYPE_13__* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @FreeExecutorState(i32* %88)
  %90 = load i32, i32* @NIL, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ReindexIsCurrentlyProcessingIndex(i32) #2

declare dso_local i32 @RelationGetRelid(i32) #2

declare dso_local i32 @ResetReindexProcessing(...) #2

declare dso_local i32* @CreateExecutorState(...) #2

declare dso_local %struct.TYPE_15__* @GetPerTupleExprContext(i32*) #2

declare dso_local %struct.TYPE_13__* @table_slot_create(i32, i32*) #2

declare dso_local i32* @ExecPrepareQual(i32, i32*) #2

declare dso_local i32 @RegisterSnapshot(i32) #2

declare dso_local i32 @GetLatestSnapshot(...) #2

declare dso_local i32 @table_beginscan_strat(i32, i32, i32, i32*, i32, i32) #2

declare dso_local i64 @table_scan_getnextslot(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @FormIndexDatum(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32*, i32*) #2

declare dso_local i32 @check_exclusion_constraint(i32, i32, %struct.TYPE_14__*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @MemoryContextReset(i32) #2

declare dso_local i32 @table_endscan(i32) #2

declare dso_local i32 @UnregisterSnapshot(i32) #2

declare dso_local i32 @ExecDropSingleTupleTableSlot(%struct.TYPE_13__*) #2

declare dso_local i32 @FreeExecutorState(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
