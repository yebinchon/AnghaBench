; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalRangeTblEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalRangeTblEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtekind = common dso_local global i32 0, align 4
@relid = common dso_local global i32 0, align 4
@relkind = common dso_local global i32 0, align 4
@rellockmode = common dso_local global i32 0, align 4
@tablesample = common dso_local global i32 0, align 4
@subquery = common dso_local global i32 0, align 4
@security_barrier = common dso_local global i32 0, align 4
@jointype = common dso_local global i32 0, align 4
@joinaliasvars = common dso_local global i32 0, align 4
@functions = common dso_local global i32 0, align 4
@funcordinality = common dso_local global i32 0, align 4
@tablefunc = common dso_local global i32 0, align 4
@values_lists = common dso_local global i32 0, align 4
@ctename = common dso_local global i32 0, align 4
@ctelevelsup = common dso_local global i32 0, align 4
@self_reference = common dso_local global i32 0, align 4
@coltypes = common dso_local global i32 0, align 4
@coltypmods = common dso_local global i32 0, align 4
@colcollations = common dso_local global i32 0, align 4
@enrname = common dso_local global i32 0, align 4
@enrtuples = common dso_local global i32 0, align 4
@alias = common dso_local global i32 0, align 4
@eref = common dso_local global i32 0, align 4
@lateral = common dso_local global i32 0, align 4
@inh = common dso_local global i32 0, align 4
@inFromCl = common dso_local global i32 0, align 4
@requiredPerms = common dso_local global i32 0, align 4
@checkAsUser = common dso_local global i32 0, align 4
@selectedCols = common dso_local global i32 0, align 4
@insertedCols = common dso_local global i32 0, align 4
@updatedCols = common dso_local global i32 0, align 4
@extraUpdatedCols = common dso_local global i32 0, align 4
@securityQuals = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_equalRangeTblEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalRangeTblEntry(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @rtekind, align 4
  %6 = call i32 @COMPARE_SCALAR_FIELD(i32 %5)
  %7 = load i32, i32* @relid, align 4
  %8 = call i32 @COMPARE_SCALAR_FIELD(i32 %7)
  %9 = load i32, i32* @relkind, align 4
  %10 = call i32 @COMPARE_SCALAR_FIELD(i32 %9)
  %11 = load i32, i32* @rellockmode, align 4
  %12 = call i32 @COMPARE_SCALAR_FIELD(i32 %11)
  %13 = load i32, i32* @tablesample, align 4
  %14 = call i32 @COMPARE_NODE_FIELD(i32 %13)
  %15 = load i32, i32* @subquery, align 4
  %16 = call i32 @COMPARE_NODE_FIELD(i32 %15)
  %17 = load i32, i32* @security_barrier, align 4
  %18 = call i32 @COMPARE_SCALAR_FIELD(i32 %17)
  %19 = load i32, i32* @jointype, align 4
  %20 = call i32 @COMPARE_SCALAR_FIELD(i32 %19)
  %21 = load i32, i32* @joinaliasvars, align 4
  %22 = call i32 @COMPARE_NODE_FIELD(i32 %21)
  %23 = load i32, i32* @functions, align 4
  %24 = call i32 @COMPARE_NODE_FIELD(i32 %23)
  %25 = load i32, i32* @funcordinality, align 4
  %26 = call i32 @COMPARE_SCALAR_FIELD(i32 %25)
  %27 = load i32, i32* @tablefunc, align 4
  %28 = call i32 @COMPARE_NODE_FIELD(i32 %27)
  %29 = load i32, i32* @values_lists, align 4
  %30 = call i32 @COMPARE_NODE_FIELD(i32 %29)
  %31 = load i32, i32* @ctename, align 4
  %32 = call i32 @COMPARE_STRING_FIELD(i32 %31)
  %33 = load i32, i32* @ctelevelsup, align 4
  %34 = call i32 @COMPARE_SCALAR_FIELD(i32 %33)
  %35 = load i32, i32* @self_reference, align 4
  %36 = call i32 @COMPARE_SCALAR_FIELD(i32 %35)
  %37 = load i32, i32* @coltypes, align 4
  %38 = call i32 @COMPARE_NODE_FIELD(i32 %37)
  %39 = load i32, i32* @coltypmods, align 4
  %40 = call i32 @COMPARE_NODE_FIELD(i32 %39)
  %41 = load i32, i32* @colcollations, align 4
  %42 = call i32 @COMPARE_NODE_FIELD(i32 %41)
  %43 = load i32, i32* @enrname, align 4
  %44 = call i32 @COMPARE_STRING_FIELD(i32 %43)
  %45 = load i32, i32* @enrtuples, align 4
  %46 = call i32 @COMPARE_SCALAR_FIELD(i32 %45)
  %47 = load i32, i32* @alias, align 4
  %48 = call i32 @COMPARE_NODE_FIELD(i32 %47)
  %49 = load i32, i32* @eref, align 4
  %50 = call i32 @COMPARE_NODE_FIELD(i32 %49)
  %51 = load i32, i32* @lateral, align 4
  %52 = call i32 @COMPARE_SCALAR_FIELD(i32 %51)
  %53 = load i32, i32* @inh, align 4
  %54 = call i32 @COMPARE_SCALAR_FIELD(i32 %53)
  %55 = load i32, i32* @inFromCl, align 4
  %56 = call i32 @COMPARE_SCALAR_FIELD(i32 %55)
  %57 = load i32, i32* @requiredPerms, align 4
  %58 = call i32 @COMPARE_SCALAR_FIELD(i32 %57)
  %59 = load i32, i32* @checkAsUser, align 4
  %60 = call i32 @COMPARE_SCALAR_FIELD(i32 %59)
  %61 = load i32, i32* @selectedCols, align 4
  %62 = call i32 @COMPARE_BITMAPSET_FIELD(i32 %61)
  %63 = load i32, i32* @insertedCols, align 4
  %64 = call i32 @COMPARE_BITMAPSET_FIELD(i32 %63)
  %65 = load i32, i32* @updatedCols, align 4
  %66 = call i32 @COMPARE_BITMAPSET_FIELD(i32 %65)
  %67 = load i32, i32* @extraUpdatedCols, align 4
  %68 = call i32 @COMPARE_BITMAPSET_FIELD(i32 %67)
  %69 = load i32, i32* @securityQuals, align 4
  %70 = call i32 @COMPARE_NODE_FIELD(i32 %69)
  ret i32 1
}

declare dso_local i32 @COMPARE_SCALAR_FIELD(i32) #1

declare dso_local i32 @COMPARE_NODE_FIELD(i32) #1

declare dso_local i32 @COMPARE_STRING_FIELD(i32) #1

declare dso_local i32 @COMPARE_BITMAPSET_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
