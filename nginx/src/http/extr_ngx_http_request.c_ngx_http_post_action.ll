; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_post_action.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_post_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"post action: \22%V\22\00", align 1
@NGX_HTTP_VERSION_9 = common dso_local global i32 0, align 4
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ngx_http_post_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_post_action(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = load i32, i32* @ngx_http_core_module, align 4
  %7 = call %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_15__* %5, i32 %6)
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %20, %15
  %28 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = call i32 @ngx_log_debug1(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @NGX_HTTP_VERSION_9, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @ngx_http_block_reading, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %66

61:                                               ; preds = %27
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = call i32 @ngx_http_internal_redirect(%struct.TYPE_15__* %62, %struct.TYPE_17__* %64, i32* null)
  br label %71

66:                                               ; preds = %27
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = call i32 @ngx_http_named_location(%struct.TYPE_15__* %67, %struct.TYPE_17__* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* @NGX_OK, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %25, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_http_internal_redirect(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ngx_http_named_location(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
