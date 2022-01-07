; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outSetOperationStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outSetOperationStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"SETOPERATIONSTMT\00", align 1
@op = common dso_local global i32 0, align 4
@SetOperation = common dso_local global i32 0, align 4
@all = common dso_local global i32 0, align 4
@larg = common dso_local global i32 0, align 4
@rarg = common dso_local global i32 0, align 4
@colTypes = common dso_local global i32 0, align 4
@colTypmods = common dso_local global i32 0, align 4
@colCollations = common dso_local global i32 0, align 4
@groupClauses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outSetOperationStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outSetOperationStmt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @op, align 4
  %7 = load i32, i32* @SetOperation, align 4
  %8 = call i32 @WRITE_ENUM_FIELD(i32 %6, i32 %7)
  %9 = load i32, i32* @all, align 4
  %10 = call i32 @WRITE_BOOL_FIELD(i32 %9)
  %11 = load i32, i32* @larg, align 4
  %12 = call i32 @WRITE_NODE_FIELD(i32 %11)
  %13 = load i32, i32* @rarg, align 4
  %14 = call i32 @WRITE_NODE_FIELD(i32 %13)
  %15 = load i32, i32* @colTypes, align 4
  %16 = call i32 @WRITE_NODE_FIELD(i32 %15)
  %17 = load i32, i32* @colTypmods, align 4
  %18 = call i32 @WRITE_NODE_FIELD(i32 %17)
  %19 = load i32, i32* @colCollations, align 4
  %20 = call i32 @WRITE_NODE_FIELD(i32 %19)
  %21 = load i32, i32* @groupClauses, align 4
  %22 = call i32 @WRITE_NODE_FIELD(i32 %21)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
