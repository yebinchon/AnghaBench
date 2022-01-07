; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_test_variable_renames.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_test_variable_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Creating chart\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chart\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Unit Testing\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"a value\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"unittest\00", align 1
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Created chart with id '%s', name '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Creating dimension DIM1\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"DIM1\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"Created dimension with id '%s', name '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Creating dimension DIM2\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DIM2\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Renaming chart to CHARTNAME1\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"CHARTNAME1\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Renamed chart with id '%s' to name '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Renaming chart to CHARTNAME2\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"CHARTNAME2\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Renaming dimension DIM1 to DIM1NAME1\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"DIM1NAME1\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Renamed dimension with id '%s' to name '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Renaming dimension DIM1 to DIM1NAME2\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"DIM1NAME2\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Renaming dimension DIM2 to DIM2NAME1\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"DIM2NAME1\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Renaming dimension DIM2 to DIM2NAME2\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"DIM2NAME2\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_variable_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_variable_renames() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %8 = call %struct.TYPE_10__* @rrdset_create_localhost(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %7)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %1, align 8
  %9 = load i32, i32* @stderr, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %12, i8* %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %20 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %21 = call %struct.TYPE_11__* @rrddim_add(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %2, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %25, i8* %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %33 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %34 = call %struct.TYPE_11__* @rrddim_add(%struct.TYPE_10__* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %3, align 8
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %38, i8* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %46 = call i32 @rrdset_set_name(%struct.TYPE_10__* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* %50, i8* %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %58 = call i32 @rrdset_set_name(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* %62, i8* %65)
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = call i32 @rrddim_set_name(%struct.TYPE_10__* %69, %struct.TYPE_11__* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %72 = load i32, i32* @stderr, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* %75, i8* %78)
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = call i32 @rrddim_set_name(%struct.TYPE_10__* %82, %struct.TYPE_11__* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* %88, i8* %91)
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = call i32 @rrddim_set_name(%struct.TYPE_10__* %95, %struct.TYPE_11__* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %98 = load i32, i32* @stderr, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* %101, i8* %104)
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = call i32 @rrddim_set_name(%struct.TYPE_10__* %108, %struct.TYPE_11__* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %111 = load i32, i32* @stderr, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* %114, i8* %117)
  %119 = call i32* @buffer_create(i32 1)
  store i32* %119, i32** %4, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @health_api_v1_chart_variables2json(%struct.TYPE_10__* %120, i32* %121)
  %123 = load i32, i32* @stderr, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = call i8* @buffer_tostring(i32* %124)
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %125)
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @buffer_free(i32* %127)
  ret i32 1
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @rrddim_add(%struct.TYPE_10__*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_set_name(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @rrddim_set_name(%struct.TYPE_10__*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32* @buffer_create(i32) #1

declare dso_local i32 @health_api_v1_chart_variables2json(%struct.TYPE_10__*, i32*) #1

declare dso_local i8* @buffer_tostring(i32*) #1

declare dso_local i32 @buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
