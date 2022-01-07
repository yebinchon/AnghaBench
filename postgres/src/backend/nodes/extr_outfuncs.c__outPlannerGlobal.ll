; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPlannerGlobal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPlannerGlobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"PLANNERGLOBAL\00", align 1
@subplans = common dso_local global i32 0, align 4
@rewindPlanIDs = common dso_local global i32 0, align 4
@finalrtable = common dso_local global i32 0, align 4
@finalrowmarks = common dso_local global i32 0, align 4
@resultRelations = common dso_local global i32 0, align 4
@rootResultRelations = common dso_local global i32 0, align 4
@relationOids = common dso_local global i32 0, align 4
@invalItems = common dso_local global i32 0, align 4
@paramExecTypes = common dso_local global i32 0, align 4
@lastPHId = common dso_local global i32 0, align 4
@lastRowMarkId = common dso_local global i32 0, align 4
@lastPlanNodeId = common dso_local global i32 0, align 4
@transientPlan = common dso_local global i32 0, align 4
@dependsOnRole = common dso_local global i32 0, align 4
@parallelModeOK = common dso_local global i32 0, align 4
@parallelModeNeeded = common dso_local global i32 0, align 4
@maxParallelHazard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outPlannerGlobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outPlannerGlobal(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @subplans, align 4
  %7 = call i32 @WRITE_NODE_FIELD(i32 %6)
  %8 = load i32, i32* @rewindPlanIDs, align 4
  %9 = call i32 @WRITE_BITMAPSET_FIELD(i32 %8)
  %10 = load i32, i32* @finalrtable, align 4
  %11 = call i32 @WRITE_NODE_FIELD(i32 %10)
  %12 = load i32, i32* @finalrowmarks, align 4
  %13 = call i32 @WRITE_NODE_FIELD(i32 %12)
  %14 = load i32, i32* @resultRelations, align 4
  %15 = call i32 @WRITE_NODE_FIELD(i32 %14)
  %16 = load i32, i32* @rootResultRelations, align 4
  %17 = call i32 @WRITE_NODE_FIELD(i32 %16)
  %18 = load i32, i32* @relationOids, align 4
  %19 = call i32 @WRITE_NODE_FIELD(i32 %18)
  %20 = load i32, i32* @invalItems, align 4
  %21 = call i32 @WRITE_NODE_FIELD(i32 %20)
  %22 = load i32, i32* @paramExecTypes, align 4
  %23 = call i32 @WRITE_NODE_FIELD(i32 %22)
  %24 = load i32, i32* @lastPHId, align 4
  %25 = call i32 @WRITE_UINT_FIELD(i32 %24)
  %26 = load i32, i32* @lastRowMarkId, align 4
  %27 = call i32 @WRITE_UINT_FIELD(i32 %26)
  %28 = load i32, i32* @lastPlanNodeId, align 4
  %29 = call i32 @WRITE_INT_FIELD(i32 %28)
  %30 = load i32, i32* @transientPlan, align 4
  %31 = call i32 @WRITE_BOOL_FIELD(i32 %30)
  %32 = load i32, i32* @dependsOnRole, align 4
  %33 = call i32 @WRITE_BOOL_FIELD(i32 %32)
  %34 = load i32, i32* @parallelModeOK, align 4
  %35 = call i32 @WRITE_BOOL_FIELD(i32 %34)
  %36 = load i32, i32* @parallelModeNeeded, align 4
  %37 = call i32 @WRITE_BOOL_FIELD(i32 %36)
  %38 = load i32, i32* @maxParallelHazard, align 4
  %39 = call i32 @WRITE_CHAR_FIELD(i32 %38)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_CHAR_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
