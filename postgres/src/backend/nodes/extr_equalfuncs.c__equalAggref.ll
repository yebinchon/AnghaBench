; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalAggref.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalAggref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aggfnoid = common dso_local global i32 0, align 4
@aggtype = common dso_local global i32 0, align 4
@aggcollid = common dso_local global i32 0, align 4
@inputcollid = common dso_local global i32 0, align 4
@aggargtypes = common dso_local global i32 0, align 4
@aggdirectargs = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@aggorder = common dso_local global i32 0, align 4
@aggdistinct = common dso_local global i32 0, align 4
@aggfilter = common dso_local global i32 0, align 4
@aggstar = common dso_local global i32 0, align 4
@aggvariadic = common dso_local global i32 0, align 4
@aggkind = common dso_local global i32 0, align 4
@agglevelsup = common dso_local global i32 0, align 4
@aggsplit = common dso_local global i32 0, align 4
@location = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_equalAggref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalAggref(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @aggfnoid, align 4
  %6 = call i32 @COMPARE_SCALAR_FIELD(i32 %5)
  %7 = load i32, i32* @aggtype, align 4
  %8 = call i32 @COMPARE_SCALAR_FIELD(i32 %7)
  %9 = load i32, i32* @aggcollid, align 4
  %10 = call i32 @COMPARE_SCALAR_FIELD(i32 %9)
  %11 = load i32, i32* @inputcollid, align 4
  %12 = call i32 @COMPARE_SCALAR_FIELD(i32 %11)
  %13 = load i32, i32* @aggargtypes, align 4
  %14 = call i32 @COMPARE_NODE_FIELD(i32 %13)
  %15 = load i32, i32* @aggdirectargs, align 4
  %16 = call i32 @COMPARE_NODE_FIELD(i32 %15)
  %17 = load i32, i32* @args, align 4
  %18 = call i32 @COMPARE_NODE_FIELD(i32 %17)
  %19 = load i32, i32* @aggorder, align 4
  %20 = call i32 @COMPARE_NODE_FIELD(i32 %19)
  %21 = load i32, i32* @aggdistinct, align 4
  %22 = call i32 @COMPARE_NODE_FIELD(i32 %21)
  %23 = load i32, i32* @aggfilter, align 4
  %24 = call i32 @COMPARE_NODE_FIELD(i32 %23)
  %25 = load i32, i32* @aggstar, align 4
  %26 = call i32 @COMPARE_SCALAR_FIELD(i32 %25)
  %27 = load i32, i32* @aggvariadic, align 4
  %28 = call i32 @COMPARE_SCALAR_FIELD(i32 %27)
  %29 = load i32, i32* @aggkind, align 4
  %30 = call i32 @COMPARE_SCALAR_FIELD(i32 %29)
  %31 = load i32, i32* @agglevelsup, align 4
  %32 = call i32 @COMPARE_SCALAR_FIELD(i32 %31)
  %33 = load i32, i32* @aggsplit, align 4
  %34 = call i32 @COMPARE_SCALAR_FIELD(i32 %33)
  %35 = load i32, i32* @location, align 4
  %36 = call i32 @COMPARE_LOCATION_FIELD(i32 %35)
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
