; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPlannedStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPlannedStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"PLANNEDSTMT\00", align 1
@commandType = common dso_local global i32 0, align 4
@CmdType = common dso_local global i32 0, align 4
@queryId = common dso_local global i32 0, align 4
@hasReturning = common dso_local global i32 0, align 4
@hasModifyingCTE = common dso_local global i32 0, align 4
@canSetTag = common dso_local global i32 0, align 4
@transientPlan = common dso_local global i32 0, align 4
@dependsOnRole = common dso_local global i32 0, align 4
@parallelModeNeeded = common dso_local global i32 0, align 4
@jitFlags = common dso_local global i32 0, align 4
@planTree = common dso_local global i32 0, align 4
@rtable = common dso_local global i32 0, align 4
@resultRelations = common dso_local global i32 0, align 4
@rootResultRelations = common dso_local global i32 0, align 4
@subplans = common dso_local global i32 0, align 4
@rewindPlanIDs = common dso_local global i32 0, align 4
@rowMarks = common dso_local global i32 0, align 4
@relationOids = common dso_local global i32 0, align 4
@invalItems = common dso_local global i32 0, align 4
@paramExecTypes = common dso_local global i32 0, align 4
@utilityStmt = common dso_local global i32 0, align 4
@stmt_location = common dso_local global i32 0, align 4
@stmt_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outPlannedStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outPlannedStmt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @commandType, align 4
  %7 = load i32, i32* @CmdType, align 4
  %8 = call i32 @WRITE_ENUM_FIELD(i32 %6, i32 %7)
  %9 = load i32, i32* @queryId, align 4
  %10 = call i32 @WRITE_UINT64_FIELD(i32 %9)
  %11 = load i32, i32* @hasReturning, align 4
  %12 = call i32 @WRITE_BOOL_FIELD(i32 %11)
  %13 = load i32, i32* @hasModifyingCTE, align 4
  %14 = call i32 @WRITE_BOOL_FIELD(i32 %13)
  %15 = load i32, i32* @canSetTag, align 4
  %16 = call i32 @WRITE_BOOL_FIELD(i32 %15)
  %17 = load i32, i32* @transientPlan, align 4
  %18 = call i32 @WRITE_BOOL_FIELD(i32 %17)
  %19 = load i32, i32* @dependsOnRole, align 4
  %20 = call i32 @WRITE_BOOL_FIELD(i32 %19)
  %21 = load i32, i32* @parallelModeNeeded, align 4
  %22 = call i32 @WRITE_BOOL_FIELD(i32 %21)
  %23 = load i32, i32* @jitFlags, align 4
  %24 = call i32 @WRITE_INT_FIELD(i32 %23)
  %25 = load i32, i32* @planTree, align 4
  %26 = call i32 @WRITE_NODE_FIELD(i32 %25)
  %27 = load i32, i32* @rtable, align 4
  %28 = call i32 @WRITE_NODE_FIELD(i32 %27)
  %29 = load i32, i32* @resultRelations, align 4
  %30 = call i32 @WRITE_NODE_FIELD(i32 %29)
  %31 = load i32, i32* @rootResultRelations, align 4
  %32 = call i32 @WRITE_NODE_FIELD(i32 %31)
  %33 = load i32, i32* @subplans, align 4
  %34 = call i32 @WRITE_NODE_FIELD(i32 %33)
  %35 = load i32, i32* @rewindPlanIDs, align 4
  %36 = call i32 @WRITE_BITMAPSET_FIELD(i32 %35)
  %37 = load i32, i32* @rowMarks, align 4
  %38 = call i32 @WRITE_NODE_FIELD(i32 %37)
  %39 = load i32, i32* @relationOids, align 4
  %40 = call i32 @WRITE_NODE_FIELD(i32 %39)
  %41 = load i32, i32* @invalItems, align 4
  %42 = call i32 @WRITE_NODE_FIELD(i32 %41)
  %43 = load i32, i32* @paramExecTypes, align 4
  %44 = call i32 @WRITE_NODE_FIELD(i32 %43)
  %45 = load i32, i32* @utilityStmt, align 4
  %46 = call i32 @WRITE_NODE_FIELD(i32 %45)
  %47 = load i32, i32* @stmt_location, align 4
  %48 = call i32 @WRITE_LOCATION_FIELD(i32 %47)
  %49 = load i32, i32* @stmt_len, align 4
  %50 = call i32 @WRITE_LOCATION_FIELD(i32 %49)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_UINT64_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @WRITE_LOCATION_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
