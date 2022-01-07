; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_set_format.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__ }

@NGX_RTMP_MAIN_CONF = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"\22log_format\22 directive can only be used on \22rtmp\22 level\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"duplicate \22log_format\22 name \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i32*, i8*)* @ngx_rtmp_log_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_log_set_format(%struct.TYPE_15__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NGX_RTMP_MAIN_CONF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @NGX_LOG_WARN, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ngx_conf_log_error(i32 %25, %struct.TYPE_15__* %26, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %73, %28
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %40
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ngx_strcmp(i32 %58, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load i32, i32* @NGX_LOG_EMERG, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 1
  %70 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ngx_conf_log_error(i32 %66, %struct.TYPE_15__* %67, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %69)
  %71 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %71, i8** %4, align 8
  br label %112

72:                                               ; preds = %52, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %33

76:                                               ; preds = %33
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = call %struct.TYPE_14__* @ngx_array_push(%struct.TYPE_11__* %78)
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %9, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = icmp eq %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %83, i8** %4, align 8
  br label %112

84:                                               ; preds = %76
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 1
  %89 = bitcast %struct.TYPE_12__* %86 to i8*
  %90 = bitcast %struct.TYPE_12__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @ngx_array_create(i32 %93, i32 16, i32 4)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %102, i8** %4, align 8
  br label %112

103:                                              ; preds = %84
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = call i8* @ngx_rtmp_log_compile_format(%struct.TYPE_15__* %104, i32* %107, %struct.TYPE_16__* %110, i32 2)
  store i8* %111, i8** %4, align 8
  br label %112

112:                                              ; preds = %103, %101, %82, %65
  %113 = load i8*, i8** %4, align 8
  ret i8* %113
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_array_push(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i8* @ngx_rtmp_log_compile_format(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
