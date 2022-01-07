; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_LWZReadByte_.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_LWZReadByte_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32**, i32*, i32*, i32, i32, i32, i8* }

@TRUE = common dso_local global i8* null, align 8
@MAX_LWZ_BITS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@STACK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8, i32, i32*)* @LWZReadByte_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LWZReadByte_(i32* %0, %struct.TYPE_3__* %1, i8 signext %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [260 x i8], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i8, i8* %9, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %119

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 2, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 11
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i8* @GetCode(i32* %53, i32* %55, i32 0, i8* %56, i32* %57)
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 12
  store i8* %59, i8** %61, align 8
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %86, %19
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %68
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %62

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %110, %89
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @MAX_LWZ_BITS, align 4
  %93 = shl i32 1, %92
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 0, i32* %101, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %95
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %90

113:                                              ; preds = %90
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 7
  store i32* %116, i32** %118, align 8
  store i32 0, i32* %6, align 4
  br label %487

119:                                              ; preds = %5
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 12
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %155

124:                                              ; preds = %119
  %125 = load i8*, i8** @FALSE, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 12
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %143, %124
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 11
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** @FALSE, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i8* @GetCode(i32* %129, i32* %131, i32 %134, i8* %135, i32* %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 9
  store i32 %138, i32* %142, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %128, label %151

151:                                              ; preds = %143
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %6, align 4
  br label %487

155:                                              ; preds = %119
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 7
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 8
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ugt i32* %159, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 -1
  store i32* %168, i32** %166, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %6, align 4
  br label %487

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %484, %170
  %172 = load i32*, i32** %7, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 11
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** @FALSE, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = call i8* @GetCode(i32* %172, i32* %174, i32 %177, i8* %178, i32* %179)
  %181 = ptrtoint i8* %180 to i32
  store i32 %181, i32* %12, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %485

183:                                              ; preds = %171
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %184, %187
  br i1 %188, label %189, label %284

189:                                              ; preds = %183
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %214, %189
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %217

196:                                              ; preds = %190
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 6
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 0, i32* %204, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 6
  %208 = load i32**, i32*** %207, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %205, i32* %213, align 4
  br label %214

214:                                              ; preds = %196
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  br label %190

217:                                              ; preds = %190
  br label %218

218:                                              ; preds = %240, %217
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @MAX_LWZ_BITS, align 4
  %221 = shl i32 1, %220
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %218
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 6
  %226 = load i32**, i32*** %225, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 0, i32* %231, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 6
  %234 = load i32**, i32*** %233, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 0, i32* %239, align 4
  br label %240

240:                                              ; preds = %223
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  br label %218

243:                                              ; preds = %218
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = mul nsw i32 2, %252
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, 2
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 5
  store i32 %259, i32* %261, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 8
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 7
  store i32* %264, i32** %266, align 8
  %267 = load i32*, i32** %7, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 11
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i8*, i8** @FALSE, align 8
  %274 = load i32*, i32** %11, align 8
  %275 = call i8* @GetCode(i32* %267, i32* %269, i32 %272, i8* %273, i32* %274)
  %276 = ptrtoint i8* %275 to i32
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 10
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 9
  store i32 %276, i32* %280, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %6, align 4
  br label %487

284:                                              ; preds = %183
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %290, label %308

290:                                              ; preds = %284
  %291 = load i32*, i32** %11, align 8
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i32 -2, i32* %6, align 4
  br label %487

295:                                              ; preds = %290
  br label %296

296:                                              ; preds = %302, %295
  %297 = load i32*, i32** %7, align 8
  %298 = getelementptr inbounds [260 x i8], [260 x i8]* %16, i64 0, i64 0
  %299 = load i32*, i32** %11, align 8
  %300 = call i32 @GetDataBlock(i32* %297, i8* %298, i32* %299)
  store i32 %300, i32* %15, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %296

303:                                              ; preds = %296
  %304 = load i32, i32* %15, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i32 -2, i32* %6, align 4
  br label %487

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307, %284
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %12, align 4
  store i32 %310, i32* %13, align 4
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 7
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 8
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* @STACK_SIZE, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = icmp eq i32* %313, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %309
  store i32 -1, i32* %6, align 4
  br label %487

322:                                              ; preds = %309
  %323 = load i32, i32* %12, align 4
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = icmp sge i32 %323, %326
  br i1 %327, label %328, label %339

328:                                              ; preds = %322
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 9
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 7
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %335, i32** %333, align 8
  store i32 %331, i32* %334, align 4
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 10
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %12, align 4
  br label %339

339:                                              ; preds = %328, %322
  br label %340

340:                                              ; preds = %384, %339
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp sge i32 %341, %344
  br i1 %345, label %346, label %394

346:                                              ; preds = %340
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 7
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 8
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* @STACK_SIZE, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = icmp eq i32* %349, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %346
  store i32 -1, i32* %6, align 4
  br label %487

358:                                              ; preds = %346
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 6
  %361 = load i32**, i32*** %360, align 8
  %362 = getelementptr inbounds i32*, i32** %361, i64 1
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 7
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i32 1
  store i32* %371, i32** %369, align 8
  store i32 %367, i32* %370, align 4
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 6
  %375 = load i32**, i32*** %374, align 8
  %376 = getelementptr inbounds i32*, i32** %375, i64 0
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %12, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = icmp eq i32 %372, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %358
  br label %384

384:                                              ; preds = %383, %358
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 6
  %387 = load i32**, i32*** %386, align 8
  %388 = getelementptr inbounds i32*, i32** %387, i64 0
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* %12, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %12, align 4
  br label %340

394:                                              ; preds = %340
  %395 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 6
  %397 = load i32**, i32*** %396, align 8
  %398 = getelementptr inbounds i32*, i32** %397, i64 1
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 9
  store i32 %403, i32* %405, align 8
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 7
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i32 1
  store i32* %409, i32** %407, align 8
  store i32 %403, i32* %408, align 4
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 5
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* %12, align 4
  %413 = load i32, i32* @MAX_LWZ_BITS, align 4
  %414 = shl i32 1, %413
  %415 = icmp slt i32 %412, %414
  br i1 %415, label %416, label %467

416:                                              ; preds = %394
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 10
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 6
  %422 = load i32**, i32*** %421, align 8
  %423 = getelementptr inbounds i32*, i32** %422, i64 0
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  store i32 %419, i32* %427, align 4
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 9
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 6
  %433 = load i32**, i32*** %432, align 8
  %434 = getelementptr inbounds i32*, i32** %433, i64 1
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %12, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %430, i32* %438, align 4
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 5
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %440, align 4
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 5
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 8
  %449 = icmp sge i32 %445, %448
  br i1 %449, label %450, label %466

450:                                              ; preds = %416
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @MAX_LWZ_BITS, align 4
  %455 = shl i32 1, %454
  %456 = icmp slt i32 %453, %455
  br i1 %456, label %457, label %466

457:                                              ; preds = %450
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  %461 = mul nsw i32 %460, 2
  store i32 %461, i32* %459, align 8
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %463, align 4
  br label %466

466:                                              ; preds = %457, %450, %416
  br label %467

467:                                              ; preds = %466, %394
  %468 = load i32, i32* %13, align 4
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 10
  store i32 %468, i32* %470, align 4
  %471 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 7
  %473 = load i32*, i32** %472, align 8
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 8
  %476 = load i32*, i32** %475, align 8
  %477 = icmp ugt i32* %473, %476
  br i1 %477, label %478, label %484

478:                                              ; preds = %467
  %479 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 7
  %481 = load i32*, i32** %480, align 8
  %482 = getelementptr inbounds i32, i32* %481, i32 -1
  store i32* %482, i32** %480, align 8
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* %6, align 4
  br label %487

484:                                              ; preds = %467
  br label %171

485:                                              ; preds = %171
  %486 = load i32, i32* %12, align 4
  store i32 %486, i32* %6, align 4
  br label %487

487:                                              ; preds = %485, %478, %357, %321, %306, %294, %243, %164, %151, %113
  %488 = load i32, i32* %6, align 4
  ret i32 %488
}

declare dso_local i8* @GetCode(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @GetDataBlock(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
