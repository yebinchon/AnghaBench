; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_preface.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_preface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ngx_http_v2_state_preface.preface = internal constant [17 x i8] c"PRI * HTTP/2.0\0D\0A\00", align 16
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid http2 connection preface \22%*s\22\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, i8*, i8*)* @ngx_http_v2_state_preface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_v2_state_preface(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @ngx_http_v2_state_save(%struct.TYPE_9__* %15, i8* %16, i8* %17, i8* (%struct.TYPE_9__*, i8*, i8*)* @ngx_http_v2_state_preface)
  store i8* %18, i8** %4, align 8
  br label %42

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @ngx_memcmp(i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @ngx_http_v2_state_preface.preface, i64 0, i64 0), i32 16)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @ngx_log_debug2(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 16, i8* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %34 = call i8* @ngx_http_v2_connection_error(%struct.TYPE_9__* %32, i32 %33)
  store i8* %34, i8** %4, align 8
  br label %42

35:                                               ; preds = %19
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 17
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @ngx_http_v2_state_preface_end(%struct.TYPE_9__* %36, i8* %39, i8* %40)
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %35, %23, %14
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i8* @ngx_http_v2_state_save(%struct.TYPE_9__*, i8*, i8*, i8* (%struct.TYPE_9__*, i8*, i8*)*) #1

declare dso_local i64 @ngx_memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i8* @ngx_http_v2_connection_error(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @ngx_http_v2_state_preface_end(%struct.TYPE_9__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
