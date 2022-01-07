; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_mul.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_smallfelem_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @smallfelem_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smallfelem_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 64
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 64
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 64
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %72, 64
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = ashr i32 %90, 64
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 64
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %7, align 4
  %131 = ashr i32 %130, 64
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  store i32 %137, i32* %139, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = ashr i32 %148, 64
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %6, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %162, %165
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %7, align 4
  %169 = ashr i32 %168, 64
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %182, %185
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %7, align 4
  %189 = ashr i32 %188, 64
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load i32*, i32** %4, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load i32*, i32** %4, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %202, %205
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %7, align 4
  %209 = ashr i32 %208, 64
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32*, i32** %4, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 5
  store i32 %215, i32* %217, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %220, %223
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %7, align 4
  %227 = ashr i32 %226, 64
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32*, i32** %4, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* %8, align 4
  %234 = load i32*, i32** %4, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 5
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %6, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %240, %243
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %7, align 4
  %247 = ashr i32 %246, 64
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, %248
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* %8, align 4
  %254 = load i32*, i32** %4, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 5
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load i32*, i32** %5, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %6, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 3
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %260, %263
  store i32 %264, i32* %7, align 4
  %265 = load i32, i32* %7, align 4
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %7, align 4
  %267 = ashr i32 %266, 64
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32*, i32** %4, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 5
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* %8, align 4
  %274 = load i32*, i32** %4, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 6
  store i32 %273, i32* %275, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 3
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %278, %281
  store i32 %282, i32* %7, align 4
  %283 = load i32, i32* %7, align 4
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %7, align 4
  %285 = ashr i32 %284, 64
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %9, align 4
  %287 = load i32*, i32** %4, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 5
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load i32*, i32** %4, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 6
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load i32*, i32** %5, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %6, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = mul nsw i32 %298, %301
  store i32 %302, i32* %7, align 4
  %303 = load i32, i32* %7, align 4
  store i32 %303, i32* %9, align 4
  %304 = load i32, i32* %7, align 4
  %305 = ashr i32 %304, 64
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load i32*, i32** %4, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 6
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32*, i32** %4, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 7
  store i32 %311, i32* %313, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
