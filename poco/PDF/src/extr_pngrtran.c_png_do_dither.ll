; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_dither.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"in png_do_dither\0A\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_DITHER_RED_BITS = common dso_local global i32 0, align 4
@PNG_DITHER_GREEN_BITS = common dso_local global i32 0, align 4
@PNG_DITHER_BLUE_BITS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_dither(%struct.TYPE_3__* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %118

30:                                               ; preds = %4
  %31 = load i64*, i64** %7, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %118

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %118

38:                                               ; preds = %33
  %39 = load i64*, i64** %6, align 8
  store i64* %39, i64** %9, align 8
  %40 = load i64*, i64** %6, align 8
  store i64* %40, i64** %10, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %97, %38
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %100

45:                                               ; preds = %41
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %9, align 8
  %48 = load i64, i64* %46, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %9, align 8
  %52 = load i64, i64* %50, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load i64*, i64** %9, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %9, align 8
  %56 = load i64, i64* %54, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @PNG_DITHER_RED_BITS, align 4
  %60 = sub nsw i32 8, %59
  %61 = ashr i32 %58, %60
  %62 = load i32, i32* @PNG_DITHER_RED_BITS, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %61, %64
  %66 = load i32, i32* @PNG_DITHER_GREEN_BITS, align 4
  %67 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %68 = add nsw i32 %66, %67
  %69 = shl i32 %65, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @PNG_DITHER_GREEN_BITS, align 4
  %72 = sub nsw i32 8, %71
  %73 = ashr i32 %70, %72
  %74 = load i32, i32* @PNG_DITHER_GREEN_BITS, align 4
  %75 = shl i32 1, %74
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %73, %76
  %78 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %69, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %83 = sub nsw i32 8, %82
  %84 = ashr i32 %81, %83
  %85 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %84, %87
  %89 = or i32 %80, %88
  store i32 %89, i32* %16, align 4
  %90 = load i64*, i64** %7, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %10, align 8
  store i64 %94, i64* %95, align 8
  br label %97

97:                                               ; preds = %45
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %41

100:                                              ; preds = %41
  %101 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i8* @PNG_ROWBYTES(i32 %113, i64 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  br label %249

118:                                              ; preds = %33, %30, %4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %214

124:                                              ; preds = %118
  %125 = load i64*, i64** %7, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %214

127:                                              ; preds = %124
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %132, label %214

132:                                              ; preds = %127
  %133 = load i64*, i64** %6, align 8
  store i64* %133, i64** %9, align 8
  %134 = load i64*, i64** %6, align 8
  store i64* %134, i64** %10, align 8
  store i64 0, i64* %11, align 8
  br label %135

135:                                              ; preds = %193, %132
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %196

139:                                              ; preds = %135
  %140 = load i64*, i64** %9, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %9, align 8
  %142 = load i64, i64* %140, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %17, align 4
  %144 = load i64*, i64** %9, align 8
  %145 = getelementptr inbounds i64, i64* %144, i32 1
  store i64* %145, i64** %9, align 8
  %146 = load i64, i64* %144, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %18, align 4
  %148 = load i64*, i64** %9, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %9, align 8
  %150 = load i64, i64* %148, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %19, align 4
  %152 = load i64*, i64** %9, align 8
  %153 = getelementptr inbounds i64, i64* %152, i32 1
  store i64* %153, i64** %9, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @PNG_DITHER_RED_BITS, align 4
  %156 = sub nsw i32 8, %155
  %157 = ashr i32 %154, %156
  %158 = load i32, i32* @PNG_DITHER_RED_BITS, align 4
  %159 = shl i32 1, %158
  %160 = sub nsw i32 %159, 1
  %161 = and i32 %157, %160
  %162 = load i32, i32* @PNG_DITHER_GREEN_BITS, align 4
  %163 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %164 = add nsw i32 %162, %163
  %165 = shl i32 %161, %164
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* @PNG_DITHER_GREEN_BITS, align 4
  %168 = sub nsw i32 8, %167
  %169 = ashr i32 %166, %168
  %170 = load i32, i32* @PNG_DITHER_GREEN_BITS, align 4
  %171 = shl i32 1, %170
  %172 = sub nsw i32 %171, 1
  %173 = and i32 %169, %172
  %174 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %175 = shl i32 %173, %174
  %176 = or i32 %165, %175
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %179 = sub nsw i32 8, %178
  %180 = ashr i32 %177, %179
  %181 = load i32, i32* @PNG_DITHER_BLUE_BITS, align 4
  %182 = shl i32 1, %181
  %183 = sub nsw i32 %182, 1
  %184 = and i32 %180, %183
  %185 = or i32 %176, %184
  store i32 %185, i32* %20, align 4
  %186 = load i64*, i64** %7, align 8
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %10, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %10, align 8
  store i64 %190, i64* %191, align 8
  br label %193

193:                                              ; preds = %139
  %194 = load i64, i64* %11, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %11, align 8
  br label %135

196:                                              ; preds = %135
  %197 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 3
  store i32 1, i32* %201, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i64, i64* %12, align 8
  %211 = call i8* @PNG_ROWBYTES(i32 %209, i64 %210)
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 5
  store i8* %211, i8** %213, align 8
  br label %248

214:                                              ; preds = %127, %124, %118
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %214
  %221 = load i64*, i64** %8, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %223, label %247

223:                                              ; preds = %220
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 8
  br i1 %227, label %228, label %247

228:                                              ; preds = %223
  %229 = load i64*, i64** %6, align 8
  store i64* %229, i64** %9, align 8
  store i64 0, i64* %11, align 8
  br label %230

230:                                              ; preds = %241, %228
  %231 = load i64, i64* %11, align 8
  %232 = load i64, i64* %12, align 8
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load i64*, i64** %8, align 8
  %236 = load i64*, i64** %9, align 8
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %9, align 8
  store i64 %239, i64* %240, align 8
  br label %241

241:                                              ; preds = %234
  %242 = load i64, i64* %11, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %11, align 8
  %244 = load i64*, i64** %9, align 8
  %245 = getelementptr inbounds i64, i64* %244, i32 1
  store i64* %245, i64** %9, align 8
  br label %230

246:                                              ; preds = %230
  br label %247

247:                                              ; preds = %246, %223, %220, %214
  br label %248

248:                                              ; preds = %247, %196
  br label %249

249:                                              ; preds = %248, %100
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i8* @PNG_ROWBYTES(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
