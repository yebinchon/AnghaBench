; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_rect.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i16, i32)* @nk_rawfb_stroke_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_rect(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 signext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca %struct.rawfb_context*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %21, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %10, align 8
  store i16 %1, i16* %11, align 2
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  %22 = load i16, i16* %15, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %102

25:                                               ; preds = %8
  %26 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %27 = load i16, i16* %11, align 2
  %28 = load i16, i16* %12, align 2
  %29 = load i16, i16* %11, align 2
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* %13, align 2
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %30, %32
  %34 = trunc i32 %33 to i16
  %35 = load i16, i16* %12, align 2
  %36 = load i16, i16* %16, align 2
  %37 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %26, i16 signext %27, i16 signext %28, i16 signext %34, i16 signext %35, i16 signext %36, i32 %38)
  %40 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %41 = load i16, i16* %11, align 2
  %42 = load i16, i16* %12, align 2
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* %14, align 2
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = trunc i32 %46 to i16
  %48 = load i16, i16* %11, align 2
  %49 = sext i16 %48 to i32
  %50 = load i16, i16* %13, align 2
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %49, %51
  %53 = trunc i32 %52 to i16
  %54 = load i16, i16* %12, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* %14, align 2
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %55, %57
  %59 = trunc i32 %58 to i16
  %60 = load i16, i16* %16, align 2
  %61 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %40, i16 signext %41, i16 signext %47, i16 signext %53, i16 signext %59, i16 signext %60, i32 %62)
  %64 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %65 = load i16, i16* %11, align 2
  %66 = load i16, i16* %12, align 2
  %67 = load i16, i16* %11, align 2
  %68 = load i16, i16* %12, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* %14, align 2
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = trunc i32 %72 to i16
  %74 = load i16, i16* %16, align 2
  %75 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %64, i16 signext %65, i16 signext %66, i16 signext %67, i16 signext %73, i16 signext %74, i32 %76)
  %78 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %79 = load i16, i16* %11, align 2
  %80 = sext i16 %79 to i32
  %81 = load i16, i16* %13, align 2
  %82 = sext i16 %81 to i32
  %83 = add nsw i32 %80, %82
  %84 = trunc i32 %83 to i16
  %85 = load i16, i16* %12, align 2
  %86 = load i16, i16* %11, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16, i16* %13, align 2
  %89 = sext i16 %88 to i32
  %90 = add nsw i32 %87, %89
  %91 = trunc i32 %90 to i16
  %92 = load i16, i16* %12, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* %14, align 2
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 %93, %95
  %97 = trunc i32 %96 to i16
  %98 = load i16, i16* %16, align 2
  %99 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %78, i16 signext %84, i16 signext %85, i16 signext %91, i16 signext %97, i16 signext %98, i32 %100)
  br label %289

102:                                              ; preds = %8
  %103 = load i16, i16* %11, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16, i16* %15, align 2
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %104, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %17, align 2
  %109 = load i16, i16* %12, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* %15, align 2
  %112 = sext i16 %111 to i32
  %113 = add nsw i32 %110, %112
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %18, align 2
  %115 = load i16, i16* %13, align 2
  %116 = sext i16 %115 to i32
  %117 = load i16, i16* %15, align 2
  %118 = sext i16 %117 to i32
  %119 = mul nsw i32 2, %118
  %120 = sub nsw i32 %116, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %19, align 2
  %122 = load i16, i16* %14, align 2
  %123 = sext i16 %122 to i32
  %124 = load i16, i16* %15, align 2
  %125 = sext i16 %124 to i32
  %126 = mul nsw i32 2, %125
  %127 = sub nsw i32 %123, %126
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %20, align 2
  %129 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %130 = load i16, i16* %17, align 2
  %131 = load i16, i16* %12, align 2
  %132 = load i16, i16* %17, align 2
  %133 = sext i16 %132 to i32
  %134 = load i16, i16* %19, align 2
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %133, %135
  %137 = trunc i32 %136 to i16
  %138 = load i16, i16* %12, align 2
  %139 = load i16, i16* %16, align 2
  %140 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %129, i16 signext %130, i16 signext %131, i16 signext %137, i16 signext %138, i16 signext %139, i32 %141)
  %143 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %144 = load i16, i16* %11, align 2
  %145 = sext i16 %144 to i32
  %146 = load i16, i16* %13, align 2
  %147 = sext i16 %146 to i32
  %148 = add nsw i32 %145, %147
  %149 = trunc i32 %148 to i16
  %150 = load i16, i16* %18, align 2
  %151 = load i16, i16* %11, align 2
  %152 = sext i16 %151 to i32
  %153 = load i16, i16* %13, align 2
  %154 = sext i16 %153 to i32
  %155 = add nsw i32 %152, %154
  %156 = trunc i32 %155 to i16
  %157 = load i16, i16* %18, align 2
  %158 = sext i16 %157 to i32
  %159 = load i16, i16* %20, align 2
  %160 = sext i16 %159 to i32
  %161 = add nsw i32 %158, %160
  %162 = trunc i32 %161 to i16
  %163 = load i16, i16* %16, align 2
  %164 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %143, i16 signext %149, i16 signext %150, i16 signext %156, i16 signext %162, i16 signext %163, i32 %165)
  %167 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %168 = load i16, i16* %17, align 2
  %169 = load i16, i16* %12, align 2
  %170 = sext i16 %169 to i32
  %171 = load i16, i16* %14, align 2
  %172 = sext i16 %171 to i32
  %173 = add nsw i32 %170, %172
  %174 = trunc i32 %173 to i16
  %175 = load i16, i16* %17, align 2
  %176 = sext i16 %175 to i32
  %177 = load i16, i16* %19, align 2
  %178 = sext i16 %177 to i32
  %179 = add nsw i32 %176, %178
  %180 = trunc i32 %179 to i16
  %181 = load i16, i16* %12, align 2
  %182 = sext i16 %181 to i32
  %183 = load i16, i16* %14, align 2
  %184 = sext i16 %183 to i32
  %185 = add nsw i32 %182, %184
  %186 = trunc i32 %185 to i16
  %187 = load i16, i16* %16, align 2
  %188 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %167, i16 signext %168, i16 signext %174, i16 signext %180, i16 signext %186, i16 signext %187, i32 %189)
  %191 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %192 = load i16, i16* %11, align 2
  %193 = load i16, i16* %18, align 2
  %194 = load i16, i16* %11, align 2
  %195 = load i16, i16* %18, align 2
  %196 = sext i16 %195 to i32
  %197 = load i16, i16* %20, align 2
  %198 = sext i16 %197 to i32
  %199 = add nsw i32 %196, %198
  %200 = trunc i32 %199 to i16
  %201 = load i16, i16* %16, align 2
  %202 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %191, i16 signext %192, i16 signext %193, i16 signext %194, i16 signext %200, i16 signext %201, i32 %203)
  %205 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %206 = load i16, i16* %17, align 2
  %207 = sext i16 %206 to i32
  %208 = load i16, i16* %19, align 2
  %209 = sext i16 %208 to i32
  %210 = add nsw i32 %207, %209
  %211 = load i16, i16* %15, align 2
  %212 = sext i16 %211 to i32
  %213 = sub nsw i32 %210, %212
  %214 = trunc i32 %213 to i16
  %215 = load i16, i16* %12, align 2
  %216 = load i16, i16* %15, align 2
  %217 = sext i16 %216 to i32
  %218 = mul i32 %217, 2
  %219 = load i16, i16* %15, align 2
  %220 = sext i16 %219 to i32
  %221 = mul i32 %220, 2
  %222 = load i16, i16* %16, align 2
  %223 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @nk_rawfb_stroke_arc(%struct.rawfb_context* %205, i16 signext %214, i16 signext %215, i32 %218, i32 %221, i32 0, i16 signext %222, i32 %224)
  %226 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %227 = load i16, i16* %11, align 2
  %228 = load i16, i16* %12, align 2
  %229 = load i16, i16* %15, align 2
  %230 = sext i16 %229 to i32
  %231 = mul i32 %230, 2
  %232 = load i16, i16* %15, align 2
  %233 = sext i16 %232 to i32
  %234 = mul i32 %233, 2
  %235 = load i16, i16* %16, align 2
  %236 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @nk_rawfb_stroke_arc(%struct.rawfb_context* %226, i16 signext %227, i16 signext %228, i32 %231, i32 %234, i32 90, i16 signext %235, i32 %237)
  %239 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %240 = load i16, i16* %11, align 2
  %241 = load i16, i16* %18, align 2
  %242 = sext i16 %241 to i32
  %243 = load i16, i16* %20, align 2
  %244 = sext i16 %243 to i32
  %245 = add nsw i32 %242, %244
  %246 = load i16, i16* %15, align 2
  %247 = sext i16 %246 to i32
  %248 = sub nsw i32 %245, %247
  %249 = trunc i32 %248 to i16
  %250 = load i16, i16* %15, align 2
  %251 = sext i16 %250 to i32
  %252 = mul i32 %251, 2
  %253 = load i16, i16* %15, align 2
  %254 = sext i16 %253 to i32
  %255 = mul i32 %254, 2
  %256 = load i16, i16* %16, align 2
  %257 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @nk_rawfb_stroke_arc(%struct.rawfb_context* %239, i16 signext %240, i16 signext %249, i32 %252, i32 %255, i32 270, i16 signext %256, i32 %258)
  %260 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %261 = load i16, i16* %17, align 2
  %262 = sext i16 %261 to i32
  %263 = load i16, i16* %19, align 2
  %264 = sext i16 %263 to i32
  %265 = add nsw i32 %262, %264
  %266 = load i16, i16* %15, align 2
  %267 = sext i16 %266 to i32
  %268 = sub nsw i32 %265, %267
  %269 = trunc i32 %268 to i16
  %270 = load i16, i16* %18, align 2
  %271 = sext i16 %270 to i32
  %272 = load i16, i16* %20, align 2
  %273 = sext i16 %272 to i32
  %274 = add nsw i32 %271, %273
  %275 = load i16, i16* %15, align 2
  %276 = sext i16 %275 to i32
  %277 = sub nsw i32 %274, %276
  %278 = trunc i32 %277 to i16
  %279 = load i16, i16* %15, align 2
  %280 = sext i16 %279 to i32
  %281 = mul i32 %280, 2
  %282 = load i16, i16* %15, align 2
  %283 = sext i16 %282 to i32
  %284 = mul i32 %283, 2
  %285 = load i16, i16* %16, align 2
  %286 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @nk_rawfb_stroke_arc(%struct.rawfb_context* %260, i16 signext %269, i16 signext %278, i32 %281, i32 %284, i32 180, i16 signext %285, i32 %287)
  br label %289

289:                                              ; preds = %102, %25
  ret void
}

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, i16 signext, i16 signext, i16 signext, i16 signext, i16 signext, i32) #1

declare dso_local i32 @nk_rawfb_stroke_arc(%struct.rawfb_context*, i16 signext, i16 signext, i32, i32, i32, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
