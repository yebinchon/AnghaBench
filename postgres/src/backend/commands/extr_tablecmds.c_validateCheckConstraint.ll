; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_validateCheckConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_validateCheckConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 }

@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@CONSTROID = common dso_local global i32 0, align 4
@Anum_pg_constraint_conbin = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"null conbin for constraint %u\00", align 1
@ForwardScanDirection = common dso_local global i32 0, align 4
@ERRCODE_CHECK_VIOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"check constraint \22%s\22 is violated by some row\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @validateCheckConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validateCheckConstraint(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %2
  br label %115

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @GETSTRUCT(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %14, align 8
  %37 = call i32* (...) @CreateExecutorState()
  store i32* %37, i32** %5, align 8
  %38 = load i32, i32* @CONSTROID, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @Anum_pg_constraint_conbin, align 4
  %41 = call i32 @SysCacheGetAttr(i32 %38, i32 %39, i32 %40, i32* %15)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @ERROR, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @TextDatumGetCString(i32 %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @stringToNode(i8* %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32* @ExecPrepareExpr(i32* %56, i32* %57)
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call %struct.TYPE_15__* @GetPerTupleExprContext(i32* %59)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %11, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = call i32* @table_slot_create(%struct.TYPE_13__* %61, i32* null)
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = call i32 (...) @GetLatestSnapshot()
  %67 = call i32 @RegisterSnapshot(i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @table_beginscan(%struct.TYPE_13__* %68, i32 %69, i32 0, i32* null)
  store i32 %70, i32* %10, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @GetPerTupleMemoryContext(i32* %71)
  %73 = call i32 @MemoryContextSwitchTo(i32 %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %101, %50
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @ForwardScanDirection, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = call i64 @table_scan_getnextslot(i32 %75, i32 %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = call i32 @ExecCheck(i32* %81, %struct.TYPE_15__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_CHECK_VIOLATION, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @NameStr(i32 %91)
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @NameStr(i32 %97)
  %99 = call i32 @errtableconstraint(%struct.TYPE_13__* %94, i32 %98)
  %100 = call i32 @ereport(i32 %86, i32 %99)
  br label %101

101:                                              ; preds = %85, %80
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %103 = call i32 @ResetExprContext(%struct.TYPE_15__* %102)
  br label %74

104:                                              ; preds = %74
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @MemoryContextSwitchTo(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @table_endscan(i32 %107)
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @UnregisterSnapshot(i32 %109)
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @ExecDropSingleTupleTableSlot(i32* %111)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @FreeExecutorState(i32* %113)
  br label %115

115:                                              ; preds = %104, %32
  ret void
}

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32* @CreateExecutorState(...) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @stringToNode(i8*) #1

declare dso_local i32* @ExecPrepareExpr(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @GetPerTupleExprContext(i32*) #1

declare dso_local i32* @table_slot_create(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @RegisterSnapshot(i32) #1

declare dso_local i32 @GetLatestSnapshot(...) #1

declare dso_local i32 @table_beginscan(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #1

declare dso_local i64 @table_scan_getnextslot(i32, i32, i32*) #1

declare dso_local i32 @ExecCheck(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @errtableconstraint(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_15__*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @UnregisterSnapshot(i32) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

declare dso_local i32 @FreeExecutorState(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
