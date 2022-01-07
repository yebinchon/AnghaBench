; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngtrans.c_png_do_strip_filler.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngtrans.c_png_do_strip_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"in png_do_strip_filler\0A\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4
@PNG_FLAG_STRIP_ALPHA = common dso_local global i32 0, align 4
@PNG_FLAG_FILLER_AFTER = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_strip_filler(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %216

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PNG_FLAG_STRIP_ALPHA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %216

33:                                               ; preds = %28, %3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %216

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %113

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %7, align 8
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %75, %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  %60 = load i32, i32* %58, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* %63, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  %70 = load i32, i32* %68, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %53

78:                                               ; preds = %53
  br label %106

79:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  %89 = load i32, i32* %87, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %7, align 8
  %94 = load i32, i32* %92, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %7, align 8
  %99 = load i32, i32* %97, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %102

102:                                              ; preds = %84
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %80

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %78
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  store i32 24, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %109, 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %213

113:                                              ; preds = %38
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %164

118:                                              ; preds = %113
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 6
  store i32* %122, i32** %8, align 8
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %160, %118
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %123
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %7, align 8
  %130 = load i32, i32* %128, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %7, align 8
  %135 = load i32, i32* %133, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %7, align 8
  %140 = load i32, i32* %138, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %7, align 8
  %145 = load i32, i32* %143, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %7, align 8
  %150 = load i32, i32* %148, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %7, align 8
  %155 = load i32, i32* %153, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32* %159, i32** %7, align 8
  br label %160

160:                                              ; preds = %127
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %123

163:                                              ; preds = %123
  br label %206

164:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %202, %164
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %205

169:                                              ; preds = %165
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32* %171, i32** %7, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %7, align 8
  %174 = load i32, i32* %172, align 4
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %8, align 8
  store i32 %174, i32* %175, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %7, align 8
  %179 = load i32, i32* %177, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %7, align 8
  %184 = load i32, i32* %182, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %8, align 8
  store i32 %184, i32* %185, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %7, align 8
  %189 = load i32, i32* %187, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %8, align 8
  store i32 %189, i32* %190, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %7, align 8
  %194 = load i32, i32* %192, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %8, align 8
  store i32 %194, i32* %195, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %7, align 8
  %199 = load i32, i32* %197, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %8, align 8
  store i32 %199, i32* %200, align 4
  br label %202

202:                                              ; preds = %169
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %165

205:                                              ; preds = %165
  br label %206

206:                                              ; preds = %205, %163
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 3
  store i32 48, i32* %208, align 4
  %209 = load i32, i32* %9, align 4
  %210 = mul nsw i32 %209, 6
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %206, %106
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  store i32 3, i32* %215, align 4
  br label %352

216:                                              ; preds = %33, %28, %22
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %233, label %222

222:                                              ; preds = %216
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %351

228:                                              ; preds = %222
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @PNG_FLAG_STRIP_ALPHA, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %351

233:                                              ; preds = %228, %216
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %351

238:                                              ; preds = %233
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %288

243:                                              ; preds = %238
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %265

248:                                              ; preds = %243
  store i32 0, i32* %10, align 4
  br label %249

249:                                              ; preds = %261, %248
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %249
  %254 = load i32*, i32** %7, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %7, align 8
  %256 = load i32, i32* %254, align 4
  %257 = load i32*, i32** %8, align 8
  %258 = getelementptr inbounds i32, i32* %257, i32 1
  store i32* %258, i32** %8, align 8
  store i32 %256, i32* %257, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %260, i32** %7, align 8
  br label %261

261:                                              ; preds = %253
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %10, align 4
  br label %249

264:                                              ; preds = %249
  br label %282

265:                                              ; preds = %243
  store i32 0, i32* %10, align 4
  br label %266

266:                                              ; preds = %278, %265
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %266
  %271 = load i32*, i32** %7, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %7, align 8
  %273 = load i32*, i32** %7, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %7, align 8
  %275 = load i32, i32* %273, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %8, align 8
  store i32 %275, i32* %276, align 4
  br label %278

278:                                              ; preds = %270
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %10, align 4
  br label %266

281:                                              ; preds = %266
  br label %282

282:                                              ; preds = %281, %264
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 3
  store i32 8, i32* %284, align 4
  %285 = load i32, i32* %9, align 4
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 4
  br label %348

288:                                              ; preds = %238
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %319

293:                                              ; preds = %288
  %294 = load i32*, i32** %7, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 4
  store i32* %295, i32** %7, align 8
  %296 = load i32*, i32** %8, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  store i32* %297, i32** %8, align 8
  store i32 1, i32* %10, align 4
  br label %298

298:                                              ; preds = %315, %293
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %9, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %318

302:                                              ; preds = %298
  %303 = load i32*, i32** %7, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %7, align 8
  %305 = load i32, i32* %303, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 1
  store i32* %307, i32** %8, align 8
  store i32 %305, i32* %306, align 4
  %308 = load i32*, i32** %7, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 1
  store i32* %309, i32** %7, align 8
  %310 = load i32, i32* %308, align 4
  %311 = load i32*, i32** %8, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %8, align 8
  store i32 %310, i32* %311, align 4
  %313 = load i32*, i32** %7, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  store i32* %314, i32** %7, align 8
  br label %315

315:                                              ; preds = %302
  %316 = load i32, i32* %10, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %10, align 4
  br label %298

318:                                              ; preds = %298
  br label %341

319:                                              ; preds = %288
  store i32 0, i32* %10, align 4
  br label %320

320:                                              ; preds = %337, %319
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* %9, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %340

324:                                              ; preds = %320
  %325 = load i32*, i32** %7, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 2
  store i32* %326, i32** %7, align 8
  %327 = load i32*, i32** %7, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %7, align 8
  %329 = load i32, i32* %327, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %8, align 8
  store i32 %329, i32* %330, align 4
  %332 = load i32*, i32** %7, align 8
  %333 = getelementptr inbounds i32, i32* %332, i32 1
  store i32* %333, i32** %7, align 8
  %334 = load i32, i32* %332, align 4
  %335 = load i32*, i32** %8, align 8
  %336 = getelementptr inbounds i32, i32* %335, i32 1
  store i32* %336, i32** %8, align 8
  store i32 %334, i32* %335, align 4
  br label %337

337:                                              ; preds = %324
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %320

340:                                              ; preds = %320
  br label %341

341:                                              ; preds = %340, %318
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 3
  store i32 16, i32* %343, align 4
  %344 = load i32, i32* %9, align 4
  %345 = mul nsw i32 %344, 2
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %341, %282
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 1
  store i32 1, i32* %350, align 4
  br label %351

351:                                              ; preds = %348, %233, %228, %222
  br label %352

352:                                              ; preds = %351, %213
  %353 = load i32, i32* %6, align 4
  %354 = load i32, i32* @PNG_FLAG_STRIP_ALPHA, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %352
  %358 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %359 = xor i32 %358, -1
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = and i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %357, %352
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
