; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPlannerInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPlannerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"PLANNERINFO\00", align 1
@parse = common dso_local global i32 0, align 4
@glob = common dso_local global i32 0, align 4
@query_level = common dso_local global i32 0, align 4
@plan_params = common dso_local global i32 0, align 4
@outer_params = common dso_local global i32 0, align 4
@all_baserels = common dso_local global i32 0, align 4
@nullable_baserels = common dso_local global i32 0, align 4
@join_rel_list = common dso_local global i32 0, align 4
@join_cur_level = common dso_local global i32 0, align 4
@init_plans = common dso_local global i32 0, align 4
@cte_plan_ids = common dso_local global i32 0, align 4
@multiexpr_params = common dso_local global i32 0, align 4
@eq_classes = common dso_local global i32 0, align 4
@ec_merging_done = common dso_local global i32 0, align 4
@canon_pathkeys = common dso_local global i32 0, align 4
@left_join_clauses = common dso_local global i32 0, align 4
@right_join_clauses = common dso_local global i32 0, align 4
@full_join_clauses = common dso_local global i32 0, align 4
@join_info_list = common dso_local global i32 0, align 4
@append_rel_list = common dso_local global i32 0, align 4
@rowMarks = common dso_local global i32 0, align 4
@placeholder_list = common dso_local global i32 0, align 4
@fkey_list = common dso_local global i32 0, align 4
@query_pathkeys = common dso_local global i32 0, align 4
@group_pathkeys = common dso_local global i32 0, align 4
@window_pathkeys = common dso_local global i32 0, align 4
@distinct_pathkeys = common dso_local global i32 0, align 4
@sort_pathkeys = common dso_local global i32 0, align 4
@processed_tlist = common dso_local global i32 0, align 4
@minmax_aggs = common dso_local global i32 0, align 4
@total_table_pages = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@tuple_fraction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@limit_tuples = common dso_local global i32 0, align 4
@qual_security_level = common dso_local global i32 0, align 4
@inhTargetKind = common dso_local global i32 0, align 4
@InheritanceKind = common dso_local global i32 0, align 4
@hasJoinRTEs = common dso_local global i32 0, align 4
@hasLateralRTEs = common dso_local global i32 0, align 4
@hasHavingQual = common dso_local global i32 0, align 4
@hasPseudoConstantQuals = common dso_local global i32 0, align 4
@hasRecursion = common dso_local global i32 0, align 4
@wt_param_id = common dso_local global i32 0, align 4
@curOuterRels = common dso_local global i32 0, align 4
@curOuterParams = common dso_local global i32 0, align 4
@partColsUpdated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outPlannerInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outPlannerInfo(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @parse, align 4
  %7 = call i32 @WRITE_NODE_FIELD(i32 %6)
  %8 = load i32, i32* @glob, align 4
  %9 = call i32 @WRITE_NODE_FIELD(i32 %8)
  %10 = load i32, i32* @query_level, align 4
  %11 = call i32 @WRITE_UINT_FIELD(i32 %10)
  %12 = load i32, i32* @plan_params, align 4
  %13 = call i32 @WRITE_NODE_FIELD(i32 %12)
  %14 = load i32, i32* @outer_params, align 4
  %15 = call i32 @WRITE_BITMAPSET_FIELD(i32 %14)
  %16 = load i32, i32* @all_baserels, align 4
  %17 = call i32 @WRITE_BITMAPSET_FIELD(i32 %16)
  %18 = load i32, i32* @nullable_baserels, align 4
  %19 = call i32 @WRITE_BITMAPSET_FIELD(i32 %18)
  %20 = load i32, i32* @join_rel_list, align 4
  %21 = call i32 @WRITE_NODE_FIELD(i32 %20)
  %22 = load i32, i32* @join_cur_level, align 4
  %23 = call i32 @WRITE_INT_FIELD(i32 %22)
  %24 = load i32, i32* @init_plans, align 4
  %25 = call i32 @WRITE_NODE_FIELD(i32 %24)
  %26 = load i32, i32* @cte_plan_ids, align 4
  %27 = call i32 @WRITE_NODE_FIELD(i32 %26)
  %28 = load i32, i32* @multiexpr_params, align 4
  %29 = call i32 @WRITE_NODE_FIELD(i32 %28)
  %30 = load i32, i32* @eq_classes, align 4
  %31 = call i32 @WRITE_NODE_FIELD(i32 %30)
  %32 = load i32, i32* @ec_merging_done, align 4
  %33 = call i32 @WRITE_BOOL_FIELD(i32 %32)
  %34 = load i32, i32* @canon_pathkeys, align 4
  %35 = call i32 @WRITE_NODE_FIELD(i32 %34)
  %36 = load i32, i32* @left_join_clauses, align 4
  %37 = call i32 @WRITE_NODE_FIELD(i32 %36)
  %38 = load i32, i32* @right_join_clauses, align 4
  %39 = call i32 @WRITE_NODE_FIELD(i32 %38)
  %40 = load i32, i32* @full_join_clauses, align 4
  %41 = call i32 @WRITE_NODE_FIELD(i32 %40)
  %42 = load i32, i32* @join_info_list, align 4
  %43 = call i32 @WRITE_NODE_FIELD(i32 %42)
  %44 = load i32, i32* @append_rel_list, align 4
  %45 = call i32 @WRITE_NODE_FIELD(i32 %44)
  %46 = load i32, i32* @rowMarks, align 4
  %47 = call i32 @WRITE_NODE_FIELD(i32 %46)
  %48 = load i32, i32* @placeholder_list, align 4
  %49 = call i32 @WRITE_NODE_FIELD(i32 %48)
  %50 = load i32, i32* @fkey_list, align 4
  %51 = call i32 @WRITE_NODE_FIELD(i32 %50)
  %52 = load i32, i32* @query_pathkeys, align 4
  %53 = call i32 @WRITE_NODE_FIELD(i32 %52)
  %54 = load i32, i32* @group_pathkeys, align 4
  %55 = call i32 @WRITE_NODE_FIELD(i32 %54)
  %56 = load i32, i32* @window_pathkeys, align 4
  %57 = call i32 @WRITE_NODE_FIELD(i32 %56)
  %58 = load i32, i32* @distinct_pathkeys, align 4
  %59 = call i32 @WRITE_NODE_FIELD(i32 %58)
  %60 = load i32, i32* @sort_pathkeys, align 4
  %61 = call i32 @WRITE_NODE_FIELD(i32 %60)
  %62 = load i32, i32* @processed_tlist, align 4
  %63 = call i32 @WRITE_NODE_FIELD(i32 %62)
  %64 = load i32, i32* @minmax_aggs, align 4
  %65 = call i32 @WRITE_NODE_FIELD(i32 %64)
  %66 = load i32, i32* @total_table_pages, align 4
  %67 = call i32 @WRITE_FLOAT_FIELD(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @tuple_fraction, align 4
  %69 = call i32 @WRITE_FLOAT_FIELD(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @limit_tuples, align 4
  %71 = call i32 @WRITE_FLOAT_FIELD(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @qual_security_level, align 4
  %73 = call i32 @WRITE_UINT_FIELD(i32 %72)
  %74 = load i32, i32* @inhTargetKind, align 4
  %75 = load i32, i32* @InheritanceKind, align 4
  %76 = call i32 @WRITE_ENUM_FIELD(i32 %74, i32 %75)
  %77 = load i32, i32* @hasJoinRTEs, align 4
  %78 = call i32 @WRITE_BOOL_FIELD(i32 %77)
  %79 = load i32, i32* @hasLateralRTEs, align 4
  %80 = call i32 @WRITE_BOOL_FIELD(i32 %79)
  %81 = load i32, i32* @hasHavingQual, align 4
  %82 = call i32 @WRITE_BOOL_FIELD(i32 %81)
  %83 = load i32, i32* @hasPseudoConstantQuals, align 4
  %84 = call i32 @WRITE_BOOL_FIELD(i32 %83)
  %85 = load i32, i32* @hasRecursion, align 4
  %86 = call i32 @WRITE_BOOL_FIELD(i32 %85)
  %87 = load i32, i32* @wt_param_id, align 4
  %88 = call i32 @WRITE_INT_FIELD(i32 %87)
  %89 = load i32, i32* @curOuterRels, align 4
  %90 = call i32 @WRITE_BITMAPSET_FIELD(i32 %89)
  %91 = load i32, i32* @curOuterParams, align 4
  %92 = call i32 @WRITE_NODE_FIELD(i32 %91)
  %93 = load i32, i32* @partColsUpdated, align 4
  %94 = call i32 @WRITE_BOOL_FIELD(i32 %93)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_FLOAT_FIELD(i32, i8*) #1

declare dso_local i32 @WRITE_ENUM_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
