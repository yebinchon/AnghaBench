; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_circle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i32)* @nk_rawfb_stroke_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_circle(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca %struct.rawfb_context*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %22, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %9, align 8
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %23 = load i16, i16* %12, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* %12, align 2
  %26 = sext i16 %25 to i32
  %27 = mul nsw i32 %24, %26
  %28 = sdiv i32 %27, 4
  store i32 %28, i32* %15, align 4
  %29 = load i16, i16* %13, align 2
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* %13, align 2
  %32 = sext i16 %31 to i32
  %33 = mul nsw i32 %30, %32
  %34 = sdiv i32 %33, 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = mul nsw i32 4, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %16, align 4
  %38 = mul nsw i32 4, %37
  store i32 %38, i32* %18, align 4
  %39 = load i16, i16* %13, align 2
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %40, 1
  %42 = sdiv i32 %41, 2
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %13, align 2
  %44 = load i16, i16* %12, align 2
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = sdiv i32 %46, 2
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %12, align 2
  %49 = load i16, i16* %12, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* %10, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %10, align 2
  %55 = load i16, i16* %13, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* %11, align 2
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %58, %56
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %11, align 2
  store i32 0, i32* %19, align 4
  %61 = load i16, i16* %13, align 2
  %62 = sext i16 %61 to i32
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %16, align 4
  %64 = mul nsw i32 2, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i16, i16* %13, align 2
  %67 = sext i16 %66 to i32
  %68 = mul nsw i32 2, %67
  %69 = sub nsw i32 1, %68
  %70 = mul nsw i32 %65, %69
  %71 = add nsw i32 %64, %70
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %156, %7
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %19, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %20, align 4
  %78 = mul nsw i32 %76, %77
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %159

80:                                               ; preds = %72
  %81 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %82 = load i16, i16* %10, align 2
  %83 = sext i16 %82 to i32
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %83, %84
  %86 = trunc i32 %85 to i16
  %87 = load i16, i16* %11, align 2
  %88 = sext i16 %87 to i32
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %88, %89
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %81, i16 signext %86, i16 signext %91, i32 %93)
  %95 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %96 = load i16, i16* %10, align 2
  %97 = sext i16 %96 to i32
  %98 = load i32, i32* %19, align 4
  %99 = sub nsw i32 %97, %98
  %100 = trunc i32 %99 to i16
  %101 = load i16, i16* %11, align 2
  %102 = sext i16 %101 to i32
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %102, %103
  %105 = trunc i32 %104 to i16
  %106 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %95, i16 signext %100, i16 signext %105, i32 %107)
  %109 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %110 = load i16, i16* %10, align 2
  %111 = sext i16 %110 to i32
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %111, %112
  %114 = trunc i32 %113 to i16
  %115 = load i16, i16* %11, align 2
  %116 = sext i16 %115 to i32
  %117 = load i32, i32* %20, align 4
  %118 = sub nsw i32 %116, %117
  %119 = trunc i32 %118 to i16
  %120 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %109, i16 signext %114, i16 signext %119, i32 %121)
  %123 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %124 = load i16, i16* %10, align 2
  %125 = sext i16 %124 to i32
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %125, %126
  %128 = trunc i32 %127 to i16
  %129 = load i16, i16* %11, align 2
  %130 = sext i16 %129 to i32
  %131 = load i32, i32* %20, align 4
  %132 = sub nsw i32 %130, %131
  %133 = trunc i32 %132 to i16
  %134 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %123, i16 signext %128, i16 signext %133, i32 %135)
  %137 = load i32, i32* %21, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %80
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %20, align 4
  %142 = sub nsw i32 1, %141
  %143 = mul nsw i32 %140, %142
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %20, align 4
  br label %148

148:                                              ; preds = %139, %80
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %19, align 4
  %151 = mul nsw i32 4, %150
  %152 = add nsw i32 %151, 6
  %153 = mul nsw i32 %149, %152
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %21, align 4
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  br label %72

159:                                              ; preds = %72
  %160 = load i16, i16* %12, align 2
  %161 = sext i16 %160 to i32
  store i32 %161, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %162 = load i32, i32* %15, align 4
  %163 = mul nsw i32 2, %162
  %164 = load i32, i32* %16, align 4
  %165 = load i16, i16* %12, align 2
  %166 = sext i16 %165 to i32
  %167 = mul nsw i32 2, %166
  %168 = sub nsw i32 1, %167
  %169 = mul nsw i32 %164, %168
  %170 = add nsw i32 %163, %169
  store i32 %170, i32* %21, align 4
  br label %171

171:                                              ; preds = %255, %159
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %20, align 4
  %174 = mul nsw i32 %172, %173
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %19, align 4
  %177 = mul nsw i32 %175, %176
  %178 = icmp sle i32 %174, %177
  br i1 %178, label %179, label %258

179:                                              ; preds = %171
  %180 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %181 = load i16, i16* %10, align 2
  %182 = sext i16 %181 to i32
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %182, %183
  %185 = trunc i32 %184 to i16
  %186 = load i16, i16* %11, align 2
  %187 = sext i16 %186 to i32
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %187, %188
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %180, i16 signext %185, i16 signext %190, i32 %192)
  %194 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %195 = load i16, i16* %10, align 2
  %196 = sext i16 %195 to i32
  %197 = load i32, i32* %19, align 4
  %198 = sub nsw i32 %196, %197
  %199 = trunc i32 %198 to i16
  %200 = load i16, i16* %11, align 2
  %201 = sext i16 %200 to i32
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %201, %202
  %204 = trunc i32 %203 to i16
  %205 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %194, i16 signext %199, i16 signext %204, i32 %206)
  %208 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %209 = load i16, i16* %10, align 2
  %210 = sext i16 %209 to i32
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %210, %211
  %213 = trunc i32 %212 to i16
  %214 = load i16, i16* %11, align 2
  %215 = sext i16 %214 to i32
  %216 = load i32, i32* %20, align 4
  %217 = sub nsw i32 %215, %216
  %218 = trunc i32 %217 to i16
  %219 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %208, i16 signext %213, i16 signext %218, i32 %220)
  %222 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %223 = load i16, i16* %10, align 2
  %224 = sext i16 %223 to i32
  %225 = load i32, i32* %19, align 4
  %226 = sub nsw i32 %224, %225
  %227 = trunc i32 %226 to i16
  %228 = load i16, i16* %11, align 2
  %229 = sext i16 %228 to i32
  %230 = load i32, i32* %20, align 4
  %231 = sub nsw i32 %229, %230
  %232 = trunc i32 %231 to i16
  %233 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %222, i16 signext %227, i16 signext %232, i32 %234)
  %236 = load i32, i32* %21, align 4
  %237 = icmp sge i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %179
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %19, align 4
  %241 = sub nsw i32 1, %240
  %242 = mul nsw i32 %239, %241
  %243 = load i32, i32* %21, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %21, align 4
  %245 = load i32, i32* %19, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %19, align 4
  br label %247

247:                                              ; preds = %238, %179
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %20, align 4
  %250 = mul nsw i32 4, %249
  %251 = add nsw i32 %250, 6
  %252 = mul nsw i32 %248, %251
  %253 = load i32, i32* %21, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %21, align 4
  br label %255

255:                                              ; preds = %247
  %256 = load i32, i32* %20, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %20, align 4
  br label %171

258:                                              ; preds = %171
  ret void
}

declare dso_local i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context*, i16 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
