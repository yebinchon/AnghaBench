; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_line.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i16, i32, i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i32, i32)* @nk_rawfb_stroke_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_line(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca %struct.rawfb_context*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
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
  store i32 %5, i32* %14, align 4
  %23 = load i16, i16* %13, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* %11, align 2
  %26 = sext i16 %25 to i32
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %16, align 4
  %28 = load i16, i16* %12, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %10, align 2
  %31 = sext i16 %30 to i32
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %7
  %36 = load i32, i32* %17, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %35
  %39 = load i16, i16* %11, align 2
  %40 = sext i16 %39 to i32
  %41 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %42 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 4
  %45 = sext i16 %44 to i32
  %46 = icmp sge i32 %40, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load i16, i16* %11, align 2
  %49 = sext i16 %48 to i32
  %50 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %51 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47, %38, %35
  br label %202

57:                                               ; preds = %47
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i16, i16* %12, align 2
  store i16 %61, i16* %15, align 2
  %62 = load i16, i16* %10, align 2
  store i16 %62, i16* %12, align 2
  %63 = load i16, i16* %15, align 2
  store i16 %63, i16* %10, align 2
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %66 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i16, i16* %12, align 2
  %70 = call signext i16 @MIN(i32 %68, i16 signext %69)
  store i16 %70, i16* %12, align 2
  %71 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %72 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i16, i16* %10, align 2
  %76 = call signext i16 @MIN(i32 %74, i16 signext %75)
  store i16 %76, i16* %10, align 2
  %77 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %78 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i16, i16* %12, align 2
  %82 = call signext i16 @MAX(i32 %80, i16 signext %81)
  store i16 %82, i16* %12, align 2
  %83 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %84 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i16, i16* %10, align 2
  %88 = call signext i16 @MAX(i32 %86, i16 signext %87)
  store i16 %88, i16* %10, align 2
  %89 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %90 = load i16, i16* %10, align 2
  %91 = load i16, i16* %11, align 2
  %92 = load i16, i16* %12, align 2
  %93 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nk_rawfb_line_horizontal(%struct.rawfb_context* %89, i16 signext %90, i16 signext %91, i16 signext %92, i32 %94)
  br label %202

96:                                               ; preds = %7
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  store i32 -1, i32* %19, align 4
  br label %103

102:                                              ; preds = %96
  store i32 1, i32* %19, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %110

109:                                              ; preds = %103
  store i32 1, i32* %18, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %16, align 4
  %112 = shl i32 %111, 1
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = shl i32 %113, 1
  store i32 %114, i32* %17, align 4
  %115 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %116 = load i16, i16* %10, align 2
  %117 = load i16, i16* %11, align 2
  %118 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %115, i16 signext %116, i16 signext %117, i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %163

124:                                              ; preds = %110
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = ashr i32 %126, 1
  %128 = sub nsw i32 %125, %127
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %147, %124
  %130 = load i16, i16* %10, align 2
  %131 = sext i16 %130 to i32
  %132 = load i16, i16* %12, align 2
  %133 = sext i16 %132 to i32
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %162

135:                                              ; preds = %129
  %136 = load i32, i32* %20, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32, i32* %19, align 4
  %140 = load i16, i16* %11, align 2
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %141, %139
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %11, align 2
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %20, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %138, %135
  %148 = load i32, i32* %18, align 4
  %149 = load i16, i16* %10, align 2
  %150 = sext i16 %149 to i32
  %151 = add nsw i32 %150, %148
  %152 = trunc i32 %151 to i16
  store i16 %152, i16* %10, align 2
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %20, align 4
  %156 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %157 = load i16, i16* %10, align 2
  %158 = load i16, i16* %11, align 2
  %159 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %156, i16 signext %157, i16 signext %158, i32 %160)
  br label %129

162:                                              ; preds = %129
  br label %202

163:                                              ; preds = %110
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %16, align 4
  %166 = ashr i32 %165, 1
  %167 = sub nsw i32 %164, %166
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %186, %163
  %169 = load i16, i16* %11, align 2
  %170 = sext i16 %169 to i32
  %171 = load i16, i16* %13, align 2
  %172 = sext i16 %171 to i32
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %168
  %175 = load i32, i32* %21, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32, i32* %18, align 4
  %179 = load i16, i16* %10, align 2
  %180 = sext i16 %179 to i32
  %181 = add nsw i32 %180, %178
  %182 = trunc i32 %181 to i16
  store i16 %182, i16* %10, align 2
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %21, align 4
  %185 = sub nsw i32 %184, %183
  store i32 %185, i32* %21, align 4
  br label %186

186:                                              ; preds = %177, %174
  %187 = load i32, i32* %19, align 4
  %188 = load i16, i16* %11, align 2
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %189, %187
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %11, align 2
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %21, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %21, align 4
  %195 = load %struct.rawfb_context*, %struct.rawfb_context** %9, align 8
  %196 = load i16, i16* %10, align 2
  %197 = load i16, i16* %11, align 2
  %198 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %195, i16 signext %196, i16 signext %197, i32 %199)
  br label %168

201:                                              ; preds = %168
  br label %202

202:                                              ; preds = %56, %64, %201, %162
  ret void
}

declare dso_local signext i16 @MIN(i32, i16 signext) #1

declare dso_local signext i16 @MAX(i32, i16 signext) #1

declare dso_local i32 @nk_rawfb_line_horizontal(%struct.rawfb_context*, i16 signext, i16 signext, i16 signext, i32) #1

declare dso_local i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context*, i16 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
