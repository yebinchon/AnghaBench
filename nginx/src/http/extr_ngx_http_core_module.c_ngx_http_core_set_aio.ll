; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_set_aio.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_set_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_16__ = type { i64, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }

@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_HTTP_AIO_OFF = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"\22aio on\22 is unsupported on this platform\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\22aio threads\22 is unsupported on this platform\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@NGX_HTTP_AIO_ON = common dso_local global i8* null, align 8
@NGX_HTTP_AIO_THREADS = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i32*, i8*)* @ngx_http_core_set_aio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_set_aio(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NGX_CONF_UNSET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %9, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @ngx_strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i64, i64* @NGX_HTTP_AIO_OFF, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %34, i8** %4, align 8
  br label %75

35:                                               ; preds = %18
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @ngx_strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @NGX_LOG_EMERG, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = call i32 @ngx_conf_log_error(i32 %43, %struct.TYPE_19__* %44, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %46, i8** %4, align 8
  br label %75

47:                                               ; preds = %35
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @ngx_strncmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 61
  br i1 %68, label %69, label %74

69:                                               ; preds = %60, %54
  %70 = load i32, i32* @NGX_LOG_EMERG, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = call i32 @ngx_conf_log_error(i32 %70, %struct.TYPE_19__* %71, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %4, align 8
  br label %75

74:                                               ; preds = %60, %47
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %75

75:                                               ; preds = %74, %69, %42, %30, %17
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
