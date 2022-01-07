; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_InitializeStreams.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_InitializeStreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_18__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_15__, %struct.TYPE_14__**, i64, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Stream id %s ignored\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"stream %u: frames found: %u, frames meant to be found: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"We should be manually seeking through the entire file to build an index, because the index is missing!!!\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"Duration: %d days, %d hours, %d minutes and %d.%03u seconds\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @AVISplitter_InitializeStreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVISplitter_InitializeStreams(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %214

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %47, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %25
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 8
  store i64 %57, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %157, %50
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %160

62:                                               ; preds = %58
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @StreamFromFOURCC(i32 %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = icmp uge i64 %73, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %62
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = bitcast i32* %88 to i8*
  %90 = call i32 @debugstr_an(i8* %89, i32 4)
  %91 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %157

92:                                               ; preds = %62
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load i64, i64* %6, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %101, %92
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %110
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %129, %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = load i64, i64* %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, %138
  store i32 %146, i32* %144, align 8
  br label %156

147:                                              ; preds = %110
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %147, %120
  br label %157

157:                                              ; preds = %156, %80
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %6, align 8
  br label %58

160:                                              ; preds = %58
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %210, %160
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ult i32 %162, %166
  br i1 %167, label %168, label %213

168:                                              ; preds = %161
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %177, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %168
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i8*, i32, ...) @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %189, i64 %198, i64 %207)
  br label %209

209:                                              ; preds = %188, %168
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %4, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %4, align 4
  br label %161

213:                                              ; preds = %161
  br label %255

214:                                              ; preds = %1
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %254, label %222

222:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %248, %222
  %224 = load i32, i32* %4, align 4
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ult i32 %224, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %223
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = load i32, i32* %4, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  store i32 %240, i32* %247, align 8
  br label %248

248:                                              ; preds = %230
  %249 = load i32, i32* %4, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %4, align 4
  br label %223

251:                                              ; preds = %223
  %252 = call i32 @ERR(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0))
  %253 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %253, i32* %2, align 4
  br label %435

254:                                              ; preds = %214
  br label %255

255:                                              ; preds = %254, %213
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %430, %255
  %257 = load i32, i32* %4, align 4
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ult i32 %257, %261
  br i1 %262, label %263, label %433

263:                                              ; preds = %256
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i64 %268
  store %struct.TYPE_18__* %269, %struct.TYPE_18__** %8, align 8
  store i32 0, i32* %10, align 4
  %270 = load i32, i32* @TRUE, align 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %274, align 8
  %276 = icmp ne %struct.TYPE_14__** %275, null
  br i1 %276, label %277, label %361

277:                                              ; preds = %263
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 5
  store i64 0, i64* %279, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 1
  store i32 0, i32* %281, align 4
  store i64 0, i64* %9, align 8
  br label %282

282:                                              ; preds = %357, %277
  %283 = load i64, i64* %9, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = icmp ult i64 %283, %286
  br i1 %287, label %288, label %360

288:                                              ; preds = %282
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %343

294:                                              ; preds = %288
  store i64 0, i64* %11, align 8
  br label %295

295:                                              ; preds = %339, %294
  %296 = load i64, i64* %11, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %298, align 8
  %300 = load i64, i64* %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %299, i64 %300
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ult i64 %296, %304
  br i1 %305, label %306, label %342

306:                                              ; preds = %295
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %308, align 8
  %310 = load i64, i64* %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %309, i64 %310
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = load i64, i64* %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 2147483647
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %12, align 4
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = sdiv i32 %320, %324
  %326 = load i32, i32* %12, align 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = srem i32 %326, %330
  %332 = icmp ne i32 %331, 0
  %333 = xor i1 %332, true
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = add nsw i32 %325, %335
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %10, align 4
  br label %339

339:                                              ; preds = %306
  %340 = load i64, i64* %11, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %11, align 8
  br label %295

342:                                              ; preds = %295
  br label %356

343:                                              ; preds = %288
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %345, align 8
  %347 = load i64, i64* %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %346, i64 %347
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = add i64 %353, %351
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %10, align 4
  br label %356

356:                                              ; preds = %343, %342
  br label %357

357:                                              ; preds = %356
  %358 = load i64, i64* %9, align 8
  %359 = add i64 %358, 1
  store i64 %359, i64* %9, align 8
  br label %282

360:                                              ; preds = %282
  br label %365

361:                                              ; preds = %263
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* %10, align 4
  br label %365

365:                                              ; preds = %361, %360
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* %10, align 4
  %371 = mul nsw i32 %370, %369
  store i32 %371, i32* %10, align 4
  %372 = load i32, i32* %10, align 4
  %373 = mul nsw i32 %372, 10000000
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 0
  store i32 %373, i32* %377, align 8
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sdiv i32 %386, %381
  store i32 %387, i32* %385, align 8
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 1
  store i32 %392, i32* %396, align 4
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 2
  store i64 0, i64* %400, align 8
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %10, align 4
  %406 = sdiv i32 %405, %404
  store i32 %406, i32* %10, align 4
  %407 = load i32, i32* %10, align 4
  %408 = sdiv i32 %407, 86400
  %409 = sext i32 %408 to i64
  %410 = load i32, i32* %10, align 4
  %411 = srem i32 %410, 86400
  %412 = sdiv i32 %411, 3600
  %413 = sext i32 %412 to i64
  %414 = load i32, i32* %10, align 4
  %415 = srem i32 %414, 3600
  %416 = sdiv i32 %415, 60
  %417 = sext i32 %416 to i64
  %418 = load i32, i32* %10, align 4
  %419 = srem i32 %418, 60
  %420 = sext i32 %419 to i64
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = sdiv i32 %425, 10000
  %427 = sext i32 %426 to i64
  %428 = urem i64 %427, 1000
  %429 = call i32 @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %409, i64 %413, i64 %417, i64 %420, i64 %428)
  br label %430

430:                                              ; preds = %365
  %431 = load i32, i32* %4, align 4
  %432 = add i32 %431, 1
  store i32 %432, i32* %4, align 4
  br label %256

433:                                              ; preds = %256
  %434 = load i32, i32* @S_OK, align 4
  store i32 %434, i32* %2, align 4
  br label %435

435:                                              ; preds = %433, %251
  %436 = load i32, i32* %2, align 4
  ret i32 %436
}

declare dso_local i64 @StreamFromFOURCC(i32) #1

declare dso_local i32 @FIXME(i8*, i32, ...) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
