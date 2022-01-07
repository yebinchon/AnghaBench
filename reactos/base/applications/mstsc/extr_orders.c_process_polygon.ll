; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_polygon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [53 x i8] c"POLYGON(x=%d,y=%d,op=0x%x,fm=%d,fg=0x%x,n=%d,sz=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Data: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad ROP2 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"polygon parse error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32, i32)* @process_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_polygon(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rdp_in_coord(i32 %18, i8** %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rdp_in_coord(i32 %28, i8** %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @in_uint8(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @in_uint8(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = call i32 @rdp_in_colour(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @in_uint8(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 64
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @in_uint8(i32 %77, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @in_uint8a(i32 %82, i32* %85, i32 %88)
  br label %90

90:                                               ; preds = %76, %72
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @DEBUG(i8* %113)
  %115 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %133, %90
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @DEBUG(i8* %131)
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %116

136:                                              ; preds = %116
  %137 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 16
  br i1 %146, label %147, label %152

147:                                              ; preds = %142, %136
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %285

152:                                              ; preds = %142
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 16
  %159 = trunc i64 %158 to i32
  %160 = call i64 @xmalloc(i32 %159)
  %161 = inttoptr i64 %160 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** %13, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 16
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memset(%struct.TYPE_7__* %162, i32 0, i32 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 7
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store i8* %173, i8** %176, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 6
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  store i32 0, i32* %9, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %185, 1
  %187 = sdiv i32 %186, 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %189

189:                                              ; preds = %253, %152
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp sle i32 %190, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %196, 256
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br label %204

204:                                              ; preds = %198, %195, %189
  %205 = phi i1 [ false, %195 ], [ false, %189 ], [ %203, %198 ]
  br i1 %205, label %206, label %256

206:                                              ; preds = %204
  %207 = load i32, i32* %11, align 4
  %208 = sub nsw i32 %207, 1
  %209 = srem i32 %208, 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %211, %206
  %221 = load i32, i32* %12, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %222, 128
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %220
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = call i8* @parse_delta(i32* %228, i32* %10)
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  store i8* %229, i8** %234, align 8
  br label %235

235:                                              ; preds = %225, %220
  %236 = load i32, i32* %12, align 4
  %237 = xor i32 %236, -1
  %238 = and i32 %237, 64
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = call i8* @parse_delta(i32* %243, i32* %10)
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  store i8* %244, i8** %249, align 8
  br label %250

250:                                              ; preds = %240, %235
  %251 = load i32, i32* %12, align 4
  %252 = shl i32 %251, 2
  store i32 %252, i32* %12, align 4
  br label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  br label %189

256:                                              ; preds = %204
  %257 = load i32, i32* %11, align 4
  %258 = sub nsw i32 %257, 1
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %258, %261
  br i1 %262, label %263, label %280

263:                                              ; preds = %256
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sub nsw i32 %266, 1
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @ui_polygon(i32 %267, i32 %270, %struct.TYPE_7__* %271, i32 %275, i32* null, i32 0, i32 %278)
  br label %282

280:                                              ; preds = %256
  %281 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %263
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %284 = call i32 @xfree(%struct.TYPE_7__* %283)
  br label %285

285:                                              ; preds = %282, %147
  ret void
}

declare dso_local i32 @rdp_in_coord(i32, i8**, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @parse_delta(i32*, i32*) #1

declare dso_local i32 @ui_polygon(i32, i32, %struct.TYPE_7__*, i32, i32*, i32, i32) #1

declare dso_local i32 @xfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
