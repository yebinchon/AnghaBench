; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_validateForeignKeyConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_validateForeignKeyConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32*, i32*, i32*, i32, i32, i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"validating foreign key constraint \22%s\22\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@TRIGGER_FIRES_ON_ORIGIN = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"validateForeignKeyConstraint\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@fcinfo = common dso_local global %struct.TYPE_9__* null, align 8
@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_INSERT = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i8*)* @validateForeignKeyConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validateForeignKeyConstraint(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* @DEBUG1, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @ereport(i32 %18, i32 %20)
  %22 = call i32 @MemSet(%struct.TYPE_9__* %13, i32 0, i32 64)
  %23 = load i32, i32* @InvalidOid, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 9
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @TRIGGER_FIRES_ON_ORIGIN, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @RelationGetRelid(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 7
  store i32 %31, i32* %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @RI_Initial_Check(%struct.TYPE_9__* %13, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %5
  br label %104

44:                                               ; preds = %5
  %45 = call i32 (...) @GetLatestSnapshot()
  %46 = call i32 @RegisterSnapshot(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32* @table_slot_create(i32 %47, i32* null)
  store i32* %48, i32** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @table_beginscan(i32 %49, i32 %50, i32 0, i32* null)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* @CurrentMemoryContext, align 4
  %53 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %54 = call i32 @AllocSetContextCreate(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @MemoryContextSwitchTo(i32 %55)
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %63, %44
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @ForwardScanDirection, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @table_scan_getnextslot(i32 %58, i32 %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %65 = call i32 @LOCAL_FCINFO(%struct.TYPE_9__* %64, i32 0)
  %66 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %68 = call i32 @SizeForFunctionCallInfo(i32 0)
  %69 = call i32 @MemSet(%struct.TYPE_9__* %67, i32 0, i32 %68)
  %70 = load i32, i32* @T_TriggerData, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* @TRIGGER_EVENT_INSERT, align 4
  %73 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %74 = or i32 %72, %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @ExecFetchSlotHeapTuple(i32* %78, i32 0, i32* null)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i32 %79, i32* %80, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32* %81, i32** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %85, align 8
  %86 = bitcast %struct.TYPE_8__* %17 to i32*
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %90 = call i32 @RI_FKey_check_ins(%struct.TYPE_9__* %89)
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @MemoryContextReset(i32 %91)
  br label %57

93:                                               ; preds = %57
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @MemoryContextSwitchTo(i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @MemoryContextDelete(i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @table_endscan(i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @UnregisterSnapshot(i32 %100)
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @ExecDropSingleTupleTableSlot(i32* %102)
  br label %104

104:                                              ; preds = %93, %43
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @MemSet(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @RI_Initial_Check(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @RegisterSnapshot(i32) #1

declare dso_local i32 @GetLatestSnapshot(...) #1

declare dso_local i32* @table_slot_create(i32, i32*) #1

declare dso_local i32 @table_beginscan(i32, i32, i32, i32*) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @table_scan_getnextslot(i32, i32, i32*) #1

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @SizeForFunctionCallInfo(i32) #1

declare dso_local i32 @ExecFetchSlotHeapTuple(i32*, i32, i32*) #1

declare dso_local i32 @RI_FKey_check_ins(%struct.TYPE_9__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @UnregisterSnapshot(i32) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
