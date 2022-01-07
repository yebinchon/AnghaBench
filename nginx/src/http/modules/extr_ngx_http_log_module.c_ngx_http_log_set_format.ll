; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_set_format.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_13__ }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"duplicate \22log_format\22 name \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, i8*)* @ngx_http_log_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_log_set_format(%struct.TYPE_16__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %9, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %63, %3
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %30
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @ngx_strcmp(i32 %48, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i32, i32* @NGX_LOG_EMERG, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 1
  %60 = call i32 @ngx_conf_log_error(i32 %56, %struct.TYPE_16__* %57, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %59)
  %61 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %61, i8** %4, align 8
  br label %120

62:                                               ; preds = %42, %30
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %23

66:                                               ; preds = %23
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call %struct.TYPE_15__* @ngx_array_push(%struct.TYPE_12__* %68)
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %11, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = icmp eq %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %4, align 8
  br label %120

74:                                               ; preds = %66
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 1
  %79 = bitcast %struct.TYPE_13__* %76 to i8*
  %80 = bitcast %struct.TYPE_13__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @ngx_array_create(i32 %83, i32 4, i32 4)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %4, align 8
  br label %120

94:                                               ; preds = %74
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @ngx_array_create(i32 %97, i32 16, i32 4)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %107, i8** %4, align 8
  br label %120

108:                                              ; preds = %94
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = call i8* @ngx_http_log_compile_format(%struct.TYPE_16__* %109, i32* %112, i32* %115, %struct.TYPE_17__* %118, i32 2)
  store i8* %119, i8** %4, align 8
  br label %120

120:                                              ; preds = %108, %106, %92, %72, %55
  %121 = load i8*, i8** %4, align 8
  ret i8* %121
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_16__*, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @ngx_array_push(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i8* @ngx_http_log_compile_format(%struct.TYPE_16__*, i32*, i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
