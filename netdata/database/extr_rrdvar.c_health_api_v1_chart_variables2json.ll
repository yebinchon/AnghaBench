; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdvar.c_health_api_v1_chart_variables2json.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdvar.c_health_api_v1_chart_variables2json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.variable2json_helper = type { i64, i32, i32* }

@RRDVAR_OPTION_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"{\0A\09\22chart\22: \22%s\22,\0A\09\22chart_name\22: \22%s\22,\0A\09\22chart_context\22: \22%s\22,\0A\09\22chart_variables\22: {\00", align 1
@single_variable2json = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\0A\09},\0A\09\22family\22: \22%s\22,\0A\09\22family_variables\22: {\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\0A\09},\0A\09\22host\22: \22%s\22,\0A\09\22host_variables\22: {\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\0A\09}\0A}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @health_api_v1_chart_variables2json(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.variable2json_helper, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %6, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %6, i32 0, i32 1
  %12 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %6, i32 0, i32 2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32*, i8*, i32, ...) @buffer_sprintf(i32* %15, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* @single_variable2json, align 4
  %29 = bitcast %struct.variable2json_helper* %6 to i8*
  %30 = call i32 @avl_traverse_lock(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32*, i8*, i32, ...) @buffer_sprintf(i32* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %6, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* @single_variable2json, align 4
  %42 = bitcast %struct.variable2json_helper* %6 to i8*
  %43 = call i32 @avl_traverse_lock(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, i32, ...) @buffer_sprintf(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.variable2json_helper, %struct.variable2json_helper* %6, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* @single_variable2json, align 4
  %53 = bitcast %struct.variable2json_helper* %6 to i8*
  %54 = call i32 @avl_traverse_lock(i32* %51, i32 %52, i8* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @buffer_strcat(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buffer_sprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @avl_traverse_lock(i32*, i32, i8*) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
