; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsasend_chain.c_ngx_wsasend_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsasend_chain.c_ngx_wsasend_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i32*, i32 }
%struct.TYPE_21__ = type { i32, i8* }

@NGX_WSABUFS = common dso_local global i32 0, align 4
@NGX_MAX_UINT32_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@ngx_max_wsabufs = common dso_local global i64 0, align 8
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_19__* null, align 8
@ngx_errno = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"WSASend() not ready\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"WSASend() failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"WSASend: fd:%d, s:%ul\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @ngx_wsasend_chain(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load i32, i32* @NGX_WSABUFS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %15, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %250

35:                                               ; preds = %3
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @NGX_MAX_UINT32_VALUE, align 8
  %41 = load i64, i64* @ngx_pagesize, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %35
  %45 = load i64, i64* @NGX_MAX_UINT32_VALUE, align 8
  %46 = load i64, i64* @ngx_pagesize, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %44, %38
  store i64 0, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  store i32* %25, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load i32, i32* @NGX_WSABUFS, align 4
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  br label %57

57:                                               ; preds = %249, %48
  store i32* null, i32** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %18, align 8
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %17, align 8
  br label %61

61:                                               ; preds = %176, %57
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %63 = icmp ne %struct.TYPE_19__* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ngx_max_wsabufs, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp slt i64 %70, %71
  br label %73

73:                                               ; preds = %69, %64, %61
  %74 = phi i1 [ false, %64 ], [ false, %61 ], [ %72, %69 ]
  br i1 %74, label %75, label %180

75:                                               ; preds = %73
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = call i64 @ngx_buf_special(%struct.TYPE_16__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %176

82:                                               ; preds = %75
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %87 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* %7, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %82
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = sub nsw i64 %103, %104
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %102, %82
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %107, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %106
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = ptrtoint i32* %119 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 8
  br label %167

135:                                              ; preds = %106
  %136 = call %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_20__* %16)
  store %struct.TYPE_21__* %136, %struct.TYPE_21__** %18, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %138 = icmp eq %struct.TYPE_21__* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_19__* %140, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %250

141:                                              ; preds = %135
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = ptrtoint i32* %154 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %141, %114
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %9, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %12, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %12, align 8
  br label %176

176:                                              ; preds = %167, %81
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  store %struct.TYPE_19__* %179, %struct.TYPE_19__** %17, align 8
  br label %61

180:                                              ; preds = %73
  store i64 0, i64* %11, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @WSASend(i32 %183, i32* %185, i64 %187, i64* %11, i32 0, i32* null, i32* null)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %211

191:                                              ; preds = %180
  %192 = load i64, i64* @ngx_errno, align 8
  store i64 %192, i64* %14, align 8
  %193 = load i64, i64* %14, align 8
  %194 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %14, align 8
  %202 = call i32 @ngx_log_debug0(i32 %197, i32 %200, i64 %201, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %210

203:                                              ; preds = %191
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %207 = load i64, i64* %14, align 8
  %208 = call i32 @ngx_connection_error(%struct.TYPE_18__* %206, i64 %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_19__* %209, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %250

210:                                              ; preds = %196
  br label %211

211:                                              ; preds = %210, %180
  %212 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @ngx_log_debug2(i32 %212, i32 %215, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %218, i64 %219)
  %221 = load i64, i64* %11, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %221
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %223, align 8
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = load i64, i64* %11, align 8
  %230 = call %struct.TYPE_19__* @ngx_chain_update_sent(%struct.TYPE_19__* %228, i64 %229)
  store %struct.TYPE_19__* %230, %struct.TYPE_19__** %6, align 8
  %231 = load i64, i64* %12, align 8
  %232 = load i64, i64* %13, align 8
  %233 = sub nsw i64 %231, %232
  %234 = load i64, i64* %11, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %211
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  store i64 0, i64* %238, align 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %239, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %250

240:                                              ; preds = %211
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* %7, align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %246 = icmp eq %struct.TYPE_19__* %245, null
  br i1 %246, label %247, label %249

247:                                              ; preds = %244, %240
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %248, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %21, align 4
  br label %250

249:                                              ; preds = %244
  br label %57

250:                                              ; preds = %247, %236, %203, %139, %33
  %251 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %252
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ngx_buf_special(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_20__*) #2

declare dso_local i32 @WSASend(i32, i32*, i64, i64*, i32, i32*, i32*) #2

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #2

declare dso_local i32 @ngx_connection_error(%struct.TYPE_18__*, i64, i8*) #2

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #2

declare dso_local %struct.TYPE_19__* @ngx_chain_update_sent(%struct.TYPE_19__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
