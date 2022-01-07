; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_sha2.c_SHA256_Transform.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_sha2.c_SHA256_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@K256 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @SHA256_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA256_Transform(%struct.TYPE_3__* %0, i64* %1) #0 {
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

63:                                               ; preds = %134, %2
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 8
  %73 = or i32 %67, %72
  %74 = load i64*, i64** %4, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 16
  %79 = or i32 %73, %78
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %83, 24
  %85 = or i32 %79, %84
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i64*, i64** %4, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 4
  store i64* %91, i64** %4, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @Sigma1_256(i32 %93)
  %95 = add nsw i32 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @Ch(i32 %96, i32 %97, i32 %98)
  %100 = add nsw i32 %95, %99
  %101 = load i32*, i32** @K256, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %100, %105
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %106, %111
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @Sigma0_256(i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @Maj(i32 %115, i32 %116, i32 %117)
  %119 = add nsw i32 %114, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %123, %124
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %63
  %135 = load i32, i32* %18, align 4
  %136 = icmp slt i32 %135, 16
  br i1 %136, label %63, label %137

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %212, %137
  %139 = load i32*, i32** %17, align 8
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  %142 = and i32 %141, 15
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @sigma0_256(i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 14
  %151 = and i32 %150, 15
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @sigma1_256(i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @Sigma1_256(i32 %158)
  %160 = add nsw i32 %157, %159
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @Ch(i32 %161, i32 %162, i32 %163)
  %165 = add nsw i32 %160, %164
  %166 = load i32*, i32** @K256, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %165, %170
  %172 = load i32, i32* %14, align 4
  %173 = load i32*, i32** %17, align 8
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 9
  %176 = and i32 %175, 15
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %172, %179
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %18, align 4
  %185 = and i32 %184, 15
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %182
  store i32 %189, i32* %187, align 4
  %190 = add nsw i32 %171, %189
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @Sigma0_256(i32 %191)
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @Maj(i32 %193, i32 %194, i32 %195)
  %197 = add nsw i32 %192, %196
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %11, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %201, %202
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %207, %208
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %212

212:                                              ; preds = %138
  %213 = load i32, i32* %18, align 4
  %214 = icmp slt i32 %213, 64
  br i1 %214, label %138, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, %216
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, %223
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, %230
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 4
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, %244
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 5
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %251
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 6
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, %258
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 7
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, %265
  store i32 %271, i32* %269, align 4
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

declare dso_local i32 @Sigma1_256(i32) #1

declare dso_local i32 @Ch(i32, i32, i32) #1

declare dso_local i32 @Sigma0_256(i32) #1

declare dso_local i32 @Maj(i32, i32, i32) #1

declare dso_local i32 @sigma0_256(i32) #1

declare dso_local i32 @sigma1_256(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
