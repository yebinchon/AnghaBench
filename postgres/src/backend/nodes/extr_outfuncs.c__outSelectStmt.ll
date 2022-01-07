; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outSelectStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outSelectStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
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
@SetOperation = common dso_local global i32 0, align 4
@all = common dso_local global i32 0, align 4
@larg = common dso_local global i32 0, align 4
@rarg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outSelectStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outSelectStmt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @distinctClause, align 4
  %7 = call i32 @WRITE_NODE_FIELD(i32 %6)
  %8 = load i32, i32* @intoClause, align 4
  %9 = call i32 @WRITE_NODE_FIELD(i32 %8)
  %10 = load i32, i32* @targetList, align 4
  %11 = call i32 @WRITE_NODE_FIELD(i32 %10)
  %12 = load i32, i32* @fromClause, align 4
  %13 = call i32 @WRITE_NODE_FIELD(i32 %12)
  %14 = load i32, i32* @whereClause, align 4
  %15 = call i32 @WRITE_NODE_FIELD(i32 %14)
  %16 = load i32, i32* @groupClause, align 4
  %17 = call i32 @WRITE_NODE_FIELD(i32 %16)
  %18 = load i32, i32* @havingClause, align 4
  %19 = call i32 @WRITE_NODE_FIELD(i32 %18)
  %20 = load i32, i32* @windowClause, align 4
  %21 = call i32 @WRITE_NODE_FIELD(i32 %20)
  %22 = load i32, i32* @valuesLists, align 4
  %23 = call i32 @WRITE_NODE_FIELD(i32 %22)
  %24 = load i32, i32* @sortClause, align 4
  %25 = call i32 @WRITE_NODE_FIELD(i32 %24)
  %26 = load i32, i32* @limitOffset, align 4
  %27 = call i32 @WRITE_NODE_FIELD(i32 %26)
  %28 = load i32, i32* @limitCount, align 4
  %29 = call i32 @WRITE_NODE_FIELD(i32 %28)
  %30 = load i32, i32* @lockingClause, align 4
  %31 = call i32 @WRITE_NODE_FIELD(i32 %30)
  %32 = load i32, i32* @withClause, align 4
  %33 = call i32 @WRITE_NODE_FIELD(i32 %32)
  %34 = load i32, i32* @op, align 4
  %35 = load i32, i32* @SetOperation, align 4
  %36 = call i32 @WRITE_ENUM_FIELD(i32 %34, i32 %35)
  %37 = load i32, i32* @all, align 4
  %38 = call i32 @WRITE_BOOL_FIELD(i32 %37)
  %39 = load i32, i32* @larg, align 4
  %40 = call i32 @WRITE_NODE_FIELD(i32 %39)
  %41 = load i32, i32* @rarg, align 4
  %42 = call i32 @WRITE_NODE_FIELD(i32 %41)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
