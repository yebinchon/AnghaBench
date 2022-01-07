; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_add_prefix_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_variables.c_ngx_stream_add_prefix_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i32*, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }

@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_STREAM_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"the duplicate \22%V\22 variable\00", align 1
@NGX_STREAM_VAR_WEAK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_20__*, %struct.TYPE_19__*, i64)* @ngx_stream_add_prefix_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @ngx_stream_add_prefix_variable(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %12 = load i32, i32* @ngx_stream_core_module, align 4
  %13 = call %struct.TYPE_18__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_20__* %11, i32 %12)
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %9, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %83, %3
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %18
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @ngx_strncasecmp(i32 %39, i32* %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36, %25
  br label %83

52:                                               ; preds = %36
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %54
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %9, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NGX_STREAM_VAR_CHANGEABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @NGX_LOG_EMERG, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = call i32 @ngx_conf_log_error(i32 %63, %struct.TYPE_20__* %64, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %65)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %141

67:                                               ; preds = %52
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @NGX_STREAM_VAR_WEAK, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @NGX_STREAM_VAR_WEAK, align 8
  %74 = xor i64 %73, -1
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = and i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  br label %81

81:                                               ; preds = %72, %67
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %4, align 8
  br label %141

83:                                               ; preds = %51
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %18

86:                                               ; preds = %18
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = call %struct.TYPE_17__* @ngx_array_push(%struct.TYPE_15__* %88)
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %9, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = icmp eq %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %141

93:                                               ; preds = %86
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32* @ngx_pnalloc(i32 %102, i64 %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32* %106, i32** %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %93
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %141

116:                                              ; preds = %93
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ngx_strlow(i32* %120, i32 %123, i64 %126)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load i64, i64* %7, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %4, align 8
  br label %141

141:                                              ; preds = %116, %115, %92, %81, %62
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %142
}

declare dso_local %struct.TYPE_18__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i64) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_20__*, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @ngx_array_push(%struct.TYPE_15__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_strlow(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
