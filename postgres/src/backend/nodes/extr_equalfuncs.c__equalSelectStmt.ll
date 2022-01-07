; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalSelectStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalSelectStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@distinctClause = common dso_local global i32 0, align 4
@intoClause = common dso_local global i32 0, align 4
@targetList = common dso_local global i32 0, align 4
@fromClause = common dso_local global i32 0, align 4
@whereClause = common dso_local global i32 0, align 4
@groupClause = common dso_local global i32 0, align 4
@havingClause = common dso_local global i32 0, align 4
@windowClause = common dso_local global i32 0, align 4
@valuesLists = common dso_local global i32 0, align 4
@sortClause = common dso_local global i32 0, align 4
@limitOffset = common dso_local global i32 0, align 4
@limitCount = common dso_local global i32 0, align 4
@lockingClause = common dso_local global i32 0, align 4
@withClause = common dso_local global i32 0, align 4
@op = common dso_local global i32 0, align 4
@all = common dso_local global i32 0, align 4
@larg = common dso_local global i32 0, align 4
@rarg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_equalSelectStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalSelectStmt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @distinctClause, align 4
  %6 = call i32 @COMPARE_NODE_FIELD(i32 %5)
  %7 = load i32, i32* @intoClause, align 4
  %8 = call i32 @COMPARE_NODE_FIELD(i32 %7)
  %9 = load i32, i32* @targetList, align 4
  %10 = call i32 @COMPARE_NODE_FIELD(i32 %9)
  %11 = load i32, i32* @fromClause, align 4
  %12 = call i32 @COMPARE_NODE_FIELD(i32 %11)
  %13 = load i32, i32* @whereClause, align 4
  %14 = call i32 @COMPARE_NODE_FIELD(i32 %13)
  %15 = load i32, i32* @groupClause, align 4
  %16 = call i32 @COMPARE_NODE_FIELD(i32 %15)
  %17 = load i32, i32* @havingClause, align 4
  %18 = call i32 @COMPARE_NODE_FIELD(i32 %17)
  %19 = load i32, i32* @windowClause, align 4
  %20 = call i32 @COMPARE_NODE_FIELD(i32 %19)
  %21 = load i32, i32* @valuesLists, align 4
  %22 = call i32 @COMPARE_NODE_FIELD(i32 %21)
  %23 = load i32, i32* @sortClause, align 4
  %24 = call i32 @COMPARE_NODE_FIELD(i32 %23)
  %25 = load i32, i32* @limitOffset, align 4
  %26 = call i32 @COMPARE_NODE_FIELD(i32 %25)
  %27 = load i32, i32* @limitCount, align 4
  %28 = call i32 @COMPARE_NODE_FIELD(i32 %27)
  %29 = load i32, i32* @lockingClause, align 4
  %30 = call i32 @COMPARE_NODE_FIELD(i32 %29)
  %31 = load i32, i32* @withClause, align 4
  %32 = call i32 @COMPARE_NODE_FIELD(i32 %31)
  %33 = load i32, i32* @op, align 4
  %34 = call i32 @COMPARE_SCALAR_FIELD(i32 %33)
  %35 = load i32, i32* @all, align 4
  %36 = call i32 @COMPARE_SCALAR_FIELD(i32 %35)
  %37 = load i32, i32* @larg, align 4
  %38 = call i32 @COMPARE_NODE_FIELD(i32 %37)
  %39 = load i32, i32* @rarg, align 4
  %40 = call i32 @COMPARE_NODE_FIELD(i32 %39)
  ret i32 1
}

declare dso_local i32 @COMPARE_NODE_FIELD(i32) #1

declare dso_local i32 @COMPARE_SCALAR_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
