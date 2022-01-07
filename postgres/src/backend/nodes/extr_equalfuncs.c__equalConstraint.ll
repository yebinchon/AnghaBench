; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_equalfuncs.c__equalConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@contype = common dso_local global i32 0, align 4
@conname = common dso_local global i32 0, align 4
@deferrable = common dso_local global i32 0, align 4
@initdeferred = common dso_local global i32 0, align 4
@location = common dso_local global i32 0, align 4
@is_no_inherit = common dso_local global i32 0, align 4
@raw_expr = common dso_local global i32 0, align 4
@cooked_expr = common dso_local global i32 0, align 4
@generated_when = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@including = common dso_local global i32 0, align 4
@exclusions = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@indexname = common dso_local global i32 0, align 4
@indexspace = common dso_local global i32 0, align 4
@reset_default_tblspc = common dso_local global i32 0, align 4
@access_method = common dso_local global i32 0, align 4
@where_clause = common dso_local global i32 0, align 4
@pktable = common dso_local global i32 0, align 4
@fk_attrs = common dso_local global i32 0, align 4
@pk_attrs = common dso_local global i32 0, align 4
@fk_matchtype = common dso_local global i32 0, align 4
@fk_upd_action = common dso_local global i32 0, align 4
@fk_del_action = common dso_local global i32 0, align 4
@old_conpfeqop = common dso_local global i32 0, align 4
@old_pktable_oid = common dso_local global i32 0, align 4
@skip_validation = common dso_local global i32 0, align 4
@initially_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_equalConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_equalConstraint(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @contype, align 4
  %6 = call i32 @COMPARE_SCALAR_FIELD(i32 %5)
  %7 = load i32, i32* @conname, align 4
  %8 = call i32 @COMPARE_STRING_FIELD(i32 %7)
  %9 = load i32, i32* @deferrable, align 4
  %10 = call i32 @COMPARE_SCALAR_FIELD(i32 %9)
  %11 = load i32, i32* @initdeferred, align 4
  %12 = call i32 @COMPARE_SCALAR_FIELD(i32 %11)
  %13 = load i32, i32* @location, align 4
  %14 = call i32 @COMPARE_LOCATION_FIELD(i32 %13)
  %15 = load i32, i32* @is_no_inherit, align 4
  %16 = call i32 @COMPARE_SCALAR_FIELD(i32 %15)
  %17 = load i32, i32* @raw_expr, align 4
  %18 = call i32 @COMPARE_NODE_FIELD(i32 %17)
  %19 = load i32, i32* @cooked_expr, align 4
  %20 = call i32 @COMPARE_STRING_FIELD(i32 %19)
  %21 = load i32, i32* @generated_when, align 4
  %22 = call i32 @COMPARE_SCALAR_FIELD(i32 %21)
  %23 = load i32, i32* @keys, align 4
  %24 = call i32 @COMPARE_NODE_FIELD(i32 %23)
  %25 = load i32, i32* @including, align 4
  %26 = call i32 @COMPARE_NODE_FIELD(i32 %25)
  %27 = load i32, i32* @exclusions, align 4
  %28 = call i32 @COMPARE_NODE_FIELD(i32 %27)
  %29 = load i32, i32* @options, align 4
  %30 = call i32 @COMPARE_NODE_FIELD(i32 %29)
  %31 = load i32, i32* @indexname, align 4
  %32 = call i32 @COMPARE_STRING_FIELD(i32 %31)
  %33 = load i32, i32* @indexspace, align 4
  %34 = call i32 @COMPARE_STRING_FIELD(i32 %33)
  %35 = load i32, i32* @reset_default_tblspc, align 4
  %36 = call i32 @COMPARE_SCALAR_FIELD(i32 %35)
  %37 = load i32, i32* @access_method, align 4
  %38 = call i32 @COMPARE_STRING_FIELD(i32 %37)
  %39 = load i32, i32* @where_clause, align 4
  %40 = call i32 @COMPARE_NODE_FIELD(i32 %39)
  %41 = load i32, i32* @pktable, align 4
  %42 = call i32 @COMPARE_NODE_FIELD(i32 %41)
  %43 = load i32, i32* @fk_attrs, align 4
  %44 = call i32 @COMPARE_NODE_FIELD(i32 %43)
  %45 = load i32, i32* @pk_attrs, align 4
  %46 = call i32 @COMPARE_NODE_FIELD(i32 %45)
  %47 = load i32, i32* @fk_matchtype, align 4
  %48 = call i32 @COMPARE_SCALAR_FIELD(i32 %47)
  %49 = load i32, i32* @fk_upd_action, align 4
  %50 = call i32 @COMPARE_SCALAR_FIELD(i32 %49)
  %51 = load i32, i32* @fk_del_action, align 4
  %52 = call i32 @COMPARE_SCALAR_FIELD(i32 %51)
  %53 = load i32, i32* @old_conpfeqop, align 4
  %54 = call i32 @COMPARE_NODE_FIELD(i32 %53)
  %55 = load i32, i32* @old_pktable_oid, align 4
  %56 = call i32 @COMPARE_SCALAR_FIELD(i32 %55)
  %57 = load i32, i32* @skip_validation, align 4
  %58 = call i32 @COMPARE_SCALAR_FIELD(i32 %57)
  %59 = load i32, i32* @initially_valid, align 4
  %60 = call i32 @COMPARE_SCALAR_FIELD(i32 %59)
  ret i32 1
}

declare dso_local i32 @COMPARE_SCALAR_FIELD(i32) #1

declare dso_local i32 @COMPARE_STRING_FIELD(i32) #1

declare dso_local i32 @COMPARE_LOCATION_FIELD(i32) #1

declare dso_local i32 @COMPARE_NODE_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
