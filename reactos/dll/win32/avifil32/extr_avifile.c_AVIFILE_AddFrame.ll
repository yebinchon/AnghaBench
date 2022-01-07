; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_AddFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_avifile.c_AVIFILE_AddFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@AVIFILEINFO_TRUSTCKTYPE = common dso_local global i32 0, align 4
@AVIIF_KEYFRAME = common dso_local global i32 0, align 4
@streamtypeVIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c": found palette change in non-video stream!\0A\00", align 1
@AVIERR_BADFORMAT = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@AVISTREAMINFO_FORMATCHANGES = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c": unknown TWOCC 0x%04X found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32, i32)* @AVIFILE_AddFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_AddFrame(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @TWOCCFromFOURCC(i32 %19)
  switch i32 %20, label %185 [
    i32 131, label %21
    i32 130, label %36
    i32 129, label %52
    i32 128, label %170
  ]

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AVIFILEINFO_TRUSTCKTYPE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @AVIIF_KEYFRAME, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %31, %21
  br label %189

36:                                               ; preds = %5
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AVIFILEINFO_TRUSTCKTYPE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @AVIIF_KEYFRAME, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %36
  br label %189

52:                                               ; preds = %5
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @streamtypeVIDEO, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @AVIERR_BADFORMAT, align 4
  store i32 %61, i32* %6, align 4
  br label %335

62:                                               ; preds = %52
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = icmp eq %struct.TYPE_11__* %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %70, %74
  br i1 %75, label %76, label %127

76:                                               ; preds = %67, %62
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 16
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = icmp eq %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %76
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i8* @HeapAlloc(i32 %86, i32 %87, i32 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_11__*
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 6
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = icmp ne %struct.TYPE_11__* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %85
  %101 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %101, i32* %6, align 4
  br label %335

102:                                              ; preds = %85
  br label %123

103:                                              ; preds = %76
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i8* @HeapReAlloc(i32 %104, i32 %105, %struct.TYPE_11__* %108, i32 %112)
  store i8* %113, i8** %14, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %117, i32* %6, align 4
  br label %335

118:                                              ; preds = %103
  %119 = load i8*, i8** %14, align 8
  %120 = bitcast i8* %119 to %struct.TYPE_11__*
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 6
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %122, align 8
  br label %123

123:                                              ; preds = %118, %102
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %67
  %128 = load i32, i32* @AVISTREAMINFO_FORMATCHANGES, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %12, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 %142, i32* %148, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 3
  store i32 %162, i32* %168, align 4
  %169 = load i32, i32* @AVIERR_OK, align 4
  store i32 %169, i32* %6, align 4
  br label %335

170:                                              ; preds = %5
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AVIFILEINFO_TRUSTCKTYPE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = load i32, i32* @AVIIF_KEYFRAME, align 4
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %180, %170
  br label %189

185:                                              ; preds = %5
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @TWOCCFromFOURCC(i32 %186)
  %188 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %185, %184, %51, %35
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @AVIIF_KEYFRAME, align 4
  %196 = load i32, i32* %11, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %11, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %198
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = icmp eq %struct.TYPE_11__* %213, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp sge i32 %219, %222
  br i1 %223, label %224, label %270

224:                                              ; preds = %215, %210
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 512
  store i32 %228, i32* %226, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = icmp eq %struct.TYPE_11__* %231, null
  br i1 %232, label %233, label %246

233:                                              ; preds = %224
  %234 = call i32 (...) @GetProcessHeap()
  %235 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = mul i64 %239, 4
  %241 = trunc i64 %240 to i32
  %242 = call i8* @HeapAlloc(i32 %234, i32 %235, i32 %241)
  %243 = bitcast i8* %242 to %struct.TYPE_11__*
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 4
  store %struct.TYPE_11__* %243, %struct.TYPE_11__** %245, align 8
  br label %262

246:                                              ; preds = %224
  %247 = call i32 (...) @GetProcessHeap()
  %248 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %250, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = mul i64 %255, 4
  %257 = trunc i64 %256 to i32
  %258 = call i8* @HeapReAlloc(i32 %247, i32 %248, %struct.TYPE_11__* %251, i32 %257)
  %259 = bitcast i8* %258 to %struct.TYPE_11__*
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 4
  store %struct.TYPE_11__* %259, %struct.TYPE_11__** %261, align 8
  br label %262

262:                                              ; preds = %246, %233
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = icmp eq %struct.TYPE_11__* %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %268, i32* %6, align 4
  br label %335

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %215
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %8, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  store i32 %275, i32* %284, align 4
  %285 = load i32, i32* %11, align 4
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %287, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  store i32 %285, i32* %294, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 4
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %297, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 2
  store i32 %295, i32* %304, align 4
  %305 = load i32, i32* %9, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 4
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 3
  store i32 %305, i32* %314, align 4
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = icmp ule i64 %318, %322
  br i1 %323, label %324, label %333

324:                                              ; preds = %270
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 2
  store i64 %329, i64* %332, align 8
  br label %333

333:                                              ; preds = %324, %270
  %334 = load i32, i32* @AVIERR_OK, align 4
  store i32 %334, i32* %6, align 4
  br label %335

335:                                              ; preds = %333, %267, %127, %116, %100, %59
  %336 = load i32, i32* %6, align 4
  ret i32 %336
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TWOCCFromFOURCC(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapReAlloc(i32, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
