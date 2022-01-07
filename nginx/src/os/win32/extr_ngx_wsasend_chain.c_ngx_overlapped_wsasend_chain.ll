; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsasend_chain.c_ngx_overlapped_wsasend_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsasend_chain.c_ngx_overlapped_wsasend_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i32, i32*, i32 }
%struct.TYPE_23__ = type { i32, i8* }

@NGX_WSABUFS = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wev->complete: %d\00", align 1
@NGX_MAX_UINT32_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@ngx_max_wsabufs = common dso_local global i64 0, align 8
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_21__* null, align 8
@ngx_errno = common dso_local global i64 0, align 8
@WSA_IO_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"WSASend() posted\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WSASend() failed\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_IOCP_EVENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"WSASend: fd:%d, s:%ul\00", align 1
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"WSASend() or WSAGetOverlappedResult() failed\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"WSASend ovlp: fd:%d, s:%ul\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @ngx_overlapped_wsasend_chain(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load i32, i32* @NGX_WSABUFS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %14, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

35:                                               ; preds = %3
  %36 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ngx_log_debug1(i32 %36, i32 %39, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %254, label %48

48:                                               ; preds = %35
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @NGX_MAX_UINT32_VALUE, align 8
  %54 = load i64, i64* @ngx_pagesize, align 8
  %55 = sub nsw i64 %53, %54
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %48
  %58 = load i64, i64* @NGX_MAX_UINT32_VALUE, align 8
  %59 = load i64, i64* @ngx_pagesize, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 3
  store i32* %25, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  store i32 4, i32* %64, align 8
  %65 = load i32, i32* @NGX_WSABUFS, align 4
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 4
  store i32 %69, i32* %70, align 8
  store i64 0, i64* %11, align 8
  store i32* null, i32** %9, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %18, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %16, align 8
  br label %72

72:                                               ; preds = %187, %61
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %74 = icmp ne %struct.TYPE_21__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ngx_max_wsabufs, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp slt i64 %81, %82
  br label %84

84:                                               ; preds = %80, %75, %72
  %85 = phi i1 [ false, %75 ], [ false, %72 ], [ %83, %80 ]
  br i1 %85, label %86, label %191

86:                                               ; preds = %84
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = call i64 @ngx_buf_special(%struct.TYPE_17__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %187

93:                                               ; preds = %86
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = ptrtoint i32* %98 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* %7, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %93
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %11, align 8
  %116 = sub nsw i64 %114, %115
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %113, %93
  %118 = load i32*, i32** %9, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %118, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %117
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = ptrtoint i32* %130 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 8
  br label %178

146:                                              ; preds = %117
  %147 = call %struct.TYPE_23__* @ngx_array_push(%struct.TYPE_22__* %15)
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %18, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %149 = icmp eq %struct.TYPE_23__* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

152:                                              ; preds = %146
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = ptrtoint i32* %165 to i64
  %172 = ptrtoint i32* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %152, %125
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  store i32* %183, i32** %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %11, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %11, align 8
  br label %187

187:                                              ; preds = %178, %92
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  store %struct.TYPE_21__* %190, %struct.TYPE_21__** %16, align 8
  br label %72

191:                                              ; preds = %84
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  %196 = ptrtoint %struct.TYPE_18__* %195 to i64
  store i64 %196, i64* %17, align 8
  %197 = load i64, i64* %17, align 8
  %198 = call i32 @ngx_memzero(i64 %197, i32 4)
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %17, align 8
  %207 = call i32 @WSASend(i32 %201, i32* %203, i64 %205, i64* %12, i32 0, i64 %206, i32* null)
  store i32 %207, i32* %8, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 5
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %234

212:                                              ; preds = %191
  %213 = load i64, i64* @ngx_errno, align 8
  store i64 %213, i64* %13, align 8
  %214 = load i64, i64* %13, align 8
  %215 = load i64, i64* @WSA_IO_PENDING, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @ngx_log_debug0(i32 %218, i32 %221, i64 %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  store i32 1, i32* %225, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %226, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

227:                                              ; preds = %212
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 2
  store i32 1, i32* %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %231 = load i64, i64* %13, align 8
  %232 = call i32 @ngx_connection_error(%struct.TYPE_20__* %230, i64 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_21__* %233, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

234:                                              ; preds = %191
  %235 = load i32, i32* @ngx_event_flags, align 4
  %236 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  store i32 1, i32* %241, align 4
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i64, i64* %12, align 8
  %253 = call i32 @ngx_log_debug2(i32 %245, i32 %248, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %251, i64 %252)
  br label %297

254:                                              ; preds = %35
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 5
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  store i32 0, i32* %258, align 4
  %259 = load i32, i32* @ngx_event_flags, align 4
  %260 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %281

263:                                              ; preds = %254
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %263
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @ngx_connection_error(%struct.TYPE_20__* %270, i64 %274, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_21__* %276, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

277:                                              ; preds = %263
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %12, align 8
  br label %296

281:                                              ; preds = %254
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 4
  %287 = ptrtoint %struct.TYPE_18__* %286 to i64
  %288 = call i64 @WSAGetOverlappedResult(i32 %284, i64 %287, i64* %12, i32 0, i32* null)
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %281
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %292 = load i64, i64* @ngx_socket_errno, align 8
  %293 = call i32 @ngx_connection_error(%struct.TYPE_20__* %291, i64 %292, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_21__* %294, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

295:                                              ; preds = %281
  br label %296

296:                                              ; preds = %295, %277
  br label %297

297:                                              ; preds = %296, %244
  %298 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i64, i64* %12, align 8
  %306 = call i32 @ngx_log_debug2(i32 %298, i32 %301, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %304, i64 %305)
  %307 = load i64, i64* %12, align 8
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %307
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %315 = load i64, i64* %12, align 8
  %316 = call %struct.TYPE_21__* @ngx_chain_update_sent(%struct.TYPE_21__* %314, i64 %315)
  store %struct.TYPE_21__* %316, %struct.TYPE_21__** %6, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %318 = icmp ne %struct.TYPE_21__* %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %297
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 0
  store i32 0, i32* %321, align 8
  br label %325

322:                                              ; preds = %297
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 0
  store i32 1, i32* %324, align 8
  br label %325

325:                                              ; preds = %322, %319
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %326, %struct.TYPE_21__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %327

327:                                              ; preds = %325, %290, %269, %239, %227, %217, %150, %33
  %328 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %328)
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %329
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #2

declare dso_local i64 @ngx_buf_special(%struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_23__* @ngx_array_push(%struct.TYPE_22__*) #2

declare dso_local i32 @ngx_memzero(i64, i32) #2

declare dso_local i32 @WSASend(i32, i32*, i64, i64*, i32, i64, i32*) #2

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #2

declare dso_local i32 @ngx_connection_error(%struct.TYPE_20__*, i64, i8*) #2

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #2

declare dso_local i64 @WSAGetOverlappedResult(i32, i64, i64*, i32, i32*) #2

declare dso_local %struct.TYPE_21__* @ngx_chain_update_sent(%struct.TYPE_21__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
