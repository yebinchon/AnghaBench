; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_pre_connect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_pre_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i64, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i8*, i8* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ID3\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Found ID3 v2.%d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Length: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Testing header %x:%x:%x:%x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"%x:%x:%x:%x is a fake audio header, looking for next...\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Could not create pin for MPEG audio stream (%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Duration: %d seconds\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"MPEG video processing not yet supported!\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"MPEG system streams not yet supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_26__*)* @MPEGSplitter_pre_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEGSplitter_pre_connect(i32* %0, i32* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_23__* @impl_PullPin_from_IPin(i32* %23)
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %8, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %9, align 8
  store i32 0, i32* %11, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @IAsyncReader_Length(i32 %33, i32* %14, i32* %15)
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %43 = call i32 @IAsyncReader_SyncRead(i32 %40, i32 %41, i32 4, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @SUCCEEDED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %3
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @SUCCEEDED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %154

54:                                               ; preds = %50
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %56 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %55, i32 3)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %154, label %58

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %18, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = call i32 @IAsyncReader_SyncRead(i32 %62, i32 %63, i32 6, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %153

71:                                               ; preds = %59
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 6
  store i32 %73, i32* %11, align 4
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 4
  %77 = load i32, i32* %76, align 16
  %78 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77)
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 4
  br i1 %81, label %82, label %136

82:                                               ; preds = %71
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 4
  %84 = load i32, i32* %83, align 16
  %85 = icmp ne i32 %84, 255
  br i1 %85, label %86, label %136

86:                                               ; preds = %82
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %136

91:                                               ; preds = %86
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 6
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 128
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %91
  %97 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 128
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %96
  %102 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 8
  %103 = load i32, i32* %102, align 16
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %101
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 9
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 128
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %106
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 6
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 21
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 7
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 14
  %118 = or i32 %114, %117
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 8
  %120 = load i32, i32* %119, align 16
  %121 = shl i32 %120, 7
  %122 = or i32 %118, %121
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 9
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %122, %124
  store i32 %125, i32* %18, align 4
  %126 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 16
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 10
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %130, %111
  %134 = load i32, i32* %18, align 4
  %135 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %106, %101, %96, %91, %86, %82, %71
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %145 = call i32 @IAsyncReader_SyncRead(i32 %142, i32 %143, i32 4, i32* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i64 @SUCCEEDED(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %136
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 4
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %149, %136
  br label %153

153:                                              ; preds = %152, %70
  br label %154

154:                                              ; preds = %153, %54, %50
  br label %155

155:                                              ; preds = %214, %154
  %156 = load i32, i32* %10, align 4
  %157 = call i64 @SUCCEEDED(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %227

159:                                              ; preds = %155
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 2
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %163, i32 %165, i32 %167)
  %169 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %170 = call i32 @MPEGSplitter_head_check(i32* %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp eq i32 %171, 130
  br i1 %172, label %173, label %209

173:                                              ; preds = %159
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %175 = call i64 @parse_header(i32* %174, i32* %19, i32* null)
  %176 = load i64, i64* @S_OK, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %173
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %182, %183
  %185 = sub nsw i32 %184, 4
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %187 = call i32 @IAsyncReader_SyncRead(i32 %181, i32 %185, i32 4, i32* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i64 @FAILED(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %178
  br label %227

192:                                              ; preds = %178
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %194 = call i64 @parse_header(i32* %193, i32* %19, i32* null)
  %195 = load i64, i64* @S_OK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %227

198:                                              ; preds = %192
  %199 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %200 = load i32, i32* %199, align 16
  %201 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 2
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %200, i32 %202, i32 %204, i32 %206)
  br label %208

208:                                              ; preds = %198, %173
  br label %214

209:                                              ; preds = %159
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %227

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213, %208
  %215 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %216 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = call i32 @memmove(i32* %215, i32* %217, i32 3)
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  %224 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = call i32 @IAsyncReader_SyncRead(i32 %221, i32 %222, i32 1, i32* %225)
  store i32 %226, i32* %10, align 4
  br label %155

227:                                              ; preds = %212, %197, %191, %155
  %228 = load i32, i32* %10, align 4
  %229 = call i64 @FAILED(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %4, align 4
  br label %374

233:                                              ; preds = %227
  %234 = load i32, i32* %11, align 4
  %235 = sub nsw i32 %234, 4
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %243 = call i32 @memcpy(i32 %241, i32* %242, i32 4)
  %244 = load i32, i32* %13, align 4
  switch i32 %244, label %369 [
    i32 130, label %245
    i32 128, label %363
    i32 129, label %366
  ]

245:                                              ; preds = %233
  store i32 0, i32* %21, align 4
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %247 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %248 = call i32 @MPEGSplitter_init_audio(%struct.TYPE_24__* %246, i32* %247, i32* %17, %struct.TYPE_25__* %16)
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i64 @SUCCEEDED(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %276

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %255, %struct.TYPE_22__** %22, align 8
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  store i32 1, i32* %257, align 4
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 3
  store i32 0, i32* %259, align 4
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sdiv i32 16384, %262
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %263, %266
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 2
  store i32 3, i32* %271, align 4
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %275 = call i32 @Parser_AddPin(%struct.TYPE_17__* %273, i32* %17, %struct.TYPE_26__* %274, %struct.TYPE_25__* %16)
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %252, %245
  %277 = load i32, i32* %10, align 4
  %278 = call i64 @FAILED(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @CoTaskMemFree(i64 %282)
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %284)
  br label %370

286:                                              ; preds = %276
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %292, 128
  %294 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %295 = call i32 @IAsyncReader_SyncRead(i32 %289, i32 %293, i32 3, i32* %294)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %10, align 4
  %297 = call i64 @FAILED(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  br label %370

300:                                              ; preds = %286
  %301 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %302 = bitcast i32* %301 to i8*
  %303 = call i32 @strncmp(i8* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %300
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sub nsw i32 %308, 128
  store i32 %309, i32* %307, align 8
  br label %310

310:                                              ; preds = %305, %300
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i8* @MEDIATIME_FROM_BYTES(i32 %313)
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 2
  store i8* %314, i8** %319, align 8
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i8* @MEDIATIME_FROM_BYTES(i32 %322)
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 0
  store i8* %323, i8** %328, align 8
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 1
  store i8* %323, i8** %333, align 8
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = sub nsw i32 %336, %339
  %341 = mul nsw i32 %340, 10000000
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = sdiv i32 %341, %344
  store i32 %345, i32* %21, align 4
  %346 = load i32, i32* %21, align 4
  %347 = sdiv i32 %346, 10000000
  %348 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %347)
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 2
  store i32 0, i32* %352, align 8
  %353 = load i32, i32* %21, align 4
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 0
  store i32 %353, i32* %357, align 8
  %358 = load i32, i32* %21, align 4
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 1
  store i32 %358, i32* %362, align 4
  br label %370

363:                                              ; preds = %233
  %364 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %365 = load i32, i32* @E_FAIL, align 4
  store i32 %365, i32* %10, align 4
  br label %370

366:                                              ; preds = %233
  %367 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %368 = load i32, i32* @E_FAIL, align 4
  store i32 %368, i32* %10, align 4
  br label %370

369:                                              ; preds = %233
  br label %370

370:                                              ; preds = %369, %366, %363, %310, %299, %280
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 2
  store i64 0, i64* %372, align 8
  %373 = load i32, i32* %10, align 4
  store i32 %373, i32* %4, align 4
  br label %374

374:                                              ; preds = %370, %231
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

declare dso_local %struct.TYPE_23__* @impl_PullPin_from_IPin(i32*) #1

declare dso_local i32 @IAsyncReader_Length(i32, i32*, i32*) #1

declare dso_local i32 @IAsyncReader_SyncRead(i32, i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @MPEGSplitter_head_check(i32*) #1

declare dso_local i64 @parse_header(i32*, i32*, i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @MPEGSplitter_init_audio(%struct.TYPE_24__*, i32*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @Parser_AddPin(%struct.TYPE_17__*, i32*, %struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @CoTaskMemFree(i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @MEDIATIME_FROM_BYTES(i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
