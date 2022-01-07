; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_listen.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_25__*, i32, i32, i8*, i8*, %struct.TYPE_26__, i64 }
%struct.TYPE_25__ = type { i32, i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s in \22%V\22 of the \22listen\22 directive\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"default_server\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"backlog=\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid backlog \22%V\22\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rcvbuf=\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid rcvbuf \22%V\22\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sndbuf=\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid sndbuf \22%V\22\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"accept_filter=\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"accept filters \22%V\22 are not supported on this platform, ignored\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"the deferred accept is not supported on this platform, ignored\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ipv6only=o\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"ipv6only is not supported on this platform\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"reuseport\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"reuseport is not supported on this platform, ignored\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"the \22ssl\22 parameter requires ngx_http_ssl_module\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"http2\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"the \22http2\22 parameter requires ngx_http_v2_module\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"spdy\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [84 x i8] c"invalid parameter \22spdy\22: ngx_http_spdy_module was superseded by ngx_http_v2_module\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"so_keepalive=\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"the \22so_keepalive\22 parameter accepts only \22on\22 or \22off\22 on this platform\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"proxy_protocol\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_29__*, i32*, i8*)* @ngx_http_core_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_listen(%struct.TYPE_29__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %8, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %9, align 8
  %23 = call i32 @ngx_memzero(%struct.TYPE_27__* %11, i32 160)
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 27
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i64 1
  %27 = bitcast %struct.TYPE_26__* %24 to i8*
  %28 = bitcast %struct.TYPE_26__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  store i32 80, i32* %30, align 4
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ngx_parse_url(i32 %33, %struct.TYPE_27__* %11)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 28
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @NGX_LOG_EMERG, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 28
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 27
  %47 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %42, %struct.TYPE_29__* %43, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %45, %struct.TYPE_26__* %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %49, i8** %4, align 8
  br label %413

50:                                               ; preds = %3
  %51 = call i32 @ngx_memzero(%struct.TYPE_27__* %13, i32 160)
  %52 = load i32, i32* @NGX_LISTEN_BACKLOG, align 4
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 3
  store i32 -1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 4
  store i32 -1, i32* %55, align 8
  store i64 2, i64* %12, align 8
  br label %56

56:                                               ; preds = %365, %50
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %64, label %368

64:                                               ; preds = %56
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  %70 = call i64 @ngx_strcmp(%struct.TYPE_26__* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %76, align 8
  %78 = call i64 @ngx_strcmp(%struct.TYPE_26__* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %64
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 8
  store i32 1, i32* %81, align 8
  br label %365

82:                                               ; preds = %72
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = call i64 @ngx_strcmp(%struct.TYPE_26__* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 9
  store i32 1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 10
  store i32 1, i32* %92, align 8
  br label %365

93:                                               ; preds = %82
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = call i64 @ngx_strncmp(%struct.TYPE_26__* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %93
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i64 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 8
  %114 = call i8* @ngx_atoi(%struct.TYPE_26__* %107, i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 9
  store i32 1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 10
  store i32 1, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NGX_ERROR, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %101
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123, %101
  %128 = load i32, i32* @NGX_LOG_EMERG, align 4
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i64 %131
  %133 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %128, %struct.TYPE_29__* %129, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_26__* %132)
  %134 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %134, i8** %4, align 8
  br label %413

135:                                              ; preds = %123
  br label %365

136:                                              ; preds = %93
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %140, align 8
  %142 = call i64 @ngx_strncmp(%struct.TYPE_26__* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %136
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 7
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i64 7
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  store %struct.TYPE_26__* %157, %struct.TYPE_26__** %158, align 8
  %159 = call i8* @ngx_parse_size(%struct.TYPE_26__* %10)
  %160 = ptrtoint i8* %159 to i32
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 3
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 9
  store i32 1, i32* %162, align 4
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 10
  store i32 1, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NGX_ERROR, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %144
  %169 = load i32, i32* @NGX_LOG_EMERG, align 4
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i64 %172
  %174 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %169, %struct.TYPE_29__* %170, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_26__* %173)
  %175 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %175, i8** %4, align 8
  br label %413

176:                                              ; preds = %144
  br label %365

177:                                              ; preds = %136
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %181, align 8
  %183 = call i64 @ngx_strncmp(%struct.TYPE_26__* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %177
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 7
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i32 %191, i32* %192, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %194 = load i64, i64* %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i64 7
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  store %struct.TYPE_26__* %198, %struct.TYPE_26__** %199, align 8
  %200 = call i8* @ngx_parse_size(%struct.TYPE_26__* %10)
  %201 = ptrtoint i8* %200 to i32
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 4
  store i32 %201, i32* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 9
  store i32 1, i32* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 10
  store i32 1, i32* %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @NGX_ERROR, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %185
  %210 = load i32, i32* @NGX_LOG_EMERG, align 4
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %213 = load i64, i64* %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i64 %213
  %215 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %210, %struct.TYPE_29__* %211, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_26__* %214)
  %216 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %216, i8** %4, align 8
  br label %413

217:                                              ; preds = %185
  br label %365

218:                                              ; preds = %177
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %220 = load i64, i64* %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %222, align 8
  %224 = call i64 @ngx_strncmp(%struct.TYPE_26__* %223, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 14)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %218
  %227 = load i32, i32* @NGX_LOG_EMERG, align 4
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %230 = load i64, i64* %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i64 %230
  %232 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %227, %struct.TYPE_29__* %228, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_26__* %231)
  br label %365

233:                                              ; preds = %218
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %235 = load i64, i64* %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %237, align 8
  %239 = call i64 @ngx_strcmp(%struct.TYPE_26__* %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %233
  %242 = load i32, i32* @NGX_LOG_EMERG, align 4
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %244 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %242, %struct.TYPE_29__* %243, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0))
  br label %365

245:                                              ; preds = %233
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %247 = load i64, i64* %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %249, align 8
  %251 = call i64 @ngx_strncmp(%struct.TYPE_26__* %250, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %245
  %254 = load i32, i32* @NGX_LOG_EMERG, align 4
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %256 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %254, %struct.TYPE_29__* %255, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  %257 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %257, i8** %4, align 8
  br label %413

258:                                              ; preds = %245
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %260 = load i64, i64* %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %262, align 8
  %264 = call i64 @ngx_strcmp(%struct.TYPE_26__* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %258
  %267 = load i32, i32* @NGX_LOG_EMERG, align 4
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %269 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %267, %struct.TYPE_29__* %268, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0))
  br label %365

270:                                              ; preds = %258
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %272 = load i64, i64* %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %274, align 8
  %276 = call i64 @ngx_strcmp(%struct.TYPE_26__* %275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %270
  %279 = load i32, i32* @NGX_LOG_EMERG, align 4
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %281 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %279, %struct.TYPE_29__* %280, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0))
  %282 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %282, i8** %4, align 8
  br label %413

283:                                              ; preds = %270
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %285 = load i64, i64* %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %287, align 8
  %289 = call i64 @ngx_strcmp(%struct.TYPE_26__* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %283
  %292 = load i32, i32* @NGX_LOG_EMERG, align 4
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %294 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %292, %struct.TYPE_29__* %293, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %295 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %295, i8** %4, align 8
  br label %413

296:                                              ; preds = %283
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %298 = load i64, i64* %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %300, align 8
  %302 = call i64 @ngx_strcmp(%struct.TYPE_26__* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %296
  %305 = load i32, i32* @NGX_LOG_WARN, align 4
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %307 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %305, %struct.TYPE_29__* %306, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.23, i64 0, i64 0))
  br label %365

308:                                              ; preds = %296
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %310 = load i64, i64* %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %312, align 8
  %314 = call i64 @ngx_strncmp(%struct.TYPE_26__* %313, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 13)
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %347

316:                                              ; preds = %308
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %318 = load i64, i64* %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i64 13
  %323 = call i64 @ngx_strcmp(%struct.TYPE_26__* %322, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %316
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 16
  store i32 1, i32* %326, align 8
  br label %344

327:                                              ; preds = %316
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %329 = load i64, i64* %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i64 13
  %334 = call i64 @ngx_strcmp(%struct.TYPE_26__* %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %327
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 16
  store i32 2, i32* %337, align 8
  br label %343

338:                                              ; preds = %327
  %339 = load i32, i32* @NGX_LOG_EMERG, align 4
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %341 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %339, %struct.TYPE_29__* %340, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.27, i64 0, i64 0))
  %342 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %342, i8** %4, align 8
  br label %413

343:                                              ; preds = %336
  br label %344

344:                                              ; preds = %343, %325
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 9
  store i32 1, i32* %345, align 4
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 10
  store i32 1, i32* %346, align 8
  br label %365

347:                                              ; preds = %308
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %349 = load i64, i64* %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %351, align 8
  %353 = call i64 @ngx_strcmp(%struct.TYPE_26__* %352, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %347
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 18
  store i32 1, i32* %356, align 8
  br label %365

357:                                              ; preds = %347
  %358 = load i32, i32* @NGX_LOG_EMERG, align 4
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %361 = load i64, i64* %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i64 %361
  %363 = call i32 (i32, %struct.TYPE_29__*, i32, i8*, ...) @ngx_conf_log_error(i32 %358, %struct.TYPE_29__* %359, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), %struct.TYPE_26__* %362)
  %364 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %364, i8** %4, align 8
  br label %413

365:                                              ; preds = %355, %344, %304, %266, %241, %226, %217, %176, %135, %90, %80
  %366 = load i64, i64* %12, align 8
  %367 = add i64 %366, 1
  store i64 %367, i64* %12, align 8
  br label %56

368:                                              ; preds = %56
  store i64 0, i64* %12, align 8
  br label %369

369:                                              ; preds = %408, %368
  %370 = load i64, i64* %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 19
  %372 = load i64, i64* %371, align 8
  %373 = icmp ult i64 %370, %372
  br i1 %373, label %374, label %411

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 22
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %375, align 8
  %377 = load i64, i64* %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 20
  store i32 %380, i32* %381, align 8
  %382 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 22
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %382, align 8
  %384 = load i64, i64* %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 24
  store i32 %387, i32* %388, align 4
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 22
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %389, align 8
  %391 = load i64, i64* %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 23
  store i32 %394, i32* %395, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 20
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @ngx_inet_wildcard(i32 %397)
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 21
  store i32 %398, i32* %399, align 4
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %402 = call i64 @ngx_http_add_listen(%struct.TYPE_29__* %400, %struct.TYPE_28__* %401, %struct.TYPE_27__* %13)
  %403 = load i64, i64* @NGX_OK, align 8
  %404 = icmp ne i64 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %374
  %406 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %406, i8** %4, align 8
  br label %413

407:                                              ; preds = %374
  br label %408

408:                                              ; preds = %407
  %409 = load i64, i64* %12, align 8
  %410 = add i64 %409, 1
  store i64 %410, i64* %12, align 8
  br label %369

411:                                              ; preds = %369
  %412 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %412, i8** %4, align 8
  br label %413

413:                                              ; preds = %411, %405, %357, %338, %291, %278, %253, %209, %168, %127, %48
  %414 = load i8*, i8** %4, align 8
  ret i8* %414
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_27__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_29__*, i32, i8*, ...) #1

declare dso_local i64 @ngx_strcmp(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @ngx_strncmp(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i8* @ngx_atoi(%struct.TYPE_26__*, i32) #1

declare dso_local i8* @ngx_parse_size(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_inet_wildcard(i32) #1

declare dso_local i64 @ngx_http_add_listen(%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
