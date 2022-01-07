; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_prepare_message.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_14__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@ngx_rtmp_prepare_message.hdrsize = internal global [4 x i32] [i32 12, i32 8, i32 4, i32 1], align 16
@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RTMP out chunk stream too big: %D >= %D\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"RTMP prep %s (%d) fmt=%d csid=%uD timestamp=%uD mlen=%uD msid=%uD nbufs=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_rtmp_prepare_message(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [7 x i32], align 16
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %21, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = load i32, i32* @ngx_rtmp_core_module, align 4
  %27 = call %struct.TYPE_17__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_15__* %25, i32 %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %19, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %4
  %36 = load i32, i32* @NGX_LOG_INFO, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ngx_log_error(i32 %36, i32 %39, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_15__* %47)
  br label %424

49:                                               ; preds = %4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %9, align 8
  br label %51

51:                                               ; preds = %70, %49
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = icmp ne %struct.TYPE_19__* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %59, %64
  %66 = load i64, i64* %15, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %14, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %54
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %9, align 8
  br label %51

74:                                               ; preds = %51
  store i32 0, i32* %20, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = icmp ne %struct.TYPE_16__* %75, null
  br i1 %76, label %77, label %131

77:                                               ; preds = %74
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %77
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %82
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %90
  %101 = load i64, i64* %15, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %20, align 4
  br label %122

122:                                              ; preds = %119, %109
  br label %123

123:                                              ; preds = %122, %103, %100, %90
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  store i64 %130, i64* %16, align 8
  br label %135

131:                                              ; preds = %82, %77, %74
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %16, align 8
  br label %135

135:                                              ; preds = %131, %123
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* @ngx_rtmp_prepare_message.hdrsize, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %12, align 8
  %141 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @ngx_rtmp_message_type(i64 %149)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %20, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %15, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @ngx_log_debug8(i32 %141, i32 %146, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %154, i32 %155, i64 %158, i64 %159, i64 %160, i32 %163, i64 %164)
  store i64 0, i64* %17, align 8
  %166 = load i64, i64* %16, align 8
  %167 = icmp sge i64 %166, 16777215
  br i1 %167, label %168, label %172

168:                                              ; preds = %135
  %169 = load i64, i64* %16, align 8
  store i64 %169, i64* %17, align 8
  store i64 16777215, i64* %16, align 8
  %170 = load i64, i64* %12, align 8
  %171 = add i64 %170, 4
  store i64 %171, i64* %12, align 8
  br label %172

172:                                              ; preds = %168, %135
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sge i64 %175, 64
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load i64, i64* %12, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %12, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp sge i64 %182, 320
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %12, align 8
  br label %187

187:                                              ; preds = %184, %177
  br label %188

188:                                              ; preds = %187, %172
  %189 = load i64, i64* %12, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = sub i64 %194, %189
  store i64 %195, i64* %193, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  store i32* %201, i32** %10, align 8
  %202 = load i32, i32* %20, align 4
  %203 = shl i32 %202, 6
  %204 = load i32*, i32** %10, align 8
  store i32 %203, i32* %204, align 4
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp sge i64 %207, 2
  br i1 %208, label %209, label %224

209:                                              ; preds = %188
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp sle i64 %212, 63
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = and i32 %218, 63
  %220 = load i32*, i32** %10, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %10, align 8
  %222 = load i32, i32* %220, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %220, align 4
  br label %265

224:                                              ; preds = %209, %188
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp sge i64 %227, 64
  br i1 %228, label %229, label %244

229:                                              ; preds = %224
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %232, 320
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i32*, i32** %10, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %10, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %239, 64
  %241 = trunc i64 %240 to i32
  %242 = load i32*, i32** %10, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %10, align 8
  store i32 %241, i32* %242, align 4
  br label %264

244:                                              ; preds = %229, %224
  %245 = load i32*, i32** %10, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %10, align 8
  %247 = load i32, i32* %245, align 4
  %248 = or i32 %247, 1
  store i32 %248, i32* %245, align 4
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %251, 64
  %253 = trunc i64 %252 to i32
  %254 = load i32*, i32** %10, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %10, align 8
  store i32 %253, i32* %254, align 4
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %258, 64
  %260 = ashr i64 %259, 8
  %261 = trunc i64 %260 to i32
  %262 = load i32*, i32** %10, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %10, align 8
  store i32 %261, i32* %262, align 4
  br label %264

264:                                              ; preds = %244, %234
  br label %265

265:                                              ; preds = %264, %214
  %266 = load i32*, i32** %10, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = sub i64 0, %271
  %273 = getelementptr inbounds i32, i32* %266, i64 %272
  %274 = ptrtoint i32* %273 to i64
  store i64 %274, i64* %13, align 8
  %275 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = inttoptr i64 %280 to i32*
  %282 = load i64, i64* %13, align 8
  %283 = call i32 @ngx_memcpy(i32* %275, i32* %281, i64 %282)
  %284 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %285 = load i32, i32* %284, align 16
  %286 = or i32 %285, 192
  store i32 %286, i32* %284, align 16
  %287 = load i32, i32* %20, align 4
  %288 = icmp sle i32 %287, 2
  br i1 %288, label %289, label %358

289:                                              ; preds = %265
  %290 = bitcast i64* %16 to i32*
  store i32* %290, i32** %11, align 8
  %291 = load i32*, i32** %11, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %10, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %10, align 8
  store i32 %293, i32* %294, align 4
  %296 = load i32*, i32** %11, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %10, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %10, align 8
  store i32 %298, i32* %299, align 4
  %301 = load i32*, i32** %11, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %10, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %10, align 8
  store i32 %303, i32* %304, align 4
  %306 = load i32, i32* %20, align 4
  %307 = icmp sle i32 %306, 1
  br i1 %307, label %308, label %357

308:                                              ; preds = %289
  %309 = bitcast i64* %15 to i32*
  store i32* %309, i32** %11, align 8
  %310 = load i32*, i32** %11, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** %10, align 8
  %314 = getelementptr inbounds i32, i32* %313, i32 1
  store i32* %314, i32** %10, align 8
  store i32 %312, i32* %313, align 4
  %315 = load i32*, i32** %11, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %10, align 8
  %319 = getelementptr inbounds i32, i32* %318, i32 1
  store i32* %319, i32** %10, align 8
  store i32 %317, i32* %318, align 4
  %320 = load i32*, i32** %11, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %10, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %10, align 8
  store i32 %322, i32* %323, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = load i32*, i32** %10, align 8
  %330 = getelementptr inbounds i32, i32* %329, i32 1
  store i32* %330, i32** %10, align 8
  store i32 %328, i32* %329, align 4
  %331 = load i32, i32* %20, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %356

333:                                              ; preds = %308
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 3
  store i32* %335, i32** %11, align 8
  %336 = load i32*, i32** %11, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32*, i32** %10, align 8
  %340 = getelementptr inbounds i32, i32* %339, i32 1
  store i32* %340, i32** %10, align 8
  store i32 %338, i32* %339, align 4
  %341 = load i32*, i32** %11, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32*, i32** %10, align 8
  %345 = getelementptr inbounds i32, i32* %344, i32 1
  store i32* %345, i32** %10, align 8
  store i32 %343, i32* %344, align 4
  %346 = load i32*, i32** %11, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 2
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** %10, align 8
  %350 = getelementptr inbounds i32, i32* %349, i32 1
  store i32* %350, i32** %10, align 8
  store i32 %348, i32* %349, align 4
  %351 = load i32*, i32** %11, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 3
  %353 = load i32, i32* %352, align 4
  %354 = load i32*, i32** %10, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %10, align 8
  store i32 %353, i32* %354, align 4
  br label %356

356:                                              ; preds = %333, %308
  br label %357

357:                                              ; preds = %356, %289
  br label %358

358:                                              ; preds = %357, %265
  %359 = load i64, i64* %17, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %396

361:                                              ; preds = %358
  %362 = bitcast i64* %17 to i32*
  store i32* %362, i32** %11, align 8
  %363 = load i32*, i32** %11, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 3
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %10, align 8
  %367 = getelementptr inbounds i32, i32* %366, i32 1
  store i32* %367, i32** %10, align 8
  store i32 %365, i32* %366, align 4
  %368 = load i32*, i32** %11, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 2
  %370 = load i32, i32* %369, align 4
  %371 = load i32*, i32** %10, align 8
  %372 = getelementptr inbounds i32, i32* %371, i32 1
  store i32* %372, i32** %10, align 8
  store i32 %370, i32* %371, align 4
  %373 = load i32*, i32** %11, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32*, i32** %10, align 8
  %377 = getelementptr inbounds i32, i32* %376, i32 1
  store i32* %377, i32** %10, align 8
  store i32 %375, i32* %376, align 4
  %378 = load i32*, i32** %11, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32*, i32** %10, align 8
  %382 = getelementptr inbounds i32, i32* %381, i32 1
  store i32* %382, i32** %10, align 8
  store i32 %380, i32* %381, align 4
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %361
  %388 = load i64, i64* %13, align 8
  %389 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %388
  %390 = load i32*, i32** %10, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 -4
  %392 = call i32 @ngx_memcpy(i32* %389, i32* %391, i64 4)
  %393 = load i64, i64* %13, align 8
  %394 = add i64 %393, 4
  store i64 %394, i64* %13, align 8
  br label %395

395:                                              ; preds = %387, %361
  br label %396

396:                                              ; preds = %395, %358
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 1
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  store %struct.TYPE_19__* %399, %struct.TYPE_19__** %8, align 8
  br label %400

400:                                              ; preds = %420, %396
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %402 = icmp ne %struct.TYPE_19__* %401, null
  br i1 %402, label %403, label %424

403:                                              ; preds = %400
  %404 = load i64, i64* %13, align 8
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = sub i64 %409, %404
  store i64 %410, i64* %408, align 8
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = inttoptr i64 %415 to i32*
  %417 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %418 = load i64, i64* %13, align 8
  %419 = call i32 @ngx_memcpy(i32* %416, i32* %417, i64 %418)
  br label %420

420:                                              ; preds = %403
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %422, align 8
  store %struct.TYPE_19__* %423, %struct.TYPE_19__** %8, align 8
  br label %400

424:                                              ; preds = %35, %400
  ret void
}

declare dso_local %struct.TYPE_17__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_log_debug8(i32, i32, i32, i8*, i32, i32, i32, i64, i64, i64, i32, i64) #1

declare dso_local i32 @ngx_rtmp_message_type(i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
