; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_and_dump_old_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_and_dump_old_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@old_cluster = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@user_opts = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@JSONB_FORMAT_CHANGE_CAT_VER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_and_dump_old_cluster(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @start_postmaster(%struct.TYPE_21__* @old_cluster, i32 1)
  br label %7

7:                                                ; preds = %5, %1
  %8 = call i32 @get_db_and_rel_infos(%struct.TYPE_21__* @old_cluster)
  %9 = call i32 (...) @init_tablespaces()
  %10 = call i32 (...) @get_loadable_libraries()
  %11 = call i32 @check_is_install_user(%struct.TYPE_21__* @old_cluster)
  %12 = call i32 @check_proper_datallowconn(%struct.TYPE_21__* @old_cluster)
  %13 = call i32 @check_for_prepared_transactions(%struct.TYPE_21__* @old_cluster)
  %14 = call i32 @check_for_reg_data_type_usage(%struct.TYPE_21__* @old_cluster)
  %15 = call i32 @check_for_isn_and_int8_passing_mismatch(%struct.TYPE_21__* @old_cluster)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %17 = call i32 @GET_MAJOR_VERSION(i32 %16)
  %18 = icmp sle i32 %17, 1100
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = call i32 @check_for_tables_with_oids(%struct.TYPE_21__* @old_cluster)
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %23 = call i32 @GET_MAJOR_VERSION(i32 %22)
  %24 = icmp sle i32 %23, 1100
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @old_11_check_for_sql_identifier_data_type_usage(%struct.TYPE_21__* @old_cluster)
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %29 = call i32 @GET_MAJOR_VERSION(i32 %28)
  %30 = icmp sle i32 %29, 906
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = call i32 @old_9_6_check_for_unknown_data_type_usage(%struct.TYPE_21__* @old_cluster)
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @user_opts, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @old_9_6_invalidate_hash_indexes(%struct.TYPE_21__* @old_cluster, i32 1)
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %40 = call i32 @GET_MAJOR_VERSION(i32 %39)
  %41 = icmp sle i32 %40, 905
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @check_for_pg_role_prefix(%struct.TYPE_21__* @old_cluster)
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %46 = call i32 @GET_MAJOR_VERSION(i32 %45)
  %47 = icmp eq i32 %46, 904
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 1, i32 0), align 8
  %50 = load i64, i64* @JSONB_FORMAT_CHANGE_CAT_VER, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @check_for_jsonb_9_4_usage(%struct.TYPE_21__* @old_cluster)
  br label %54

54:                                               ; preds = %52, %48, %44
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %56 = call i32 @GET_MAJOR_VERSION(i32 %55)
  %57 = icmp sle i32 %56, 903
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @old_9_3_check_for_line_data_type_usage(%struct.TYPE_21__* @old_cluster)
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @old_cluster, i32 0, i32 0), align 8
  %62 = call i32 @GET_MAJOR_VERSION(i32 %61)
  %63 = icmp sle i32 %62, 804
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @new_9_0_populate_pg_largeobject_metadata(%struct.TYPE_21__* @old_cluster, i32 1)
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @user_opts, i32 0, i32 0), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (...) @generate_old_dump()
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = call i32 @stop_postmaster(i32 0)
  br label %76

76:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @start_postmaster(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @get_db_and_rel_infos(%struct.TYPE_21__*) #1

declare dso_local i32 @init_tablespaces(...) #1

declare dso_local i32 @get_loadable_libraries(...) #1

declare dso_local i32 @check_is_install_user(%struct.TYPE_21__*) #1

declare dso_local i32 @check_proper_datallowconn(%struct.TYPE_21__*) #1

declare dso_local i32 @check_for_prepared_transactions(%struct.TYPE_21__*) #1

declare dso_local i32 @check_for_reg_data_type_usage(%struct.TYPE_21__*) #1

declare dso_local i32 @check_for_isn_and_int8_passing_mismatch(%struct.TYPE_21__*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @check_for_tables_with_oids(%struct.TYPE_21__*) #1

declare dso_local i32 @old_11_check_for_sql_identifier_data_type_usage(%struct.TYPE_21__*) #1

declare dso_local i32 @old_9_6_check_for_unknown_data_type_usage(%struct.TYPE_21__*) #1

declare dso_local i32 @old_9_6_invalidate_hash_indexes(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @check_for_pg_role_prefix(%struct.TYPE_21__*) #1

declare dso_local i32 @check_for_jsonb_9_4_usage(%struct.TYPE_21__*) #1

declare dso_local i32 @old_9_3_check_for_line_data_type_usage(%struct.TYPE_21__*) #1

declare dso_local i32 @new_9_0_populate_pg_largeobject_metadata(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @generate_old_dump(...) #1

declare dso_local i32 @stop_postmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
