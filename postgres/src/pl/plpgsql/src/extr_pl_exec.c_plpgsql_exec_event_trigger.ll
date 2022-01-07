; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_event_trigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_event_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32*, i32*, i32* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* }
%struct.TYPE_18__ = type { i64 }

@plpgsql_exec_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_20__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"during initialization of execution state\00", align 1
@plpgsql_plugin_ptr = common dso_local global %struct.TYPE_21__** null, align 8
@PLPGSQL_RC_RETURN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"control reached end of trigger procedure without RETURN\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"during function exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plpgsql_exec_event_trigger(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i32 @plpgsql_estate_setup(%struct.TYPE_19__* %5, %struct.TYPE_18__* %8, i32* null, i32* null)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i32* %10, i32** %11, align 8
  %12 = load i32, i32* @plpgsql_exec_error_callback, align 4
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %14, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** @error_context_stack, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %6, %struct.TYPE_20__** @error_context_stack, align 8
  %17 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = bitcast i8* %17 to i32*
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = call i32 @copy_plpgsql_datums(%struct.TYPE_19__* %5, %struct.TYPE_18__* %20)
  %22 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @plpgsql_plugin_ptr, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = icmp ne %struct.TYPE_21__* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @plpgsql_plugin_ptr, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @plpgsql_plugin_ptr, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %34, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = call i32 %35(%struct.TYPE_19__* %5, %struct.TYPE_18__* %36)
  br label %38

38:                                               ; preds = %31, %25, %2
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32* %43, i32** %44, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @exec_stmt(%struct.TYPE_19__* %5, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PLPGSQL_RC_RETURN, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %38
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = call i8* @gettext_noop(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %64 = bitcast i8* %63 to i32*
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32* %64, i32** %65, align 8
  %66 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @plpgsql_plugin_ptr, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = icmp ne %struct.TYPE_21__* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @plpgsql_plugin_ptr, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %72, align 8
  %74 = icmp ne i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @plpgsql_plugin_ptr, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)** %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = call i32 %79(%struct.TYPE_19__* %5, %struct.TYPE_18__* %80)
  br label %82

82:                                               ; preds = %75, %69, %61
  %83 = call i32 @plpgsql_destroy_econtext(%struct.TYPE_19__* %5)
  %84 = call i32 @exec_eval_cleanup(%struct.TYPE_19__* %5)
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** @error_context_stack, align 8
  ret void
}

declare dso_local i32 @plpgsql_estate_setup(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i32 @copy_plpgsql_datums(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @exec_stmt(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @plpgsql_destroy_econtext(%struct.TYPE_19__*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
