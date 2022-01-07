; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__gif_load_next.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__gif_load_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32**, i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bad Image Descriptor\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Corrupt GIF\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"missing color table\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unknown code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, i32*, i32)* @stbi__gif_load_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__gif_load_next(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @stbi__gif_header(i32* %24, %struct.TYPE_6__* %25, i32* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32* null, i32** %5, align 8
  br label %436

30:                                               ; preds = %23, %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 4, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = call i64 @stbi__malloc(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %51, i32** %5, align 8
  br label %436

52:                                               ; preds = %30
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 28
  %57 = ashr i32 %56, 2
  switch i32 %57, label %179 [
    i32 0, label %58
    i32 1, label %73
    i32 2, label %94
    i32 3, label %126
  ]

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 4, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 4, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = call i32 @stbi__fill_gif_background(%struct.TYPE_6__* %59, i32 0, i32 0, i32 %63, i32 %71)
  br label %179

73:                                               ; preds = %52
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 4, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = call i32 @memcpy(i32* %79, i32* %80, i32 %88)
  br label %90

90:                                               ; preds = %76, %73
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  store i32* %91, i32** %93, align 8
  br label %179

94:                                               ; preds = %52
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 4, %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = call i32 @memcpy(i32* %100, i32* %101, i32 %109)
  br label %111

111:                                              ; preds = %97, %94
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @stbi__fill_gif_background(%struct.TYPE_6__* %112, i32 %115, i32 %118, i32 %121, i32 %124)
  br label %179

126:                                              ; preds = %52
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %178

131:                                              ; preds = %126
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %170, %131
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %177

141:                                              ; preds = %135
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %144, i64 %150
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %164, %167
  %169 = call i32 @memcpy(i32* %151, i32* %161, i32 %168)
  br label %170

170:                                              ; preds = %141
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 4, %173
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %135

177:                                              ; preds = %135
  br label %178

178:                                              ; preds = %177, %126
  br label %179

179:                                              ; preds = %52, %178, %111, %90, %58
  br label %180

180:                                              ; preds = %435, %179
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @stbi__get8(i32* %181)
  switch i32 %182, label %433 [
    i32 44, label %183
    i32 33, label %394
    i32 59, label %431
  ]

183:                                              ; preds = %180
  store i32 -1, i32* %12, align 4
  %184 = load i32*, i32** %6, align 8
  %185 = call i8* @stbi__get16le(i32* %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %13, align 4
  %187 = load i32*, i32** %6, align 8
  %188 = call i8* @stbi__get16le(i32* %187)
  %189 = ptrtoint i8* %188 to i32
  store i32 %189, i32* %14, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = call i8* @stbi__get16le(i32* %190)
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %15, align 4
  %193 = load i32*, i32** %6, align 8
  %194 = call i8* @stbi__get16le(i32* %193)
  %195 = ptrtoint i8* %194 to i32
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %196, %197
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp sgt i32 %198, %201
  br i1 %202, label %211, label %203

203:                                              ; preds = %183
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %204, %205
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp sgt i32 %206, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %203, %183
  %212 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %212, i32** %5, align 8
  br label %436

213:                                              ; preds = %203
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %216, 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %13, align 4
  %221 = mul nsw i32 %220, 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 8
  %228 = mul nsw i32 %224, %227
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = mul nsw i32 %234, 4
  %236 = add nsw i32 %233, %235
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 7
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %16, align 4
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = mul nsw i32 %242, %245
  %247 = add nsw i32 %241, %246
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 8
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 10
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 11
  store i32 %257, i32* %259, align 8
  %260 = load i32*, i32** %6, align 8
  %261 = call i32 @stbi__get8(i32* %260)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 12
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 12
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 64
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %213
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 8
  %273 = mul nsw i32 8, %272
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 13
  store i32 %273, i32* %275, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 14
  store i32 3, i32* %277, align 4
  br label %286

278:                                              ; preds = %213
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 13
  store i32 %281, i32* %283, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 14
  store i32 0, i32* %285, align 4
  br label %286

286:                                              ; preds = %278, %269
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 12
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 128
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %321

292:                                              ; preds = %286
  %293 = load i32*, i32** %6, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 20
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 7
  %301 = shl i32 2, %300
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = and i32 %304, 1
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %292
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 15
  %310 = load i32, i32* %309, align 8
  br label %312

311:                                              ; preds = %292
  br label %312

312:                                              ; preds = %311, %307
  %313 = phi i32 [ %310, %307 ], [ -1, %311 ]
  %314 = call i32 @stbi__gif_parse_colortable(i32* %293, i64 %296, i32 %301, i32 %313)
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 20
  %317 = load i64, i64* %316, align 8
  %318 = inttoptr i64 %317 to i32*
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 16
  store i32* %318, i32** %320, align 8
  br label %370

321:                                              ; preds = %286
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 17
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, 128
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %367

327:                                              ; preds = %321
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 15
  %330 = load i32, i32* %329, align 8
  %331 = icmp sge i32 %330, 0
  br i1 %331, label %332, label %360

332:                                              ; preds = %327
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, 1
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %360

338:                                              ; preds = %332
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 18
  %341 = load i32**, i32*** %340, align 8
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 15
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %341, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 3
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %12, align 4
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 18
  %352 = load i32**, i32*** %351, align 8
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 15
  %355 = load i32, i32* %354, align 8
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %352, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 3
  store i32 0, i32* %359, align 4
  br label %360

360:                                              ; preds = %338, %332, %327
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 18
  %363 = load i32**, i32*** %362, align 8
  %364 = bitcast i32** %363 to i32*
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 16
  store i32* %364, i32** %366, align 8
  br label %369

367:                                              ; preds = %321
  %368 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %368, i32** %5, align 8
  br label %436

369:                                              ; preds = %360
  br label %370

370:                                              ; preds = %369, %312
  %371 = load i32*, i32** %6, align 8
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %373 = call i32* @stbi__process_gif_raster(i32* %371, %struct.TYPE_6__* %372)
  store i32* %373, i32** %17, align 8
  %374 = load i32*, i32** %17, align 8
  %375 = icmp eq i32* %374, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %370
  store i32* null, i32** %5, align 8
  br label %436

377:                                              ; preds = %370
  %378 = load i32, i32* %12, align 4
  %379 = icmp ne i32 %378, -1
  br i1 %379, label %380, label %392

380:                                              ; preds = %377
  %381 = load i32, i32* %12, align 4
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 18
  %384 = load i32**, i32*** %383, align 8
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 15
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32*, i32** %384, i64 %388
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 3
  store i32 %381, i32* %391, align 4
  br label %392

392:                                              ; preds = %380, %377
  %393 = load i32*, i32** %17, align 8
  store i32* %393, i32** %5, align 8
  br label %436

394:                                              ; preds = %180
  %395 = load i32*, i32** %6, align 8
  %396 = call i32 @stbi__get8(i32* %395)
  %397 = icmp eq i32 %396, 249
  br i1 %397, label %398, label %421

398:                                              ; preds = %394
  %399 = load i32*, i32** %6, align 8
  %400 = call i32 @stbi__get8(i32* %399)
  store i32 %400, i32* %18, align 4
  %401 = load i32, i32* %18, align 4
  %402 = icmp eq i32 %401, 4
  br i1 %402, label %403, label %416

403:                                              ; preds = %398
  %404 = load i32*, i32** %6, align 8
  %405 = call i32 @stbi__get8(i32* %404)
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 3
  store i32 %405, i32* %407, align 8
  %408 = load i32*, i32** %6, align 8
  %409 = call i8* @stbi__get16le(i32* %408)
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 19
  store i8* %409, i8** %411, align 8
  %412 = load i32*, i32** %6, align 8
  %413 = call i32 @stbi__get8(i32* %412)
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 15
  store i32 %413, i32* %415, align 8
  br label %420

416:                                              ; preds = %398
  %417 = load i32*, i32** %6, align 8
  %418 = load i32, i32* %18, align 4
  %419 = call i32 @stbi__skip(i32* %417, i32 %418)
  br label %435

420:                                              ; preds = %403
  br label %421

421:                                              ; preds = %420, %394
  br label %422

422:                                              ; preds = %426, %421
  %423 = load i32*, i32** %6, align 8
  %424 = call i32 @stbi__get8(i32* %423)
  store i32 %424, i32* %18, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %422
  %427 = load i32*, i32** %6, align 8
  %428 = load i32, i32* %18, align 4
  %429 = call i32 @stbi__skip(i32* %427, i32 %428)
  br label %422

430:                                              ; preds = %422
  br label %435

431:                                              ; preds = %180
  %432 = load i32*, i32** %6, align 8
  store i32* %432, i32** %5, align 8
  br label %436

433:                                              ; preds = %180
  %434 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %434, i32** %5, align 8
  br label %436

435:                                              ; preds = %430, %416
  br label %180

436:                                              ; preds = %433, %431, %392, %376, %367, %211, %50, %29
  %437 = load i32*, i32** %5, align 8
  ret i32* %437
}

declare dso_local i32 @stbi__gif_header(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__fill_gif_background(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i8* @stbi__get16le(i32*) #1

declare dso_local i32 @stbi__gif_parse_colortable(i32*, i64, i32, i32) #1

declare dso_local i32* @stbi__process_gif_raster(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
