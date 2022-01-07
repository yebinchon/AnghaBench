; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_filter_sharpen.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_filter_sharpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32*, %struct.TYPE_15__* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid value \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i32*, i8*)* @ngx_http_image_filter_sharpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_image_filter_sharpen(%struct.TYPE_15__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = call i32 @ngx_memzero(%struct.TYPE_14__* %12, i32 24)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %22, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %26, align 8
  %27 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_14__* %12)
  %28 = load i64, i64* @NGX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %31, i8** %4, align 8
  br label %74

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = call i64 @ngx_http_image_filter_value(i32* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @NGX_LOG_EMERG, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = call i32 @ngx_conf_log_error(i32 %43, %struct.TYPE_15__* %44, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %46)
  %48 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %48, i8** %4, align 8
  br label %74

49:                                               ; preds = %36
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %72

53:                                               ; preds = %32
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_13__* @ngx_palloc(i32 %56, i32 8)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = icmp eq %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %65, i8** %4, align 8
  br label %74

66:                                               ; preds = %53
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = bitcast %struct.TYPE_13__* %69 to i8*
  %71 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  br label %72

72:                                               ; preds = %66, %49
  %73 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %72, %64, %42, %30
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_14__*) #1

declare dso_local i64 @ngx_http_image_filter_value(i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_15__*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
