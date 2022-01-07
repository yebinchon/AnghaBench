; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_listen.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_39__*, %struct.TYPE_35__*, i32, i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, %struct.TYPE_41__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_42__ = type { i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_41__, i32, i32, i32, %struct.TYPE_40__*, i8*, i8*, i32, %struct.TYPE_41__, i64 }
%struct.TYPE_40__ = type { %struct.TYPE_41__, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64, %struct.TYPE_42__* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s in \22%V\22 of the \22listen\22 directive\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_LISTEN_BACKLOG = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"backlog=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid backlog \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rcvbuf=\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid rcvbuf \22%V\22\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sndbuf=\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid sndbuf \22%V\22\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ipv6only=o\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"bind ipv6only is not supported on this platform\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"reuseport\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"reuseport is not supported on this platform, ignored\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"the \22ssl\22 parameter requires ngx_stream_ssl_module\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"so_keepalive=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.18 = private unnamed_addr constant [73 x i8] c"the \22so_keepalive\22 parameter accepts only \22on\22 or \22off\22 on this platform\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"proxy_protocol\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"the invalid \22%V\22 parameter\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"\22backlog\22 parameter is incompatible with \22udp\22\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"\22so_keepalive\22 parameter is incompatible with \22udp\22\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"\22proxy_protocol\22 parameter is incompatible with \22udp\22\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"duplicate \22%V\22 address and port pair\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_stream_ssl_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_34__*, i32*, i8*)* @ngx_stream_core_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_core_listen(%struct.TYPE_34__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca %struct.TYPE_41__, align 8
  %11 = alloca %struct.TYPE_42__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_42__*, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %19, %struct.TYPE_32__** %8, align 8
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  store %struct.TYPE_41__* %26, %struct.TYPE_41__** %9, align 8
  %27 = call i32 @ngx_memzero(%struct.TYPE_42__* %11, i32 168)
  %28 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 21
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %29, i64 1
  %31 = bitcast %struct.TYPE_41__* %28 to i8*
  %32 = bitcast %struct.TYPE_41__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ngx_parse_url(i32 %36, %struct.TYPE_42__* %11)
  %38 = load i64, i64* @NGX_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 22
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @NGX_LOG_EMERG, align 4
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 22
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 21
  %50 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %45, %struct.TYPE_34__* %46, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %48, %struct.TYPE_41__* %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %52, i8** %4, align 8
  br label %500

53:                                               ; preds = %3
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %55 = load i32, i32* @ngx_stream_core_module, align 4
  %56 = call %struct.TYPE_33__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_34__* %54, i32 %55)
  store %struct.TYPE_33__* %56, %struct.TYPE_33__** %17, align 8
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.TYPE_42__* @ngx_array_push_n(%struct.TYPE_37__* %58, i64 %60)
  store %struct.TYPE_42__* %61, %struct.TYPE_42__** %15, align 8
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %63 = icmp eq %struct.TYPE_42__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %65, i8** %4, align 8
  br label %500

66:                                               ; preds = %53
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %68 = call i32 @ngx_memzero(%struct.TYPE_42__* %67, i32 168)
  %69 = load i64, i64* @NGX_LISTEN_BACKLOG, align 8
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %72, i32 0, i32 3
  store i32 -1, i32* %73, align 8
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %74, i32 0, i32 4
  store i32 -1, i32* %75, align 4
  %76 = load i64, i64* @SOCK_STREAM, align 8
  %77 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %77, i32 0, i32 5
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %82, i32 0, i32 20
  store i32 %81, i32* %83, align 8
  store i64 0, i64* %14, align 8
  store i64 2, i64* %12, align 8
  br label %84

84:                                               ; preds = %347, %66
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %85, %90
  br i1 %91, label %92, label %350

92:                                               ; preds = %84
  %93 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %96, align 8
  %98 = call i64 @ngx_strcmp(%struct.TYPE_41__* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i64, i64* @SOCK_DGRAM, align 8
  %102 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %102, i32 0, i32 5
  store i64 %101, i64* %103, align 8
  br label %347

104:                                              ; preds = %92
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %108, align 8
  %110 = call i64 @ngx_strcmp(%struct.TYPE_41__* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %113, i32 0, i32 7
  store i32 1, i32* %114, align 4
  br label %347

115:                                              ; preds = %104
  %116 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_41__*, %struct.TYPE_41__** %119, align 8
  %121 = call i64 @ngx_strncmp(%struct.TYPE_41__* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %161

123:                                              ; preds = %115
  %124 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_41__*, %struct.TYPE_41__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %128, i64 8
  %130 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 8
  %136 = call i8* @ngx_atoi(%struct.TYPE_41__* %129, i32 %135)
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 7
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @NGX_ERROR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %123
  %148 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147, %123
  %153 = load i32, i32* @NGX_LOG_EMERG, align 4
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %155 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %155, i64 %156
  %158 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %153, %struct.TYPE_34__* %154, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_41__* %157)
  %159 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %159, i8** %4, align 8
  br label %500

160:                                              ; preds = %147
  store i64 1, i64* %14, align 8
  br label %347

161:                                              ; preds = %115
  %162 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %165, align 8
  %167 = call i64 @ngx_strncmp(%struct.TYPE_41__* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %205

169:                                              ; preds = %161
  %170 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 7
  %176 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  %177 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %181, i64 7
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  store %struct.TYPE_41__* %182, %struct.TYPE_41__** %183, align 8
  %184 = call i8* @ngx_parse_size(%struct.TYPE_41__* %10)
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %188, i32 0, i32 7
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @NGX_ERROR, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %169
  %197 = load i32, i32* @NGX_LOG_EMERG, align 4
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i64 %200
  %202 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %197, %struct.TYPE_34__* %198, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_41__* %201)
  %203 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %203, i8** %4, align 8
  br label %500

204:                                              ; preds = %169
  br label %347

205:                                              ; preds = %161
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_41__*, %struct.TYPE_41__** %209, align 8
  %211 = call i64 @ngx_strncmp(%struct.TYPE_41__* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %249

213:                                              ; preds = %205
  %214 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %215 = load i64, i64* %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 7
  %220 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  store i32 %219, i32* %220, align 8
  %221 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %222 = load i64, i64* %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_41__*, %struct.TYPE_41__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %225, i64 7
  %227 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  store %struct.TYPE_41__* %226, %struct.TYPE_41__** %227, align 8
  %228 = call i8* @ngx_parse_size(%struct.TYPE_41__* %10)
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %232, i32 0, i32 7
  store i32 1, i32* %233, align 4
  %234 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* @NGX_ERROR, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %213
  %241 = load i32, i32* @NGX_LOG_EMERG, align 4
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %243 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %244 = load i64, i64* %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %243, i64 %244
  %246 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %241, %struct.TYPE_34__* %242, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_41__* %245)
  %247 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %247, i8** %4, align 8
  br label %500

248:                                              ; preds = %213
  br label %347

249:                                              ; preds = %205
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %251 = load i64, i64* %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_41__*, %struct.TYPE_41__** %253, align 8
  %255 = call i64 @ngx_strncmp(%struct.TYPE_41__* %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 10)
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %249
  %258 = load i32, i32* @NGX_LOG_EMERG, align 4
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %260 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %258, %struct.TYPE_34__* %259, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %261 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %261, i8** %4, align 8
  br label %500

262:                                              ; preds = %249
  %263 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %264 = load i64, i64* %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** %266, align 8
  %268 = call i64 @ngx_strcmp(%struct.TYPE_41__* %267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %262
  %271 = load i32, i32* @NGX_LOG_EMERG, align 4
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %273 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %271, %struct.TYPE_34__* %272, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  br label %347

274:                                              ; preds = %262
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %276 = load i64, i64* %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_41__*, %struct.TYPE_41__** %278, align 8
  %280 = call i64 @ngx_strcmp(%struct.TYPE_41__* %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %274
  %283 = load i32, i32* @NGX_LOG_EMERG, align 4
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %285 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %283, %struct.TYPE_34__* %284, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %286 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %286, i8** %4, align 8
  br label %500

287:                                              ; preds = %274
  %288 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %289 = load i64, i64* %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_41__*, %struct.TYPE_41__** %291, align 8
  %293 = call i64 @ngx_strncmp(%struct.TYPE_41__* %292, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 13)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %328

295:                                              ; preds = %287
  %296 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %297 = load i64, i64* %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_41__*, %struct.TYPE_41__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %300, i64 13
  %302 = call i64 @ngx_strcmp(%struct.TYPE_41__* %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %295
  %305 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %305, i32 0, i32 10
  store i32 1, i32* %306, align 8
  br label %325

307:                                              ; preds = %295
  %308 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %309 = load i64, i64* %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_41__*, %struct.TYPE_41__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %312, i64 13
  %314 = call i64 @ngx_strcmp(%struct.TYPE_41__* %313, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %307
  %317 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %317, i32 0, i32 10
  store i32 2, i32* %318, align 8
  br label %324

319:                                              ; preds = %307
  %320 = load i32, i32* @NGX_LOG_EMERG, align 4
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %322 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %320, %struct.TYPE_34__* %321, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.18, i64 0, i64 0))
  %323 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %323, i8** %4, align 8
  br label %500

324:                                              ; preds = %316
  br label %325

325:                                              ; preds = %324, %304
  %326 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %326, i32 0, i32 7
  store i32 1, i32* %327, align 4
  br label %347

328:                                              ; preds = %287
  %329 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %330 = load i64, i64* %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_41__*, %struct.TYPE_41__** %332, align 8
  %334 = call i64 @ngx_strcmp(%struct.TYPE_41__* %333, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %328
  %337 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %337, i32 0, i32 12
  store i32 1, i32* %338, align 8
  br label %347

339:                                              ; preds = %328
  %340 = load i32, i32* @NGX_LOG_EMERG, align 4
  %341 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %342 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %343 = load i64, i64* %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %342, i64 %343
  %345 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %340, %struct.TYPE_34__* %341, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_41__* %344)
  %346 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %346, i8** %4, align 8
  br label %500

347:                                              ; preds = %336, %325, %270, %248, %204, %160, %112, %100
  %348 = load i64, i64* %12, align 8
  %349 = add i64 %348, 1
  store i64 %349, i64* %12, align 8
  br label %84

350:                                              ; preds = %84
  %351 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %352 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %351, i32 0, i32 5
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @SOCK_DGRAM, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %373

356:                                              ; preds = %350
  %357 = load i64, i64* %14, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i8** %4, align 8
  br label %500

360:                                              ; preds = %356
  %361 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %362 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0), i8** %4, align 8
  br label %500

366:                                              ; preds = %360
  %367 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %367, i32 0, i32 12
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i8** %4, align 8
  br label %500

372:                                              ; preds = %366
  br label %373

373:                                              ; preds = %372, %350
  %374 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %375 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_42__*, %struct.TYPE_42__** %376, align 8
  store %struct.TYPE_42__* %377, %struct.TYPE_42__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %378

378:                                              ; preds = %495, %373
  %379 = load i64, i64* %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ult i64 %379, %381
  br i1 %382, label %383, label %498

383:                                              ; preds = %378
  %384 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %385 = load i64, i64* %13, align 8
  %386 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %384, i64 %385
  %387 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %388 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %387, i64 0
  %389 = bitcast %struct.TYPE_42__* %386 to i8*
  %390 = bitcast %struct.TYPE_42__* %388 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %389, i8* align 8 %390, i64 168, i1 false)
  %391 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 17
  %392 = load %struct.TYPE_40__*, %struct.TYPE_40__** %391, align 8
  %393 = load i64, i64* %13, align 8
  %394 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %392, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %398 = load i64, i64* %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %399, i32 0, i32 15
  store i32 %396, i32* %400, align 4
  %401 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 17
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** %401, align 8
  %403 = load i64, i64* %13, align 8
  %404 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %408 = load i64, i64* %13, align 8
  %409 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %407, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %409, i32 0, i32 14
  store i32 %406, i32* %410, align 8
  %411 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %412 = load i64, i64* %13, align 8
  %413 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %411, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %413, i32 0, i32 13
  %415 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 17
  %416 = load %struct.TYPE_40__*, %struct.TYPE_40__** %415, align 8
  %417 = load i64, i64* %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %416, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %418, i32 0, i32 0
  %420 = bitcast %struct.TYPE_41__* %414 to i8*
  %421 = bitcast %struct.TYPE_41__* %419 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %420, i8* align 8 %421, i64 16, i1 false)
  %422 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %423 = load i64, i64* %13, align 8
  %424 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %422, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %424, i32 0, i32 15
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @ngx_inet_wildcard(i32 %426)
  %428 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %429 = load i64, i64* %13, align 8
  %430 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %428, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %430, i32 0, i32 16
  store i32 %427, i32* %431, align 8
  store i64 0, i64* %12, align 8
  br label %432

432:                                              ; preds = %491, %383
  %433 = load i64, i64* %12, align 8
  %434 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %435 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %11, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = sub i64 %437, %439
  %441 = load i64, i64* %13, align 8
  %442 = add i64 %440, %441
  %443 = icmp ult i64 %433, %442
  br i1 %443, label %444, label %494

444:                                              ; preds = %432
  %445 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %446 = load i64, i64* %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %445, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %447, i32 0, i32 5
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %451 = load i64, i64* %12, align 8
  %452 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %450, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 5
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %449, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %444
  br label %491

457:                                              ; preds = %444
  %458 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %459 = load i64, i64* %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %458, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %460, i32 0, i32 15
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %464 = load i64, i64* %12, align 8
  %465 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %465, i32 0, i32 14
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %469 = load i64, i64* %13, align 8
  %470 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %468, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %470, i32 0, i32 15
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %474 = load i64, i64* %13, align 8
  %475 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %473, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %475, i32 0, i32 14
  %477 = load i32, i32* %476, align 8
  %478 = call i64 @ngx_cmp_sockaddr(i32 %462, i32 %467, i32 %472, i32 %477, i32 1)
  %479 = load i64, i64* @NGX_OK, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %457
  br label %491

482:                                              ; preds = %457
  %483 = load i32, i32* @NGX_LOG_EMERG, align 4
  %484 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %485 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %486 = load i64, i64* %13, align 8
  %487 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %485, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %487, i32 0, i32 13
  %489 = call i32 (i32, %struct.TYPE_34__*, i32, i8*, ...) @ngx_conf_log_error(i32 %483, %struct.TYPE_34__* %484, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_41__* %488)
  %490 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %490, i8** %4, align 8
  br label %500

491:                                              ; preds = %481, %456
  %492 = load i64, i64* %12, align 8
  %493 = add i64 %492, 1
  store i64 %493, i64* %12, align 8
  br label %432

494:                                              ; preds = %432
  br label %495

495:                                              ; preds = %494
  %496 = load i64, i64* %13, align 8
  %497 = add i64 %496, 1
  store i64 %497, i64* %13, align 8
  br label %378

498:                                              ; preds = %378
  %499 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %499, i8** %4, align 8
  br label %500

500:                                              ; preds = %498, %482, %371, %365, %359, %339, %319, %282, %257, %240, %196, %152, %64, %51
  %501 = load i8*, i8** %4, align 8
  ret i8* %501
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_42__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_42__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_34__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_33__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_42__* @ngx_array_push_n(%struct.TYPE_37__*, i64) #1

declare dso_local i64 @ngx_strcmp(%struct.TYPE_41__*, i8*) #1

declare dso_local i64 @ngx_strncmp(%struct.TYPE_41__*, i8*, i32) #1

declare dso_local i8* @ngx_atoi(%struct.TYPE_41__*, i32) #1

declare dso_local i8* @ngx_parse_size(%struct.TYPE_41__*) #1

declare dso_local i32 @ngx_inet_wildcard(i32) #1

declare dso_local i64 @ngx_cmp_sockaddr(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
