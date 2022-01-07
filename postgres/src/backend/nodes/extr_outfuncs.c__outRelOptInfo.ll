; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outRelOptInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outRelOptInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"RELOPTINFO\00", align 1
@reloptkind = common dso_local global i32 0, align 4
@RelOptKind = common dso_local global i32 0, align 4
@relids = common dso_local global i32 0, align 4
@rows = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@consider_startup = common dso_local global i32 0, align 4
@consider_param_startup = common dso_local global i32 0, align 4
@consider_parallel = common dso_local global i32 0, align 4
@reltarget = common dso_local global i32 0, align 4
@pathlist = common dso_local global i32 0, align 4
@ppilist = common dso_local global i32 0, align 4
@partial_pathlist = common dso_local global i32 0, align 4
@cheapest_startup_path = common dso_local global i32 0, align 4
@cheapest_total_path = common dso_local global i32 0, align 4
@cheapest_unique_path = common dso_local global i32 0, align 4
@cheapest_parameterized_paths = common dso_local global i32 0, align 4
@direct_lateral_relids = common dso_local global i32 0, align 4
@lateral_relids = common dso_local global i32 0, align 4
@relid = common dso_local global i32 0, align 4
@reltablespace = common dso_local global i32 0, align 4
@rtekind = common dso_local global i32 0, align 4
@RTEKind = common dso_local global i32 0, align 4
@min_attr = common dso_local global i32 0, align 4
@max_attr = common dso_local global i32 0, align 4
@lateral_vars = common dso_local global i32 0, align 4
@lateral_referencers = common dso_local global i32 0, align 4
@indexlist = common dso_local global i32 0, align 4
@statlist = common dso_local global i32 0, align 4
@pages = common dso_local global i32 0, align 4
@tuples = common dso_local global i32 0, align 4
@allvisfrac = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.6f\00", align 1
@eclass_indexes = common dso_local global i32 0, align 4
@subroot = common dso_local global i32 0, align 4
@subplan_params = common dso_local global i32 0, align 4
@rel_parallel_workers = common dso_local global i32 0, align 4
@serverid = common dso_local global i32 0, align 4
@userid = common dso_local global i32 0, align 4
@useridiscurrent = common dso_local global i32 0, align 4
@baserestrictinfo = common dso_local global i32 0, align 4
@baserestrict_min_security = common dso_local global i32 0, align 4
@joininfo = common dso_local global i32 0, align 4
@has_eclass_joins = common dso_local global i32 0, align 4
@consider_partitionwise_join = common dso_local global i32 0, align 4
@top_parent_relids = common dso_local global i32 0, align 4
@partitioned_child_rels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outRelOptInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outRelOptInfo(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @reloptkind, align 4
  %7 = load i32, i32* @RelOptKind, align 4
  %8 = call i32 @WRITE_ENUM_FIELD(i32 %6, i32 %7)
  %9 = load i32, i32* @relids, align 4
  %10 = call i32 @WRITE_BITMAPSET_FIELD(i32 %9)
  %11 = load i32, i32* @rows, align 4
  %12 = call i32 @WRITE_FLOAT_FIELD(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @consider_startup, align 4
  %14 = call i32 @WRITE_BOOL_FIELD(i32 %13)
  %15 = load i32, i32* @consider_param_startup, align 4
  %16 = call i32 @WRITE_BOOL_FIELD(i32 %15)
  %17 = load i32, i32* @consider_parallel, align 4
  %18 = call i32 @WRITE_BOOL_FIELD(i32 %17)
  %19 = load i32, i32* @reltarget, align 4
  %20 = call i32 @WRITE_NODE_FIELD(i32 %19)
  %21 = load i32, i32* @pathlist, align 4
  %22 = call i32 @WRITE_NODE_FIELD(i32 %21)
  %23 = load i32, i32* @ppilist, align 4
  %24 = call i32 @WRITE_NODE_FIELD(i32 %23)
  %25 = load i32, i32* @partial_pathlist, align 4
  %26 = call i32 @WRITE_NODE_FIELD(i32 %25)
  %27 = load i32, i32* @cheapest_startup_path, align 4
  %28 = call i32 @WRITE_NODE_FIELD(i32 %27)
  %29 = load i32, i32* @cheapest_total_path, align 4
  %30 = call i32 @WRITE_NODE_FIELD(i32 %29)
  %31 = load i32, i32* @cheapest_unique_path, align 4
  %32 = call i32 @WRITE_NODE_FIELD(i32 %31)
  %33 = load i32, i32* @cheapest_parameterized_paths, align 4
  %34 = call i32 @WRITE_NODE_FIELD(i32 %33)
  %35 = load i32, i32* @direct_lateral_relids, align 4
  %36 = call i32 @WRITE_BITMAPSET_FIELD(i32 %35)
  %37 = load i32, i32* @lateral_relids, align 4
  %38 = call i32 @WRITE_BITMAPSET_FIELD(i32 %37)
  %39 = load i32, i32* @relid, align 4
  %40 = call i32 @WRITE_UINT_FIELD(i32 %39)
  %41 = load i32, i32* @reltablespace, align 4
  %42 = call i32 @WRITE_OID_FIELD(i32 %41)
  %43 = load i32, i32* @rtekind, align 4
  %44 = load i32, i32* @RTEKind, align 4
  %45 = call i32 @WRITE_ENUM_FIELD(i32 %43, i32 %44)
  %46 = load i32, i32* @min_attr, align 4
  %47 = call i32 @WRITE_INT_FIELD(i32 %46)
  %48 = load i32, i32* @max_attr, align 4
  %49 = call i32 @WRITE_INT_FIELD(i32 %48)
  %50 = load i32, i32* @lateral_vars, align 4
  %51 = call i32 @WRITE_NODE_FIELD(i32 %50)
  %52 = load i32, i32* @lateral_referencers, align 4
  %53 = call i32 @WRITE_BITMAPSET_FIELD(i32 %52)
  %54 = load i32, i32* @indexlist, align 4
  %55 = call i32 @WRITE_NODE_FIELD(i32 %54)
  %56 = load i32, i32* @statlist, align 4
  %57 = call i32 @WRITE_NODE_FIELD(i32 %56)
  %58 = load i32, i32* @pages, align 4
  %59 = call i32 @WRITE_UINT_FIELD(i32 %58)
  %60 = load i32, i32* @tuples, align 4
  %61 = call i32 @WRITE_FLOAT_FIELD(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @allvisfrac, align 4
  %63 = call i32 @WRITE_FLOAT_FIELD(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @eclass_indexes, align 4
  %65 = call i32 @WRITE_BITMAPSET_FIELD(i32 %64)
  %66 = load i32, i32* @subroot, align 4
  %67 = call i32 @WRITE_NODE_FIELD(i32 %66)
  %68 = load i32, i32* @subplan_params, align 4
  %69 = call i32 @WRITE_NODE_FIELD(i32 %68)
  %70 = load i32, i32* @rel_parallel_workers, align 4
  %71 = call i32 @WRITE_INT_FIELD(i32 %70)
  %72 = load i32, i32* @serverid, align 4
  %73 = call i32 @WRITE_OID_FIELD(i32 %72)
  %74 = load i32, i32* @userid, align 4
  %75 = call i32 @WRITE_OID_FIELD(i32 %74)
  %76 = load i32, i32* @useridiscurrent, align 4
  %77 = call i32 @WRITE_BOOL_FIELD(i32 %76)
  %78 = load i32, i32* @baserestrictinfo, align 4
  %79 = call i32 @WRITE_NODE_FIELD(i32 %78)
  %80 = load i32, i32* @baserestrict_min_security, align 4
  %81 = call i32 @WRITE_UINT_FIELD(i32 %80)
  %82 = load i32, i32* @joininfo, align 4
  %83 = call i32 @WRITE_NODE_FIELD(i32 %82)
  %84 = load i32, i32* @has_eclass_joins, align 4
  %85 = call i32 @WRITE_BOOL_FIELD(i32 %84)
  %86 = load i32, i32* @consider_partitionwise_join, align 4
  %87 = call i32 @WRITE_BOOL_FIELD(i32 %86)
  %88 = load i32, i32* @top_parent_relids, align 4
  %89 = call i32 @WRITE_BITMAPSET_FIELD(i32 %88)
  %90 = load i32, i32* @partitioned_child_rels, align 4
  %91 = call i32 @WRITE_NODE_FIELD(i32 %90)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @WRITE_FLOAT_FIELD(i32, i8*) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

declare dso_local i32 @WRITE_OID_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
