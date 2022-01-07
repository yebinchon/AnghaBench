; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commandType = common dso_local global i32 0, align 4
@querySource = common dso_local global i32 0, align 4
@canSetTag = common dso_local global i32 0, align 4
@utilityStmt = common dso_local global i32 0, align 4
@resultRelation = common dso_local global i32 0, align 4
@hasAggs = common dso_local global i32 0, align 4
@hasWindowFuncs = common dso_local global i32 0, align 4
@hasTargetSRFs = common dso_local global i32 0, align 4
@hasSubLinks = common dso_local global i32 0, align 4
@hasDistinctOn = common dso_local global i32 0, align 4
@hasRecursive = common dso_local global i32 0, align 4
@hasModifyingCTE = common dso_local global i32 0, align 4
@hasForUpdate = common dso_local global i32 0, align 4
@hasRowSecurity = common dso_local global i32 0, align 4
@cteList = common dso_local global i32 0, align 4
@rtable = common dso_local global i32 0, align 4
@jointree = common dso_local global i32 0, align 4
@targetList = common dso_local global i32 0, align 4
@override = common dso_local global i32 0, align 4
@onConflict = common dso_local global i32 0, align 4
@returningList = common dso_local global i32 0, align 4
@groupClause = common dso_local global i32 0, align 4
@groupingSets = common dso_local global i32 0, align 4
@havingQual = common dso_local global i32 0, align 4
@windowClause = common dso_local global i32 0, align 4
@distinctClause = common dso_local global i32 0, align 4
@sortClause = common dso_local global i32 0, align 4
@limitOffset = common dso_local global i32 0, align 4
@limitCount = common dso_local global i32 0, align 4
@rowMarks = common dso_local global i32 0, align 4
@setOperations = common dso_local global i32 0, align 4
@constraintDeps = common dso_local global i32 0, align 4
@withCheckOptions = common dso_local global i32 0, align 4
@stmt_location = common dso_local global i32 0, align 4
@stmt_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_equalQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalQuery(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @commandType, align 4
  %6 = call i32 @COMPARE_SCALAR_FIELD(i32 %5)
  %7 = load i32, i32* @querySource, align 4
  %8 = call i32 @COMPARE_SCALAR_FIELD(i32 %7)
  %9 = load i32, i32* @canSetTag, align 4
  %10 = call i32 @COMPARE_SCALAR_FIELD(i32 %9)
  %11 = load i32, i32* @utilityStmt, align 4
  %12 = call i32 @COMPARE_NODE_FIELD(i32 %11)
  %13 = load i32, i32* @resultRelation, align 4
  %14 = call i32 @COMPARE_SCALAR_FIELD(i32 %13)
  %15 = load i32, i32* @hasAggs, align 4
  %16 = call i32 @COMPARE_SCALAR_FIELD(i32 %15)
  %17 = load i32, i32* @hasWindowFuncs, align 4
  %18 = call i32 @COMPARE_SCALAR_FIELD(i32 %17)
  %19 = load i32, i32* @hasTargetSRFs, align 4
  %20 = call i32 @COMPARE_SCALAR_FIELD(i32 %19)
  %21 = load i32, i32* @hasSubLinks, align 4
  %22 = call i32 @COMPARE_SCALAR_FIELD(i32 %21)
  %23 = load i32, i32* @hasDistinctOn, align 4
  %24 = call i32 @COMPARE_SCALAR_FIELD(i32 %23)
  %25 = load i32, i32* @hasRecursive, align 4
  %26 = call i32 @COMPARE_SCALAR_FIELD(i32 %25)
  %27 = load i32, i32* @hasModifyingCTE, align 4
  %28 = call i32 @COMPARE_SCALAR_FIELD(i32 %27)
  %29 = load i32, i32* @hasForUpdate, align 4
  %30 = call i32 @COMPARE_SCALAR_FIELD(i32 %29)
  %31 = load i32, i32* @hasRowSecurity, align 4
  %32 = call i32 @COMPARE_SCALAR_FIELD(i32 %31)
  %33 = load i32, i32* @cteList, align 4
  %34 = call i32 @COMPARE_NODE_FIELD(i32 %33)
  %35 = load i32, i32* @rtable, align 4
  %36 = call i32 @COMPARE_NODE_FIELD(i32 %35)
  %37 = load i32, i32* @jointree, align 4
  %38 = call i32 @COMPARE_NODE_FIELD(i32 %37)
  %39 = load i32, i32* @targetList, align 4
  %40 = call i32 @COMPARE_NODE_FIELD(i32 %39)
  %41 = load i32, i32* @override, align 4
  %42 = call i32 @COMPARE_SCALAR_FIELD(i32 %41)
  %43 = load i32, i32* @onConflict, align 4
  %44 = call i32 @COMPARE_NODE_FIELD(i32 %43)
  %45 = load i32, i32* @returningList, align 4
  %46 = call i32 @COMPARE_NODE_FIELD(i32 %45)
  %47 = load i32, i32* @groupClause, align 4
  %48 = call i32 @COMPARE_NODE_FIELD(i32 %47)
  %49 = load i32, i32* @groupingSets, align 4
  %50 = call i32 @COMPARE_NODE_FIELD(i32 %49)
  %51 = load i32, i32* @havingQual, align 4
  %52 = call i32 @COMPARE_NODE_FIELD(i32 %51)
  %53 = load i32, i32* @windowClause, align 4
  %54 = call i32 @COMPARE_NODE_FIELD(i32 %53)
  %55 = load i32, i32* @distinctClause, align 4
  %56 = call i32 @COMPARE_NODE_FIELD(i32 %55)
  %57 = load i32, i32* @sortClause, align 4
  %58 = call i32 @COMPARE_NODE_FIELD(i32 %57)
  %59 = load i32, i32* @limitOffset, align 4
  %60 = call i32 @COMPARE_NODE_FIELD(i32 %59)
  %61 = load i32, i32* @limitCount, align 4
  %62 = call i32 @COMPARE_NODE_FIELD(i32 %61)
  %63 = load i32, i32* @rowMarks, align 4
  %64 = call i32 @COMPARE_NODE_FIELD(i32 %63)
  %65 = load i32, i32* @setOperations, align 4
  %66 = call i32 @COMPARE_NODE_FIELD(i32 %65)
  %67 = load i32, i32* @constraintDeps, align 4
  %68 = call i32 @COMPARE_NODE_FIELD(i32 %67)
  %69 = load i32, i32* @withCheckOptions, align 4
  %70 = call i32 @COMPARE_NODE_FIELD(i32 %69)
  %71 = load i32, i32* @stmt_location, align 4
  %72 = call i32 @COMPARE_LOCATION_FIELD(i32 %71)
  %73 = load i32, i32* @stmt_len, align 4
  %74 = call i32 @COMPARE_LOCATION_FIELD(i32 %73)
  ret i32 1
}

declare dso_local i32 @COMPARE_SCALAR_FIELD(i32) #1

declare dso_local i32 @COMPARE_NODE_FIELD(i32) #1

declare dso_local i32 @COMPARE_LOCATION_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
