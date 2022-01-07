; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalCreateStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalCreateStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@relation = common dso_local global i32 0, align 4
@tableElts = common dso_local global i32 0, align 4
@inhRelations = common dso_local global i32 0, align 4
@partbound = common dso_local global i32 0, align 4
@partspec = common dso_local global i32 0, align 4
@ofTypename = common dso_local global i32 0, align 4
@constraints = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@oncommit = common dso_local global i32 0, align 4
@tablespacename = common dso_local global i32 0, align 4
@accessMethod = common dso_local global i32 0, align 4
@if_not_exists = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_equalCreateStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalCreateStmt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @relation, align 4
  %6 = call i32 @COMPARE_NODE_FIELD(i32 %5)
  %7 = load i32, i32* @tableElts, align 4
  %8 = call i32 @COMPARE_NODE_FIELD(i32 %7)
  %9 = load i32, i32* @inhRelations, align 4
  %10 = call i32 @COMPARE_NODE_FIELD(i32 %9)
  %11 = load i32, i32* @partbound, align 4
  %12 = call i32 @COMPARE_NODE_FIELD(i32 %11)
  %13 = load i32, i32* @partspec, align 4
  %14 = call i32 @COMPARE_NODE_FIELD(i32 %13)
  %15 = load i32, i32* @ofTypename, align 4
  %16 = call i32 @COMPARE_NODE_FIELD(i32 %15)
  %17 = load i32, i32* @constraints, align 4
  %18 = call i32 @COMPARE_NODE_FIELD(i32 %17)
  %19 = load i32, i32* @options, align 4
  %20 = call i32 @COMPARE_NODE_FIELD(i32 %19)
  %21 = load i32, i32* @oncommit, align 4
  %22 = call i32 @COMPARE_SCALAR_FIELD(i32 %21)
  %23 = load i32, i32* @tablespacename, align 4
  %24 = call i32 @COMPARE_STRING_FIELD(i32 %23)
  %25 = load i32, i32* @accessMethod, align 4
  %26 = call i32 @COMPARE_STRING_FIELD(i32 %25)
  %27 = load i32, i32* @if_not_exists, align 4
  %28 = call i32 @COMPARE_SCALAR_FIELD(i32 %27)
  ret i32 1
}

declare dso_local i32 @COMPARE_NODE_FIELD(i32) #1

declare dso_local i32 @COMPARE_SCALAR_FIELD(i32) #1

declare dso_local i32 @COMPARE_STRING_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
