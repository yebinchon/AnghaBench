; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"http init upstream, client timer: %d\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@NGX_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_upstream_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ngx_log_debug1(i32 %7, i32 %10, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @ngx_del_timer(%struct.TYPE_10__* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @ngx_event_flags, align 4
  %30 = load i32, i32* @NGX_USE_CLEAR_EVENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %45 = load i32, i32* @NGX_CLEAR_EVENT, align 4
  %46 = call i64 @ngx_add_event(%struct.TYPE_11__* %43, i32 %44, i32 %45)
  %47 = load i64, i64* @NGX_ERROR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %52 = call i32 @ngx_http_finalize_request(%struct.TYPE_8__* %50, i32 %51)
  br label %58

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = call i32 @ngx_http_upstream_init_request(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_10__*) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ngx_http_upstream_init_request(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
