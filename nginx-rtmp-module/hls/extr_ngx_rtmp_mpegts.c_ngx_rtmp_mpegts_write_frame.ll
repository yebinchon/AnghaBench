; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_mpegts.c_ngx_rtmp_mpegts_write_frame.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_mpegts.c_ngx_rtmp_mpegts_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"mpegts: pid=%ui, sid=%ui, pts=%uL, dts=%uL, key=%ui, size=%ui\00", align 1
@NGX_RTMP_HLS_DELAY = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_rtmp_mpegts_write_frame(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [188 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %19 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = call i32 @ngx_log_debug6(i32 %19, i32 %22, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28, i64 %31, i64 %34, i32 %38, i64 %46)
  store i32 1, i32* %17, align 4
  br label %48

48:                                               ; preds = %307, %3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %308

56:                                               ; preds = %48
  %57 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 0
  store i32* %57, i32** %15, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %15, align 8
  store i32 71, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 8
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %15, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 64
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %56
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %15, align 8
  store i32 %80, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 15
  %87 = or i32 16, %86
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %15, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %77
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 32
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %15, align 8
  store i32 7, i32* %101, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %15, align 8
  store i32 80, i32* %103, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NGX_RTMP_HLS_DELAY, align 8
  %110 = sub nsw i64 %108, %109
  %111 = call i32* @ngx_rtmp_mpegts_write_pcr(i32* %105, i64 %110)
  store i32* %111, i32** %15, align 8
  br label %112

112:                                              ; preds = %97, %92
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %15, align 8
  store i32 0, i32* %113, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %15, align 8
  store i32 0, i32* %115, align 4
  %117 = load i32*, i32** %15, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %15, align 8
  store i32 1, i32* %117, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32*, i32** %15, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %15, align 8
  store i32 %122, i32* %123, align 4
  store i32 5, i32* %9, align 4
  store i32 128, i32* %13, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %112
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 5
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, 64
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %132, %112
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %144, %145
  %147 = add nsw i32 %146, 3
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp sgt i32 %148, 65535
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %150, %137
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 8
  %154 = load i32*, i32** %15, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %15, align 8
  store i32 %153, i32* %154, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32*, i32** %15, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %15, align 8
  store i32 %156, i32* %157, align 4
  %159 = load i32*, i32** %15, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %15, align 8
  store i32 128, i32* %159, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32*, i32** %15, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %15, align 8
  store i32 %161, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32*, i32** %15, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %15, align 8
  store i32 %164, i32* %165, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %13, align 4
  %169 = ashr i32 %168, 6
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @NGX_RTMP_HLS_DELAY, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32* @ngx_rtmp_mpegts_write_pts(i32* %167, i32 %169, i64 %174)
  store i32* %175, i32** %15, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %151
  %184 = load i32*, i32** %15, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @NGX_RTMP_HLS_DELAY, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32* @ngx_rtmp_mpegts_write_pts(i32* %184, i32 1, i64 %189)
  store i32* %190, i32** %15, align 8
  br label %191

191:                                              ; preds = %183, %151
  store i32 0, i32* %17, align 4
  br label %192

192:                                              ; preds = %191, %77
  %193 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 0
  %194 = getelementptr inbounds i32, i32* %193, i64 752
  %195 = load i32*, i32** %15, align 8
  %196 = ptrtoint i32* %194 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %10, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %203, %206
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %192
  %212 = load i32*, i32** %15, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @ngx_memcpy(i32* %212, i32 %215, i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %298

223:                                              ; preds = %192
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %11, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %12, align 4
  %227 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, 32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %257

231:                                              ; preds = %223
  %232 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 5
  %233 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 4
  %234 = load i32, i32* %233, align 16
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32* %236, i32** %16, align 8
  %237 = load i32*, i32** %16, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32*, i32** %16, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = load i32*, i32** %16, align 8
  %244 = ptrtoint i32* %242 to i64
  %245 = ptrtoint i32* %243 to i64
  %246 = sub i64 %244, %245
  %247 = sdiv exact i64 %246, 4
  %248 = trunc i64 %247 to i32
  %249 = call i32* @ngx_movemem(i32* %240, i32* %241, i32 %248)
  store i32* %249, i32** %15, align 8
  %250 = load i32*, i32** %16, align 8
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @ngx_memset(i32* %250, i32 255, i32 %251)
  %253 = load i32, i32* %12, align 4
  %254 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 4
  %255 = load i32, i32* %254, align 16
  %256 = add nsw i32 %255, %253
  store i32 %256, i32* %254, align 16
  br label %286

257:                                              ; preds = %223
  %258 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 3
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, 32
  store i32 %260, i32* %258, align 4
  %261 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 4
  %262 = load i32, i32* %12, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 4
  %266 = load i32*, i32** %15, align 8
  %267 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 4
  %268 = ptrtoint i32* %266 to i64
  %269 = ptrtoint i32* %267 to i64
  %270 = sub i64 %268, %269
  %271 = sdiv exact i64 %270, 4
  %272 = trunc i64 %271 to i32
  %273 = call i32* @ngx_movemem(i32* %264, i32* %265, i32 %272)
  store i32* %273, i32** %15, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sub nsw i32 %274, 1
  %276 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 4
  store i32 %275, i32* %276, align 16
  %277 = load i32, i32* %12, align 4
  %278 = icmp sge i32 %277, 2
  br i1 %278, label %279, label %285

279:                                              ; preds = %257
  %280 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 5
  store i32 0, i32* %280, align 4
  %281 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 6
  %282 = load i32, i32* %12, align 4
  %283 = sub nsw i32 %282, 2
  %284 = call i32 @ngx_memset(i32* %281, i32 255, i32 %283)
  br label %285

285:                                              ; preds = %279, %257
  br label %286

286:                                              ; preds = %285, %231
  %287 = load i32*, i32** %15, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @ngx_memcpy(i32* %287, i32 %290, i32 %291)
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %286, %211
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds [188 x i32], [188 x i32]* %14, i64 0, i64 0
  %301 = call i32 @ngx_rtmp_mpegts_write_file(%struct.TYPE_9__* %299, i32* %300, i32 752)
  store i32 %301, i32* %18, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* @NGX_OK, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %298
  %306 = load i32, i32* %18, align 4
  store i32 %306, i32* %4, align 4
  br label %310

307:                                              ; preds = %298
  br label %48

308:                                              ; preds = %48
  %309 = load i32, i32* @NGX_OK, align 4
  store i32 %309, i32* %4, align 4
  br label %310

310:                                              ; preds = %308, %305
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local i32 @ngx_log_debug6(i32, i32, i32, i8*, i32, i64, i64, i64, i32, i64) #1

declare dso_local i32* @ngx_rtmp_mpegts_write_pcr(i32*, i64) #1

declare dso_local i32* @ngx_rtmp_mpegts_write_pts(i32*, i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32* @ngx_movemem(i32*, i32*, i32) #1

declare dso_local i32 @ngx_memset(i32*, i32, i32) #1

declare dso_local i32 @ngx_rtmp_mpegts_write_file(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
