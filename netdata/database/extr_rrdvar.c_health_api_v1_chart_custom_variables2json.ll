; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdvar.c_health_api_v1_chart_custom_variables2json.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdvar.c_health_api_v1_chart_custom_variables2json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.variable2json_helper = type { i32, i32, i32* }

@RRDVAR_OPTION_CUSTOM_CHART_VAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@single_variable2json = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A\09\09\09}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @health_api_v1_chart_custom_variables2json(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.variable2json_helper, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %5, i32 0, i32 0
  %7 = load i32, i32* @RRDVAR_OPTION_CUSTOM_CHART_VAR, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %5, i32 0, i32 2
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @buffer_sprintf(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* @single_variable2json, align 4
  %16 = bitcast %struct.variable2json_helper* %5 to i8*
  %17 = call i32 @avl_traverse_lock(i32* %14, i32 %15, i8* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @buffer_strcat(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buffer_sprintf(i32*, i8*) #1

declare dso_local i32 @avl_traverse_lock(i32*, i32, i8*) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
