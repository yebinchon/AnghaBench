; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_v2_read.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_v2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_14__, i8*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32*, i8* }
%struct.TYPE_13__ = type { i32*, i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i8* }
%struct.TYPE_15__ = type { i32, i32, i8* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unknown PROXY protocol version: %ui\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"header is too large\00", align 1
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PROXY protocol v2 unsupported command %ui\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"PROXY protocol v2 unsupported transport %ui\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"PROXY protocol v2 unsupported address family %ui\00", align 1
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"PROXY protocol v2 src: %V %d, dst: %V %d\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"PROXY protocol v2 %z bytes of tlv ignored\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_22__*, i32*, i32*)* @ngx_proxy_protocol_v2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_proxy_protocol_v2_read(%struct.TYPE_22__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %18, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 12
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @NGX_LOG_ERR, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32* null, i32** %4, align 8
  br label %251

37:                                               ; preds = %3
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @ngx_proxy_protocol_parse_uint16(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %9, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = load i32, i32* @NGX_LOG_ERR, align 4
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %52, i32 %55, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %251

57:                                               ; preds = %37
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %8, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @ngx_log_debug1(i32 %68, i32 %71, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %8, align 8
  store i32* %74, i32** %4, align 8
  br label %251

75:                                               ; preds = %57
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @ngx_log_debug1(i32 %83, i32 %86, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %8, align 8
  store i32* %89, i32** %4, align 8
  br label %251

90:                                               ; preds = %75
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_18__* @ngx_pcalloc(i32 %93, i32 48)
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %17, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %96 = icmp eq %struct.TYPE_18__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32* null, i32** %4, align 8
  br label %251

98:                                               ; preds = %90
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 4
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  switch i32 %103, label %152 [
    i32 129, label %104
  ]

104:                                              ; preds = %98
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = icmp ult i64 %110, 16
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i32* null, i32** %4, align 8
  br label %251

113:                                              ; preds = %104
  %114 = load i32*, i32** %6, align 8
  %115 = bitcast i32* %114 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %19, align 8
  %116 = load i8*, i8** @AF_INET, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memcpy(i32* %122, i32 %125, i32 4)
  %127 = load i8*, i8** @AF_INET, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @memcpy(i32* %133, i32 %136, i32 4)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @ngx_proxy_protocol_parse_uint16(i32 %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @ngx_proxy_protocol_parse_uint16(i32 %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  store i32 4, i32* %10, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 16
  store i32* %151, i32** %6, align 8
  br label %160

152:                                              ; preds = %98
  %153 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @ngx_log_debug1(i32 %153, i32 %156, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %8, align 8
  store i32* %159, i32** %4, align 8
  br label %251

160:                                              ; preds = %113
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %165 = call i8* @ngx_pnalloc(i32 %163, i32 %164)
  %166 = bitcast i8* %165 to i32*
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  store i32* %166, i32** %169, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %160
  store i32* null, i32** %4, align 8
  br label %251

176:                                              ; preds = %160
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %184 = call i8* @ngx_sock_ntop(i32* %177, i32 %178, i32* %182, i32 %183, i32 0)
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  store i8* %184, i8** %187, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %192 = call i8* @ngx_pnalloc(i32 %190, i32 %191)
  %193 = bitcast i8* %192 to i32*
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32* %193, i32** %196, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %176
  store i32* null, i32** %4, align 8
  br label %251

203:                                              ; preds = %176
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %211 = call i8* @ngx_sock_ntop(i32* %204, i32 %205, i32* %209, i32 %210, i32 0)
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  store i8* %211, i8** %214, align 8
  %215 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @ngx_log_debug4(i32 %215, i32 %218, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %220, i8* %223, %struct.TYPE_14__* %225, i8* %228)
  %230 = load i32*, i32** %6, align 8
  %231 = load i32*, i32** %8, align 8
  %232 = icmp ult i32* %230, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %203
  %234 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = load i32*, i32** %6, align 8
  %240 = ptrtoint i32* %238 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  %244 = trunc i64 %243 to i32
  %245 = call i32 @ngx_log_debug1(i32 %234, i32 %237, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %233, %203
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  store %struct.TYPE_18__* %247, %struct.TYPE_18__** %249, align 8
  %250 = load i32*, i32** %8, align 8
  store i32* %250, i32** %4, align 8
  br label %251

251:                                              ; preds = %246, %202, %175, %152, %112, %97, %82, %67, %51, %30
  %252 = load i32*, i32** %4, align 8
  ret i32* %252
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i8* @ngx_proxy_protocol_parse_uint16(i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i8* @ngx_sock_ntop(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, %struct.TYPE_13__*, i8*, %struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
