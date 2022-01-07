; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_add_range.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_add_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i64, i64, %struct.Range6* }
%struct.Range6 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range6list_add_range(%struct.Range6List* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Range6List*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Range6, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.Range6List* %0, %struct.Range6List** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %17 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  %20 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %21 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %26 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %27, 2
  %29 = add i64 %28, 1
  %30 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %31 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %33 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %32, i32 0, i32 2
  %34 = load %struct.Range6*, %struct.Range6** %33, align 8
  %35 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %36 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.Range6* @REALLOCARRAY(%struct.Range6* %34, i32 %38, i32 8)
  %40 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %41 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %40, i32 0, i32 2
  store %struct.Range6* %39, %struct.Range6** %41, align 8
  br label %42

42:                                               ; preds = %24, %3
  store i64 0, i64* %8, align 8
  %43 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %44 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %87, %42
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %52, %53
  %55 = udiv i64 %54, 2
  %56 = add i64 %51, %55
  store i64 %56, i64* %10, align 8
  %57 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %60 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %59, i32 0, i32 2
  %61 = load %struct.Range6*, %struct.Range6** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.Range6, %struct.Range6* %61, i64 %62
  %64 = getelementptr inbounds %struct.Range6, %struct.Range6* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @LESS(i32 %58, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %9, align 8
  br label %87

70:                                               ; preds = %50
  %71 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %72 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %71, i32 0, i32 2
  %73 = load %struct.Range6*, %struct.Range6** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.Range6, %struct.Range6* %73, i64 %74
  %76 = getelementptr inbounds %struct.Range6, %struct.Range6* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.Range6, %struct.Range6* %7, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @LESS(i32 %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %86

85:                                               ; preds = %70
  br label %88

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %68
  br label %46

88:                                               ; preds = %85, %46
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %90, %91
  %93 = udiv i64 %92, 2
  %94 = add i64 %89, %93
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %97 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %88
  %101 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %102 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %101, i32 0, i32 2
  %103 = load %struct.Range6*, %struct.Range6** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.Range6, %struct.Range6* %103, i64 %104
  %106 = bitcast %struct.Range6* %105 to i64*
  %107 = load i64, i64* %106, align 4
  %108 = bitcast %struct.Range6* %7 to i64*
  %109 = load i64, i64* %108, align 4
  %110 = call i64 @range6_is_overlap(i64 %107, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %100
  %113 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %114 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %113, i32 0, i32 2
  %115 = load %struct.Range6*, %struct.Range6** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.Range6, %struct.Range6* %115, i64 %116
  %118 = bitcast %struct.Range6* %7 to i64*
  %119 = load i64, i64* %118, align 4
  %120 = call i32 @range6_combine(%struct.Range6* %117, i64 %119)
  br label %158

121:                                              ; preds = %100, %88
  %122 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %123 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %122, i32 0, i32 2
  %124 = load %struct.Range6*, %struct.Range6** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.Range6, %struct.Range6* %124, i64 %125
  %127 = getelementptr inbounds %struct.Range6, %struct.Range6* %126, i64 1
  %128 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %129 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %128, i32 0, i32 2
  %130 = load %struct.Range6*, %struct.Range6** %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds %struct.Range6, %struct.Range6* %130, i64 %131
  %133 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %134 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub i64 %135, %136
  %138 = mul i64 %137, 8
  %139 = call i32 @memmove(%struct.Range6* %127, %struct.Range6* %132, i64 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %142 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %141, i32 0, i32 2
  %143 = load %struct.Range6*, %struct.Range6** %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds %struct.Range6, %struct.Range6* %143, i64 %144
  %146 = getelementptr inbounds %struct.Range6, %struct.Range6* %145, i32 0, i32 1
  store i32 %140, i32* %146, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %149 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %148, i32 0, i32 2
  %150 = load %struct.Range6*, %struct.Range6** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.Range6, %struct.Range6* %150, i64 %151
  %153 = getelementptr inbounds %struct.Range6, %struct.Range6* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 4
  %154 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %155 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %121, %112
  br label %159

159:                                              ; preds = %285, %158
  store i32 0, i32* %11, align 4
  %160 = load i64, i64* %10, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %219

162:                                              ; preds = %159
  %163 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %164 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %163, i32 0, i32 2
  %165 = load %struct.Range6*, %struct.Range6** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = sub i64 %166, 1
  %168 = getelementptr inbounds %struct.Range6, %struct.Range6* %165, i64 %167
  %169 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %170 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %169, i32 0, i32 2
  %171 = load %struct.Range6*, %struct.Range6** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds %struct.Range6, %struct.Range6* %171, i64 %172
  %174 = bitcast %struct.Range6* %168 to i64*
  %175 = load i64, i64* %174, align 4
  %176 = bitcast %struct.Range6* %173 to i64*
  %177 = load i64, i64* %176, align 4
  %178 = call i64 @range6_is_overlap(i64 %175, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %219

180:                                              ; preds = %162
  %181 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %182 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %181, i32 0, i32 2
  %183 = load %struct.Range6*, %struct.Range6** %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = sub i64 %184, 1
  %186 = getelementptr inbounds %struct.Range6, %struct.Range6* %183, i64 %185
  %187 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %188 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %187, i32 0, i32 2
  %189 = load %struct.Range6*, %struct.Range6** %188, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.Range6, %struct.Range6* %189, i64 %190
  %192 = bitcast %struct.Range6* %191 to i64*
  %193 = load i64, i64* %192, align 4
  %194 = call i32 @range6_combine(%struct.Range6* %186, i64 %193)
  %195 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %196 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %195, i32 0, i32 2
  %197 = load %struct.Range6*, %struct.Range6** %196, align 8
  %198 = load i64, i64* %10, align 8
  %199 = getelementptr inbounds %struct.Range6, %struct.Range6* %197, i64 %198
  %200 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %201 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %200, i32 0, i32 2
  %202 = load %struct.Range6*, %struct.Range6** %201, align 8
  %203 = load i64, i64* %10, align 8
  %204 = getelementptr inbounds %struct.Range6, %struct.Range6* %202, i64 %203
  %205 = getelementptr inbounds %struct.Range6, %struct.Range6* %204, i64 1
  %206 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %207 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %10, align 8
  %210 = sub i64 %208, %209
  %211 = mul i64 %210, 8
  %212 = call i32 @memmove(%struct.Range6* %199, %struct.Range6* %205, i64 %211)
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, -1
  store i64 %214, i64* %10, align 8
  store i32 1, i32* %11, align 4
  %215 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %216 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, -1
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %180, %162, %159
  %220 = load i64, i64* %10, align 8
  %221 = add i64 %220, 1
  %222 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %223 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ult i64 %221, %224
  br i1 %225, label %226, label %281

226:                                              ; preds = %219
  %227 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %228 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %227, i32 0, i32 2
  %229 = load %struct.Range6*, %struct.Range6** %228, align 8
  %230 = load i64, i64* %10, align 8
  %231 = getelementptr inbounds %struct.Range6, %struct.Range6* %229, i64 %230
  %232 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %233 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %232, i32 0, i32 2
  %234 = load %struct.Range6*, %struct.Range6** %233, align 8
  %235 = load i64, i64* %10, align 8
  %236 = add i64 %235, 1
  %237 = getelementptr inbounds %struct.Range6, %struct.Range6* %234, i64 %236
  %238 = bitcast %struct.Range6* %231 to i64*
  %239 = load i64, i64* %238, align 4
  %240 = bitcast %struct.Range6* %237 to i64*
  %241 = load i64, i64* %240, align 4
  %242 = call i64 @range6_is_overlap(i64 %239, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %281

244:                                              ; preds = %226
  %245 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %246 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %245, i32 0, i32 2
  %247 = load %struct.Range6*, %struct.Range6** %246, align 8
  %248 = load i64, i64* %10, align 8
  %249 = getelementptr inbounds %struct.Range6, %struct.Range6* %247, i64 %248
  %250 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %251 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %250, i32 0, i32 2
  %252 = load %struct.Range6*, %struct.Range6** %251, align 8
  %253 = load i64, i64* %10, align 8
  %254 = add i64 %253, 1
  %255 = getelementptr inbounds %struct.Range6, %struct.Range6* %252, i64 %254
  %256 = bitcast %struct.Range6* %255 to i64*
  %257 = load i64, i64* %256, align 4
  %258 = call i32 @range6_combine(%struct.Range6* %249, i64 %257)
  %259 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %260 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %259, i32 0, i32 2
  %261 = load %struct.Range6*, %struct.Range6** %260, align 8
  %262 = load i64, i64* %10, align 8
  %263 = getelementptr inbounds %struct.Range6, %struct.Range6* %261, i64 %262
  %264 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %265 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %264, i32 0, i32 2
  %266 = load %struct.Range6*, %struct.Range6** %265, align 8
  %267 = load i64, i64* %10, align 8
  %268 = getelementptr inbounds %struct.Range6, %struct.Range6* %266, i64 %267
  %269 = getelementptr inbounds %struct.Range6, %struct.Range6* %268, i64 1
  %270 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %271 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %10, align 8
  %274 = sub i64 %272, %273
  %275 = mul i64 %274, 8
  %276 = call i32 @memmove(%struct.Range6* %263, %struct.Range6* %269, i64 %275)
  store i32 1, i32* %11, align 4
  %277 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %278 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = add i64 %279, -1
  store i64 %280, i64* %278, align 8
  br label %281

281:                                              ; preds = %244, %226, %219
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  br label %286

285:                                              ; preds = %281
  br label %159

286:                                              ; preds = %284
  ret void
}

declare dso_local %struct.Range6* @REALLOCARRAY(%struct.Range6*, i32, i32) #1

declare dso_local i64 @LESS(i32, i32) #1

declare dso_local i64 @range6_is_overlap(i64, i64) #1

declare dso_local i32 @range6_combine(%struct.Range6*, i64) #1

declare dso_local i32 @memmove(%struct.Range6*, %struct.Range6*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
