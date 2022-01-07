; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_process_unique_header_line.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_process_unique_header_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"client sent duplicate header line: \22%V: %V\22, previous value: \22%V: %V\22\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @ngx_http_process_unique_header_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_process_unique_header_line(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %15, %struct.TYPE_8__*** %8, align 8
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %21, align 8
  %22 = load i32, i32* @NGX_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load i32, i32* @NGX_LOG_INFO, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @ngx_log_error(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32* %31, i32* %33, i32* %36, i32* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %43 = call i32 @ngx_http_finalize_request(%struct.TYPE_9__* %41, i32 %42)
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %23, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
