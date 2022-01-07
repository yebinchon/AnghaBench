; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_redirect_handler.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_redirect_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"newname\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"newname not specified\00", align 1
@NGX_RTMP_MAX_NAME = common dso_local global i64 0, align 8
@ngx_rtmp_control_module = common dso_local global i32 0, align 4
@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"publish failed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"play failed\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @ngx_rtmp_control_redirect_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_control_redirect_handler(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ngx_http_arg(i32* %12, i32* bitcast ([8 x i8]* @.str to i32*), i32 7, %struct.TYPE_14__* %6)
  %14 = load i64, i64* @NGX_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %89

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NGX_RTMP_MAX_NAME, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i64, i64* @NGX_RTMP_MAX_NAME, align 8
  %24 = sub nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @ngx_rtmp_control_module, align 4
  %29 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(i32* %27, i32 %28)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = call i32 @ngx_memzero(%struct.TYPE_15__* %11, i32 8)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ngx_rtmp_close_stream(i32* %35, %struct.TYPE_15__* %11)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @ngx_rtmp_live_module, align 4
  %39 = call %struct.TYPE_16__* @ngx_rtmp_get_module_ctx(i32* %37, i32 %38)
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %9, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %26
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = call i32 @ngx_memzero(%struct.TYPE_15__* %8, i32 8)
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ngx_memcpy(i32 %50, i32 %52, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ngx_rtmp_cmd_fill_args(i32 %57, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @ngx_rtmp_publish(i32* %61, %struct.TYPE_15__* %8)
  %63 = load i64, i64* @NGX_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %89

66:                                               ; preds = %47
  br label %87

67:                                               ; preds = %42, %26
  %68 = call i32 @ngx_memzero(%struct.TYPE_15__* %7, i32 8)
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ngx_memcpy(i32 %70, i32 %72, i64 %74)
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ngx_rtmp_cmd_fill_args(i32 %77, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @ngx_rtmp_play(i32* %81, %struct.TYPE_15__* %7)
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %89

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %88, i8** %3, align 8
  br label %89

89:                                               ; preds = %87, %85, %65, %16
  %90 = load i8*, i8** %3, align 8
  ret i8* %90
}

declare dso_local i64 @ngx_http_arg(i32*, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_rtmp_close_stream(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i32, i32, i64) #1

declare dso_local i32 @ngx_rtmp_cmd_fill_args(i32, i32) #1

declare dso_local i64 @ngx_rtmp_publish(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_rtmp_play(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
