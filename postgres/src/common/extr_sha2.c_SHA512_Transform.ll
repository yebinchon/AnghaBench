; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_sha2.c_SHA512_Transform.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_sha2.c_SHA512_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@K512 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @SHA512_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Transform(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %17, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %158, %2
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 7
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 6
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 8
  %73 = or i32 %67, %72
  %74 = load i64*, i64** %4, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 5
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 16
  %79 = or i32 %73, %78
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 4
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %83, 24
  %85 = or i32 %79, %84
  %86 = load i64*, i64** %4, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 3
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 %89, 32
  %91 = or i32 %85, %90
  %92 = load i64*, i64** %4, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = shl i32 %95, 40
  %97 = or i32 %91, %96
  %98 = load i64*, i64** %4, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 %101, 48
  %103 = or i32 %97, %102
  %104 = load i64*, i64** %4, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 %107, 56
  %109 = or i32 %103, %108
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  %114 = load i64*, i64** %4, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 8
  store i64* %115, i64** %4, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @Sigma1_512(i32 %117)
  %119 = add nsw i32 %116, %118
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @Ch(i32 %120, i32 %121, i32 %122)
  %124 = add nsw i32 %119, %123
  %125 = load i32*, i32** @K512, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %124, %129
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %130, %135
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @Sigma0_512(i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @Maj(i32 %139, i32 %140, i32 %141)
  %143 = add nsw i32 %138, %142
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %5, align 4
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %63
  %159 = load i32, i32* %18, align 4
  %160 = icmp slt i32 %159, 16
  br i1 %160, label %63, label %161

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %236, %161
  %163 = load i32*, i32** %17, align 8
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  %166 = and i32 %165, 15
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @sigma0_512(i32 %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 14
  %175 = and i32 %174, 15
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @sigma1_512(i32 %179)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @Sigma1_512(i32 %182)
  %184 = add nsw i32 %181, %183
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @Ch(i32 %185, i32 %186, i32 %187)
  %189 = add nsw i32 %184, %188
  %190 = load i32*, i32** @K512, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %189, %194
  %196 = load i32, i32* %14, align 4
  %197 = load i32*, i32** %17, align 8
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, 9
  %200 = and i32 %199, 15
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %196, %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* %18, align 4
  %209 = and i32 %208, 15
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %206
  store i32 %213, i32* %211, align 4
  %214 = add nsw i32 %195, %213
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @Sigma0_512(i32 %215)
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @Maj(i32 %217, i32 %218, i32 %219)
  %221 = add nsw i32 %216, %220
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %225, %226
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %6, align 4
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %5, align 4
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %231, %232
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %236

236:                                              ; preds = %162
  %237 = load i32, i32* %18, align 4
  %238 = icmp slt i32 %237, 80
  br i1 %238, label %162, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %5, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, %240
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, %247
  store i32 %253, i32* %251, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, %254
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, %261
  store i32 %267, i32* %265, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, %268
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %10, align 4
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 5
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %275
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 6
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, %282
  store i32 %288, i32* %286, align 4
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 7
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %289
  store i32 %295, i32* %293, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  ret void
}

declare dso_local i32 @Sigma1_512(i32) #1

declare dso_local i32 @Ch(i32, i32, i32) #1

declare dso_local i32 @Sigma0_512(i32) #1

declare dso_local i32 @Maj(i32, i32, i32) #1

declare dso_local i32 @sigma0_512(i32) #1

declare dso_local i32 @sigma1_512(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
