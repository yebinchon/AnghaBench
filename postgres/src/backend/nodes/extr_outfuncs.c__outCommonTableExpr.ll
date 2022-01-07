; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outCommonTableExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outCommonTableExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"COMMONTABLEEXPR\00", align 1
@ctename = common dso_local global i32 0, align 4
@aliascolnames = common dso_local global i32 0, align 4
@ctematerialized = common dso_local global i32 0, align 4
@CTEMaterialize = common dso_local global i32 0, align 4
@ctequery = common dso_local global i32 0, align 4
@location = common dso_local global i32 0, align 4
@cterecursive = common dso_local global i32 0, align 4
@cterefcount = common dso_local global i32 0, align 4
@ctecolnames = common dso_local global i32 0, align 4
@ctecoltypes = common dso_local global i32 0, align 4
@ctecoltypmods = common dso_local global i32 0, align 4
@ctecolcollations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outCommonTableExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outCommonTableExpr(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ctename, align 4
  %7 = call i32 @WRITE_STRING_FIELD(i32 %6)
  %8 = load i32, i32* @aliascolnames, align 4
  %9 = call i32 @WRITE_NODE_FIELD(i32 %8)
  %10 = load i32, i32* @ctematerialized, align 4
  %11 = load i32, i32* @CTEMaterialize, align 4
  %12 = call i32 @WRITE_ENUM_FIELD(i32 %10, i32 %11)
  %13 = load i32, i32* @ctequery, align 4
  %14 = call i32 @WRITE_NODE_FIELD(i32 %13)
  %15 = load i32, i32* @location, align 4
  %16 = call i32 @WRITE_LOCATION_FIELD(i32 %15)
  %17 = load i32, i32* @cterecursive, align 4
  %18 = call i32 @WRITE_BOOL_FIELD(i32 %17)
  %19 = load i32, i32* @cterefcount, align 4
  %20 = call i32 @WRITE_INT_FIELD(i32 %19)
  %21 = load i32, i32* @ctecolnames, align 4
  %22 = call i32 @WRITE_NODE_FIELD(i32 %21)
  %23 = load i32, i32* @ctecoltypes, align 4
  %24 = call i32 @WRITE_NODE_FIELD(i32 %23)
  %25 = load i32, i32* @ctecoltypmods, align 4
  %26 = call i32 @WRITE_NODE_FIELD(i32 %25)
  %27 = load i32, i32* @ctecolcollations, align 4
  %28 = call i32 @WRITE_NODE_FIELD(i32 %27)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_STRING_FIELD(i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_LOCATION_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
