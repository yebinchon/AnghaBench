; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_init_upstream.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_init_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_31__*, %struct.TYPE_40__* }
%struct.TYPE_31__ = type { i64, %struct.TYPE_35__*, %struct.TYPE_34__*, i32, %struct.TYPE_36__*, %struct.TYPE_39__*, i32* }
%struct.TYPE_35__ = type { i64, i8* }
%struct.TYPE_34__ = type { i8* }
%struct.TYPE_36__ = type { i64, i32* }
%struct.TYPE_39__ = type { i64, i64, i32, i32, i8*, i64 }
%struct.TYPE_40__ = type { i32, i8*, i8*, i64, %struct.TYPE_32__*, i32, %struct.TYPE_38__, %struct.TYPE_33__, i64, %struct.TYPE_37__* }
%struct.TYPE_32__ = type { %struct.TYPE_32__*, %struct.TYPE_39__* }
%struct.TYPE_38__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_33__ = type { i32, i32 (%struct.TYPE_33__*, i32, i32)*, i32, %struct.TYPE_31__* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_42__ = type { i32, i32, i32, i64 }
%struct.TYPE_44__ = type { i32, i32* }

@ngx_stream_core_module = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i64 0, align 8
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%sproxy %V connected to %V\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"udp \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ngx_current_msec = common dso_local global i64 0, align 8
@NGX_STREAM_UPSTREAM_NOTIFY_CONNECT = common dso_local global i32 0, align 4
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"stream proxy add preread buffer: %uz\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"stream proxy add PROXY protocol header\00", align 1
@NGX_PROXY_PROTOCOL_MAX_HEADER = common dso_local global i32 0, align 4
@ngx_stream_proxy_upstream_handler = common dso_local global i8* null, align 8
@ngx_posted_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_41__*)* @ngx_stream_proxy_init_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_init_upstream(%struct.TYPE_41__* %0) #0 {
  %2 = alloca %struct.TYPE_41__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca %struct.TYPE_43__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_44__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %2, align 8
  %14 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  store %struct.TYPE_40__* %16, %struct.TYPE_40__** %8, align 8
  %17 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  store %struct.TYPE_31__* %20, %struct.TYPE_31__** %6, align 8
  %21 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %22 = load i32, i32* @ngx_stream_core_module, align 4
  %23 = call i8* @ngx_stream_get_module_srv_conf(%struct.TYPE_41__* %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_43__*
  store %struct.TYPE_43__* %24, %struct.TYPE_43__** %9, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOCK_STREAM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %37 = call i64 @ngx_tcp_nodelay(%struct.TYPE_31__* %36)
  %38 = load i64, i64* @NGX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %42 = call i32 @ngx_stream_proxy_next_upstream(%struct.TYPE_41__* %41)
  br label %373

43:                                               ; preds = %35, %30, %1
  %44 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %45 = load i32, i32* @ngx_stream_proxy_module, align 4
  %46 = call i8* @ngx_stream_get_module_srv_conf(%struct.TYPE_41__* %44, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %47, %struct.TYPE_42__** %10, align 8
  %48 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %49, align 8
  store %struct.TYPE_31__* %50, %struct.TYPE_31__** %5, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NGX_LOG_INFO, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %43
  %59 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %12, align 8
  %62 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %13, align 8
  %63 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %64 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %67 = call i64 @ngx_connection_local_sockaddr(%struct.TYPE_31__* %66, %struct.TYPE_44__* %11, i32 1)
  %68 = load i64, i64* @NGX_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %58
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %7, align 8
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* @NGX_LOG_INFO, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %82, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SOCK_DGRAM, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ngx_log_error(i64 %80, %struct.TYPE_36__* %83, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %90, %struct.TYPE_44__* %11, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 1
  store i32* %96, i32** %100, align 8
  br label %101

101:                                              ; preds = %70, %58
  %102 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %102)
  br label %103

103:                                              ; preds = %101, %43
  %104 = load i64, i64* @ngx_current_msec, align 8
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %109, i32 0, i32 9
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 1
  %116 = load i32 (%struct.TYPE_33__*, i32, i32)*, i32 (%struct.TYPE_33__*, i32, i32)** %115, align 8
  %117 = icmp ne i32 (%struct.TYPE_33__*, i32, i32)* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %103
  %119 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_33__*, i32, i32)*, i32 (%struct.TYPE_33__*, i32, i32)** %121, align 8
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %123, i32 0, i32 7
  %125 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NGX_STREAM_UPSTREAM_NOTIFY_CONNECT, align 4
  %130 = call i32 %122(%struct.TYPE_33__* %124, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %118, %103
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %173

137:                                              ; preds = %131
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32* @ngx_pnalloc(i32 %140, i32 %143)
  store i32* %144, i32** %3, align 8
  %145 = load i32*, i32** %3, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %149 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %150 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_41__* %148, i32 %149)
  br label %373

151:                                              ; preds = %137
  %152 = load i32*, i32** %3, align 8
  %153 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 3
  store i32* %152, i32** %155, align 8
  %156 = load i32*, i32** %3, align 8
  %157 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 2
  store i32* %161, i32** %164, align 8
  %165 = load i32*, i32** %3, align 8
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 1
  store i32* %165, i32** %168, align 8
  %169 = load i32*, i32** %3, align 8
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 0
  store i32* %169, i32** %172, align 8
  br label %173

173:                                              ; preds = %151, %131
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %175, align 8
  %177 = icmp ne %struct.TYPE_39__* %176, null
  br i1 %177, label %178, label %244

178:                                              ; preds = %173
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %183, %188
  br i1 %189, label %190, label %244

190:                                              ; preds = %178
  %191 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %193, align 8
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_39__*, %struct.TYPE_39__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %199, %204
  %206 = call i32 @ngx_log_debug1(i32 %191, %struct.TYPE_36__* %194, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %205)
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %210, i32 0, i32 5
  %212 = call %struct.TYPE_32__* @ngx_chain_get_free_buf(i32 %209, i32* %211)
  store %struct.TYPE_32__* %212, %struct.TYPE_32__** %4, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %214 = icmp eq %struct.TYPE_32__* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %190
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %217 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %218 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_41__* %216, i32 %217)
  br label %373

219:                                              ; preds = %190
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_39__*, %struct.TYPE_39__** %221, align 8
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_39__*, %struct.TYPE_39__** %224, align 8
  %226 = bitcast %struct.TYPE_39__* %222 to i8*
  %227 = bitcast %struct.TYPE_39__* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 40, i1 false)
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_39__*, %struct.TYPE_39__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 4
  store i8* bitcast (i32* @ngx_stream_proxy_module to i8*), i8** %231, align 8
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 2
  store i32 1, i32* %235, align 8
  %236 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %236, i32 0, i32 4
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %237, align 8
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 0
  store %struct.TYPE_32__* %238, %struct.TYPE_32__** %240, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %242 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %242, i32 0, i32 4
  store %struct.TYPE_32__* %241, %struct.TYPE_32__** %243, align 8
  br label %244

244:                                              ; preds = %219, %178, %173
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %332

249:                                              ; preds = %244
  %250 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %251, i32 0, i32 4
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %252, align 8
  %254 = call i32 @ngx_log_debug0(i32 %250, %struct.TYPE_36__* %253, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %258, i32 0, i32 5
  %260 = call %struct.TYPE_32__* @ngx_chain_get_free_buf(i32 %257, i32* %259)
  store %struct.TYPE_32__* %260, %struct.TYPE_32__** %4, align 8
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %262 = icmp eq %struct.TYPE_32__* %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %249
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %265 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %266 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_41__* %264, i32 %265)
  br label %373

267:                                              ; preds = %249
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @NGX_PROXY_PROTOCOL_MAX_HEADER, align 4
  %272 = call i32* @ngx_pnalloc(i32 %270, i32 %271)
  store i32* %272, i32** %3, align 8
  %273 = load i32*, i32** %3, align 8
  %274 = icmp eq i32* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %277 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %278 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_41__* %276, i32 %277)
  br label %373

279:                                              ; preds = %267
  %280 = load i32*, i32** %3, align 8
  %281 = ptrtoint i32* %280 to i64
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_39__*, %struct.TYPE_39__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %284, i32 0, i32 0
  store i64 %281, i64* %285, align 8
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %287 = load i32*, i32** %3, align 8
  %288 = load i32*, i32** %3, align 8
  %289 = load i32, i32* @NGX_PROXY_PROTOCOL_MAX_HEADER, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = call i32* @ngx_proxy_protocol_write(%struct.TYPE_31__* %286, i32* %287, i32* %291)
  store i32* %292, i32** %3, align 8
  %293 = load i32*, i32** %3, align 8
  %294 = icmp eq i32* %293, null
  br i1 %294, label %295, label %299

295:                                              ; preds = %279
  %296 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %297 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %298 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_41__* %296, i32 %297)
  br label %373

299:                                              ; preds = %279
  %300 = load i32*, i32** %3, align 8
  %301 = ptrtoint i32* %300 to i64
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_39__*, %struct.TYPE_39__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %304, i32 0, i32 1
  store i64 %301, i64* %305, align 8
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_39__*, %struct.TYPE_39__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %308, i32 0, i32 3
  store i32 1, i32* %309, align 4
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %312, i32 0, i32 2
  store i32 0, i32* %313, align 8
  %314 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_39__*, %struct.TYPE_39__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %316, i32 0, i32 5
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_39__*, %struct.TYPE_39__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %320, i32 0, i32 4
  store i8* bitcast (i32* @ngx_stream_proxy_module to i8*), i8** %321, align 8
  %322 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %322, i32 0, i32 4
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %323, align 8
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %325, i32 0, i32 0
  store %struct.TYPE_32__* %324, %struct.TYPE_32__** %326, align 8
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %328 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %328, i32 0, i32 4
  store %struct.TYPE_32__* %327, %struct.TYPE_32__** %329, align 8
  %330 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %330, i32 0, i32 3
  store i64 0, i64* %331, align 8
  br label %332

332:                                              ; preds = %299, %244
  %333 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %334 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = call i8* @ngx_stream_complex_value_size(%struct.TYPE_41__* %333, i32 %336, i32 0)
  %338 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %338, i32 0, i32 2
  store i8* %337, i8** %339, align 8
  %340 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %341 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = call i8* @ngx_stream_complex_value_size(%struct.TYPE_41__* %340, i32 %343, i32 0)
  %345 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %345, i32 0, i32 1
  store i8* %344, i8** %346, align 8
  %347 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %347, i32 0, i32 0
  store i32 1, i32* %348, align 8
  %349 = load i8*, i8** @ngx_stream_proxy_upstream_handler, align 8
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_35__*, %struct.TYPE_35__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %352, i32 0, i32 1
  store i8* %349, i8** %353, align 8
  %354 = load i8*, i8** @ngx_stream_proxy_upstream_handler, align 8
  %355 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i32 0, i32 0
  store i8* %354, i8** %358, align 8
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_35__*, %struct.TYPE_35__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %332
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_35__*, %struct.TYPE_35__** %367, align 8
  %369 = call i32 @ngx_post_event(%struct.TYPE_35__* %368, i32* @ngx_posted_events)
  br label %370

370:                                              ; preds = %365, %332
  %371 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %372 = call i32 @ngx_stream_proxy_process(%struct.TYPE_41__* %371, i32 0, i32 1)
  br label %373

373:                                              ; preds = %370, %295, %275, %263, %215, %147, %40
  ret void
}

declare dso_local i8* @ngx_stream_get_module_srv_conf(%struct.TYPE_41__*, i32) #1

declare dso_local i64 @ngx_tcp_nodelay(%struct.TYPE_31__*) #1

declare dso_local i32 @ngx_stream_proxy_next_upstream(%struct.TYPE_41__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ngx_connection_local_sockaddr(%struct.TYPE_31__*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @ngx_log_error(i64, %struct.TYPE_36__*, i32, i8*, i8*, %struct.TYPE_44__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_36__*, i32, i8*, i64) #1

declare dso_local %struct.TYPE_32__* @ngx_chain_get_free_buf(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_36__*, i32, i8*) #1

declare dso_local i32* @ngx_proxy_protocol_write(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i8* @ngx_stream_complex_value_size(%struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_35__*, i32*) #1

declare dso_local i32 @ngx_stream_proxy_process(%struct.TYPE_41__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
