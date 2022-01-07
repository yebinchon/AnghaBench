; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_polygon2.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_polygon2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32, i32, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@.str = private unnamed_addr constant [68 x i8] c"POLYGON2(x=%d,y=%d,op=0x%x,fm=%d,bs=%d,bg=0x%x,fg=0x%x,n=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad ROP2 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"polygon2 parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*, i32, i32)* @process_polygon2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_polygon2(i32 %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rdp_in_coord(i32 %19, i8** %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 7
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @rdp_in_coord(i32 %29, i8** %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @in_uint8(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @in_uint8(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 6
  %62 = call i32 @rdp_in_colour(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = call i32 @rdp_in_colour(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 9
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 6
  %78 = call i32 @rdp_parse_brush(i32 %73, %struct.TYPE_11__* %75, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 2048
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @in_uint8(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %72
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 4096
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @in_uint8(i32 %93, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @in_uint8a(i32 %98, i32* %101, i32 %104)
  br label %106

106:                                              ; preds = %92, %88
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 8
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @DEBUG(i8* %136)
  %138 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %156, %106
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %139
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 @DEBUG(i8* %154)
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %139

159:                                              ; preds = %139
  %160 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %170, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 16
  br i1 %169, label %170, label %175

170:                                              ; preds = %165, %159
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %314

175:                                              ; preds = %165
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 9
  %178 = call i32 @setup_brush(i32* %14, %struct.TYPE_11__* %177)
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 16
  %185 = trunc i64 %184 to i32
  %186 = call i64 @xmalloc(i32 %185)
  %187 = inttoptr i64 %186 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %13, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 16
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memset(%struct.TYPE_9__* %188, i32 0, i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 8
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  store i8* %199, i8** %202, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 7
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i8* %205, i8** %208, align 8
  store i32 0, i32* %9, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %211, 1
  %213 = sdiv i32 %212, 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %215

215:                                              ; preds = %279, %175
  %216 = load i32, i32* %11, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp sle i32 %216, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %215
  %222 = load i32, i32* %11, align 4
  %223 = icmp slt i32 %222, 256
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br label %230

230:                                              ; preds = %224, %221, %215
  %231 = phi i1 [ false, %221 ], [ false, %215 ], [ %229, %224 ]
  br i1 %231, label %232, label %282

232:                                              ; preds = %230
  %233 = load i32, i32* %11, align 4
  %234 = sub nsw i32 %233, 1
  %235 = srem i32 %234, 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %237, %232
  %247 = load i32, i32* %12, align 4
  %248 = xor i32 %247, -1
  %249 = and i32 %248, 128
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = call i8* @parse_delta(i32* %254, i32* %10)
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  store i8* %255, i8** %260, align 8
  br label %261

261:                                              ; preds = %251, %246
  %262 = load i32, i32* %12, align 4
  %263 = xor i32 %262, -1
  %264 = and i32 %263, 64
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %261
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = call i8* @parse_delta(i32* %269, i32* %10)
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  store i8* %270, i8** %275, align 8
  br label %276

276:                                              ; preds = %266, %261
  %277 = load i32, i32* %12, align 4
  %278 = shl i32 %277, 2
  store i32 %278, i32* %12, align 4
  br label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %215

282:                                              ; preds = %230
  %283 = load i32, i32* %11, align 4
  %284 = sub nsw i32 %283, 1
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %284, %287
  br i1 %288, label %289, label %309

289:                                              ; preds = %282
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %292, 1
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, 1
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @ui_polygon(i32 %293, i32 %296, %struct.TYPE_9__* %297, i32 %301, i32* %14, i32 %304, i32 %307)
  br label %311

309:                                              ; preds = %282
  %310 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %289
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %313 = call i32 @xfree(%struct.TYPE_9__* %312)
  br label %314

314:                                              ; preds = %311, %170
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i8**, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @rdp_parse_brush(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @setup_brush(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @parse_delta(i32*, i32*) #1

declare dso_local i32 @ui_polygon(i32, i32, %struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32 @xfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
