; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_circle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i32)* @nk_rawfb_fill_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_fill_circle(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i32 %5) #0 {
  %7 = alloca %struct.nk_color, align 4
  %8 = alloca %struct.rawfb_context*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  store i32 %5, i32* %20, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %8, align 8
  store i16 %1, i16* %9, align 2
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16 %4, i16* %12, align 2
  %21 = load i16, i16* %11, align 2
  %22 = sext i16 %21 to i32
  %23 = load i16, i16* %11, align 2
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %22, %24
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %13, align 4
  %27 = load i16, i16* %12, align 2
  %28 = sext i16 %27 to i32
  %29 = load i16, i16* %12, align 2
  %30 = sext i16 %29 to i32
  %31 = mul nsw i32 %28, %30
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 4, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = mul nsw i32 4, %35
  store i32 %36, i32* %16, align 4
  %37 = load i16, i16* %12, align 2
  %38 = sext i16 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = sdiv i32 %39, 2
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %12, align 2
  %42 = load i16, i16* %11, align 2
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = sdiv i32 %44, 2
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %11, align 2
  %47 = load i16, i16* %11, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16, i16* %9, align 2
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %9, align 2
  %53 = load i16, i16* %12, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16, i16* %10, align 2
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, %54
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %10, align 2
  store i32 0, i32* %17, align 4
  %59 = load i16, i16* %12, align 2
  %60 = sext i16 %59 to i32
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 2, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i16, i16* %12, align 2
  %65 = sext i16 %64 to i32
  %66 = mul nsw i32 2, %65
  %67 = sub nsw i32 1, %66
  %68 = mul nsw i32 %63, %67
  %69 = add nsw i32 %62, %68
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %146, %6
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %17, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %18, align 4
  %76 = mul nsw i32 %74, %75
  %77 = icmp sle i32 %73, %76
  br i1 %77, label %78, label %149

78:                                               ; preds = %70
  %79 = load %struct.rawfb_context*, %struct.rawfb_context** %8, align 8
  %80 = load i16, i16* %9, align 2
  %81 = sext i16 %80 to i32
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %81, %82
  %84 = trunc i32 %83 to i16
  %85 = load i16, i16* %10, align 2
  %86 = sext i16 %85 to i32
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %86, %87
  %89 = trunc i32 %88 to i16
  %90 = load i16, i16* %9, align 2
  %91 = sext i16 %90 to i32
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %91, %92
  %94 = trunc i32 %93 to i16
  %95 = load i16, i16* %10, align 2
  %96 = sext i16 %95 to i32
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %96, %97
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %79, i16 signext %84, i16 signext %89, i16 signext %94, i16 signext %99, i32 1, i32 %101)
  %103 = load %struct.rawfb_context*, %struct.rawfb_context** %8, align 8
  %104 = load i16, i16* %9, align 2
  %105 = sext i16 %104 to i32
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %105, %106
  %108 = trunc i32 %107 to i16
  %109 = load i16, i16* %10, align 2
  %110 = sext i16 %109 to i32
  %111 = load i32, i32* %18, align 4
  %112 = sub nsw i32 %110, %111
  %113 = trunc i32 %112 to i16
  %114 = load i16, i16* %9, align 2
  %115 = sext i16 %114 to i32
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %115, %116
  %118 = trunc i32 %117 to i16
  %119 = load i16, i16* %10, align 2
  %120 = sext i16 %119 to i32
  %121 = load i32, i32* %18, align 4
  %122 = sub nsw i32 %120, %121
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %103, i16 signext %108, i16 signext %113, i16 signext %118, i16 signext %123, i32 1, i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %78
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %18, align 4
  %132 = sub nsw i32 1, %131
  %133 = mul nsw i32 %130, %132
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %129, %78
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %17, align 4
  %141 = mul nsw i32 4, %140
  %142 = add nsw i32 %141, 6
  %143 = mul nsw i32 %139, %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %19, align 4
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %70

149:                                              ; preds = %70
  %150 = load i16, i16* %11, align 2
  %151 = sext i16 %150 to i32
  store i32 %151, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 2, %152
  %154 = load i32, i32* %14, align 4
  %155 = load i16, i16* %11, align 2
  %156 = sext i16 %155 to i32
  %157 = mul nsw i32 2, %156
  %158 = sub nsw i32 1, %157
  %159 = mul nsw i32 %154, %158
  %160 = add nsw i32 %153, %159
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %237, %149
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %18, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %17, align 4
  %167 = mul nsw i32 %165, %166
  %168 = icmp sle i32 %164, %167
  br i1 %168, label %169, label %240

169:                                              ; preds = %161
  %170 = load %struct.rawfb_context*, %struct.rawfb_context** %8, align 8
  %171 = load i16, i16* %9, align 2
  %172 = sext i16 %171 to i32
  %173 = load i32, i32* %17, align 4
  %174 = sub nsw i32 %172, %173
  %175 = trunc i32 %174 to i16
  %176 = load i16, i16* %10, align 2
  %177 = sext i16 %176 to i32
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %177, %178
  %180 = trunc i32 %179 to i16
  %181 = load i16, i16* %9, align 2
  %182 = sext i16 %181 to i32
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %182, %183
  %185 = trunc i32 %184 to i16
  %186 = load i16, i16* %10, align 2
  %187 = sext i16 %186 to i32
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %187, %188
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %170, i16 signext %175, i16 signext %180, i16 signext %185, i16 signext %190, i32 1, i32 %192)
  %194 = load %struct.rawfb_context*, %struct.rawfb_context** %8, align 8
  %195 = load i16, i16* %9, align 2
  %196 = sext i16 %195 to i32
  %197 = load i32, i32* %17, align 4
  %198 = sub nsw i32 %196, %197
  %199 = trunc i32 %198 to i16
  %200 = load i16, i16* %10, align 2
  %201 = sext i16 %200 to i32
  %202 = load i32, i32* %18, align 4
  %203 = sub nsw i32 %201, %202
  %204 = trunc i32 %203 to i16
  %205 = load i16, i16* %9, align 2
  %206 = sext i16 %205 to i32
  %207 = load i32, i32* %17, align 4
  %208 = add nsw i32 %206, %207
  %209 = trunc i32 %208 to i16
  %210 = load i16, i16* %10, align 2
  %211 = sext i16 %210 to i32
  %212 = load i32, i32* %18, align 4
  %213 = sub nsw i32 %211, %212
  %214 = trunc i32 %213 to i16
  %215 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @nk_rawfb_stroke_line(%struct.rawfb_context* %194, i16 signext %199, i16 signext %204, i16 signext %209, i16 signext %214, i32 1, i32 %216)
  %218 = load i32, i32* %19, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %169
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = sub nsw i32 1, %222
  %224 = mul nsw i32 %221, %223
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %17, align 4
  br label %229

229:                                              ; preds = %220, %169
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %18, align 4
  %232 = mul nsw i32 4, %231
  %233 = add nsw i32 %232, 6
  %234 = mul nsw i32 %230, %233
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %19, align 4
  br label %237

237:                                              ; preds = %229
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %18, align 4
  br label %161

240:                                              ; preds = %161
  ret void
}

declare dso_local i32 @nk_rawfb_stroke_line(%struct.rawfb_context*, i16 signext, i16 signext, i16 signext, i16 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
