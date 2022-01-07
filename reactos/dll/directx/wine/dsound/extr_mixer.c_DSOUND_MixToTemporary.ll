; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixToTemporary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixToTemporary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"(%p) Same sample rate %d = primary %d\0A\00", align 1
@DSOUND_FREQSHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(%p) Adjusting frequency: %d -> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Overshot: %d, freqAcc: %04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DSOUND_MixToTemporary(%struct.TYPE_13__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %35, %4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %43, %35
  br label %296

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %73, %65, %53
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @DSOUND_secpos_to_bufpos(%struct.TYPE_13__* %82, i32 %83, i32 0, i32* null)
  store i32 %84, i32* %18, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %81
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %12, align 8
  br label %160

99:                                               ; preds = %81
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %99
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %153, label %114

114:                                              ; preds = %107, %99
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %114
  %127 = call i32 (...) @GetProcessHeap()
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i32* @HeapReAlloc(i32 %127, i32 0, i32* %132, i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i32* %134, i32** %138, align 8
  br label %147

139:                                              ; preds = %114
  %140 = call i32 (...) @GetProcessHeap()
  %141 = load i32, i32* %18, align 4
  %142 = call i32* @HeapAlloc(i32 %140, i32 0, i32 %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  store i32* %142, i32** %146, align 8
  br label %147

147:                                              ; preds = %139, %126
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %12, align 8
  br label %159

153:                                              ; preds = %107
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %12, align 8
  br label %159

159:                                              ; preds = %153, %147
  br label %160

160:                                              ; preds = %159, %95
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %161, i32* %162)
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %13, align 4
  %166 = sdiv i32 %164, %165
  store i32 %166, i32* %9, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %169, %176
  br i1 %177, label %178, label %213

178:                                              ; preds = %160
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %179, i32 %182, i32 %189)
  %191 = load i32*, i32** %12, align 8
  store i32* %191, i32** %11, align 8
  %192 = load i64, i64* %8, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %178
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %13, align 4
  %197 = sdiv i32 %195, %196
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32*, i32** %11, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %11, align 8
  br label %203

203:                                              ; preds = %194, %178
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %211 = shl i32 1, %210
  %212 = call i32 @cp_fields(%struct.TYPE_13__* %204, i32* %205, i32* %206, i32 %207, i32 %208, i32 %209, i32 0, i32 %211)
  br label %296

213:                                              ; preds = %160
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %214, i32 %217, i32 %224)
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @DSOUND_secpos_to_bufpos(%struct.TYPE_13__* %226, i32 %227, i32 %230, i32* %15)
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %234 = ashr i32 %232, %233
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %274

237:                                              ; preds = %213
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp sge i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %296

242:                                              ; preds = %237
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %9, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %13, align 4
  %248 = mul nsw i32 %246, %247
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp sge i32 %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %242
  br label %296

257:                                              ; preds = %242
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32* %265, i32** %10, align 8
  %266 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %267 = shl i32 1, %266
  %268 = sub nsw i32 %267, 1
  %269 = load i32, i32* %15, align 4
  %270 = and i32 %269, %268
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %17, align 4
  %272 = load i32, i32* %15, align 4
  %273 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %257, %213
  %275 = load i64, i64* %8, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %274
  %278 = load i32*, i32** %12, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32* %281, i32** %11, align 8
  br label %284

282:                                              ; preds = %274
  %283 = load i32*, i32** %12, align 8
  store i32* %283, i32** %11, align 8
  br label %284

284:                                              ; preds = %282, %277
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %286 = load i32*, i32** %10, align 8
  %287 = load i32*, i32** %11, align 8
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @cp_fields(%struct.TYPE_13__* %285, i32* %286, i32* %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %294)
  br label %296

296:                                              ; preds = %284, %256, %241, %203, %52
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DSOUND_secpos_to_bufpos(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32* @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @cp_fields(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
