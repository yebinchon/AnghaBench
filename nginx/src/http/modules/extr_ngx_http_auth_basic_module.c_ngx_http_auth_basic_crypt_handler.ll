; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_auth_basic_module.c_ngx_http_auth_basic_crypt_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_auth_basic_module.c_ngx_http_auth_basic_crypt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rc: %i user: \22%V\22 salt: \22%s\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"encrypted: \22%s\22\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"user \22%V\22: password mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @ngx_http_auth_basic_crypt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_auth_basic_crypt_handler(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ngx_crypt(i32 %12, i32 %17, i32 %20, i32** %9)
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_log_debug3(i32 %22, i32 %27, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28, i32* %31, i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %40, i64* %4, align 8
  br label %72

41:                                               ; preds = %3
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ngx_strcmp(i32* %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* @NGX_OK, align 8
  store i64 %49, i64* %4, align 8
  br label %72

50:                                               ; preds = %41
  %51 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ngx_log_debug1(i32 %51, i32 %56, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  %59 = load i32, i32* @NGX_LOG_ERR, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = call i32 @ngx_log_error(i32 %59, i32 %64, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = call i64 @ngx_http_auth_basic_set_realm(%struct.TYPE_15__* %69, %struct.TYPE_14__* %70)
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %50, %48, %39
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i64 @ngx_crypt(i32, i32, i32, i32**) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i32*, i32) #1

declare dso_local i64 @ngx_strcmp(i32*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @ngx_http_auth_basic_set_realm(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
