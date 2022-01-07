; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_handler.c_ngx_stream_proxy_protocol_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_handler.c_ngx_stream_proxy_protocol_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32*, i64)*, %struct.TYPE_19__*, i32, i32* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_16__ = type { i32 }

@NGX_PROXY_PROTOCOL_MAX_HEADER = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"stream PROXY protocol handler\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_STREAM_OK = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"recv(): %z\00", align 1
@NGX_EAGAIN = common dso_local global i64 0, align 8
@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"recv() failed\00", align 1
@NGX_STREAM_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"initializing session\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_stream_proxy_protocol_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_protocol_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %13 = load i32, i32* @NGX_PROXY_PROTOCOL_MAX_HEADER, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %9, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = call i32 @ngx_log_debug0(i32 %23, %struct.TYPE_19__* %26, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @NGX_LOG_INFO, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %38 = call i32 @ngx_log_error(i32 %33, %struct.TYPE_19__* %36, i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @NGX_STREAM_OK, align 4
  %41 = call i32 @ngx_stream_finalize_session(i32* %39, i32 %40)
  store i32 1, i32* %12, align 4
  br label %143

42:                                               ; preds = %1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast i32* %16 to i8*
  %47 = mul nuw i64 4, %14
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @MSG_PEEK, align 4
  %50 = call i32 @recv(i32 %45, i8* %46, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ngx_log_debug1(i32 %52, %struct.TYPE_19__* %55, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %97

60:                                               ; preds = %42
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @NGX_EAGAIN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %64
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @ngx_stream_core_module, align 4
  %74 = call %struct.TYPE_16__* @ngx_stream_get_module_srv_conf(i32* %72, i32 %73)
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %11, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ngx_add_timer(%struct.TYPE_17__* %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %64
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = call i64 @ngx_handle_read_event(%struct.TYPE_17__* %81, i32 0)
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %88 = call i32 @ngx_stream_finalize_session(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  store i32 1, i32* %12, align 4
  br label %143

90:                                               ; preds = %60
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @ngx_connection_error(%struct.TYPE_18__* %91, i64 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @NGX_STREAM_OK, align 4
  %96 = call i32 @ngx_stream_finalize_session(i32* %94, i32 %95)
  store i32 1, i32* %12, align 4
  br label %143

97:                                               ; preds = %42
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %104 = call i32 @ngx_del_timer(%struct.TYPE_17__* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %16, i64 %108
  %110 = call i32* @ngx_proxy_protocol_read(%struct.TYPE_18__* %106, i32* %16, i32* %109)
  store i32* %110, i32** %3, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @NGX_STREAM_BAD_REQUEST, align 4
  %116 = call i32 @ngx_stream_finalize_session(i32* %114, i32 %115)
  store i32 1, i32* %12, align 4
  br label %143

117:                                              ; preds = %105
  %118 = load i32*, i32** %3, align 8
  %119 = ptrtoint i32* %118 to i64
  %120 = ptrtoint i32* %16 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  store i64 %122, i64* %6, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_18__*, i32*, i64)*, i32 (%struct.TYPE_18__*, i32*, i64)** %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i32 %125(%struct.TYPE_18__* %126, i32* %16, i64 %127)
  %129 = load i64, i64* %6, align 8
  %130 = trunc i64 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %117
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %135 = call i32 @ngx_stream_finalize_session(i32* %133, i32 %134)
  store i32 1, i32* %12, align 4
  br label %143

136:                                              ; preds = %117
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %140, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %142 = call i32 @ngx_stream_session_handler(%struct.TYPE_17__* %141)
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %136, %132, %113, %90, %89, %32
  %144 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %12, align 4
  switch i32 %145, label %147 [
    i32 0, label %146
    i32 1, label %146
  ]

146:                                              ; preds = %143, %143
  ret void

147:                                              ; preds = %143
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_19__*, i32, i8*) #2

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_19__*, i32, i8*) #2

declare dso_local i32 @ngx_stream_finalize_session(i32*, i32) #2

declare dso_local i32 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_19__*, i32, i8*, i32) #2

declare dso_local %struct.TYPE_16__* @ngx_stream_get_module_srv_conf(i32*, i32) #2

declare dso_local i32 @ngx_add_timer(%struct.TYPE_17__*, i32) #2

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @ngx_connection_error(%struct.TYPE_18__*, i64, i8*) #2

declare dso_local i32 @ngx_del_timer(%struct.TYPE_17__*) #2

declare dso_local i32* @ngx_proxy_protocol_read(%struct.TYPE_18__*, i32*, i32*) #2

declare dso_local i32 @ngx_stream_session_handler(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
