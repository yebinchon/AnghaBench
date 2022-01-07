; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stretch_image.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stretch_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_image = type { i32 }
%struct.nk_rect = type { float, float, float, float }
%struct.nk_color = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_image*, %struct.rawfb_image*, %struct.nk_rect*, %struct.nk_rect*, %struct.nk_rect*, %struct.nk_color*)* @nk_rawfb_stretch_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stretch_image(%struct.rawfb_image* %0, %struct.rawfb_image* %1, %struct.nk_rect* %2, %struct.nk_rect* %3, %struct.nk_rect* %4, %struct.nk_color* %5) #0 {
  %7 = alloca %struct.rawfb_image*, align 8
  %8 = alloca %struct.rawfb_image*, align 8
  %9 = alloca %struct.nk_rect*, align 8
  %10 = alloca %struct.nk_rect*, align 8
  %11 = alloca %struct.nk_rect*, align 8
  %12 = alloca %struct.nk_color*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca %struct.nk_color, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.nk_color, align 8
  store %struct.rawfb_image* %0, %struct.rawfb_image** %7, align 8
  store %struct.rawfb_image* %1, %struct.rawfb_image** %8, align 8
  store %struct.nk_rect* %2, %struct.nk_rect** %9, align 8
  store %struct.nk_rect* %3, %struct.nk_rect** %10, align 8
  store %struct.nk_rect* %4, %struct.nk_rect** %11, align 8
  store %struct.nk_color* %5, %struct.nk_color** %12, align 8
  %21 = load %struct.nk_rect*, %struct.nk_rect** %10, align 8
  %22 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %25 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = fdiv float %23, %26
  store float %27, float* %16, align 4
  %28 = load %struct.nk_rect*, %struct.nk_rect** %10, align 8
  %29 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %32 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = fdiv float %30, %33
  store float %34, float* %17, align 4
  %35 = load %struct.nk_rect*, %struct.nk_rect** %10, align 8
  %36 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %35, i32 0, i32 2
  %37 = load float, float* %36, align 4
  store float %37, float* %18, align 4
  %38 = load %struct.nk_rect*, %struct.nk_rect** %10, align 8
  %39 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %38, i32 0, i32 3
  %40 = load float, float* %39, align 4
  store float %40, float* %19, align 4
  store i16 0, i16* %14, align 2
  br label %41

41:                                               ; preds = %188, %6
  %42 = load i16, i16* %14, align 2
  %43 = sext i16 %42 to i32
  %44 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %45 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fptosi float %46 to i16
  %48 = sext i16 %47 to i32
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %191

50:                                               ; preds = %41
  store i16 0, i16* %13, align 2
  br label %51

51:                                               ; preds = %178, %50
  %52 = load i16, i16* %13, align 2
  %53 = sext i16 %52 to i32
  %54 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %55 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fptosi float %56 to i16
  %58 = sext i16 %57 to i32
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %181

60:                                               ; preds = %51
  %61 = load %struct.nk_rect*, %struct.nk_rect** %11, align 8
  %62 = icmp ne %struct.nk_rect* %61, null
  br i1 %62, label %63, label %122

63:                                               ; preds = %60
  %64 = load i16, i16* %13, align 2
  %65 = sext i16 %64 to i32
  %66 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %67 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %66, i32 0, i32 2
  %68 = load float, float* %67, align 4
  %69 = fadd float %68, 5.000000e-01
  %70 = fptosi float %69 to i32
  %71 = add nsw i32 %65, %70
  %72 = sitofp i32 %71 to float
  %73 = load %struct.nk_rect*, %struct.nk_rect** %11, align 8
  %74 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %73, i32 0, i32 2
  %75 = load float, float* %74, align 4
  %76 = fcmp olt float %72, %75
  br i1 %76, label %91, label %77

77:                                               ; preds = %63
  %78 = load i16, i16* %13, align 2
  %79 = sext i16 %78 to i32
  %80 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %81 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %80, i32 0, i32 2
  %82 = load float, float* %81, align 4
  %83 = fadd float %82, 5.000000e-01
  %84 = fptosi float %83 to i32
  %85 = add nsw i32 %79, %84
  %86 = sitofp i32 %85 to float
  %87 = load %struct.nk_rect*, %struct.nk_rect** %11, align 8
  %88 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %87, i32 0, i32 0
  %89 = load float, float* %88, align 4
  %90 = fcmp oge float %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77, %63
  br label %178

92:                                               ; preds = %77
  %93 = load i16, i16* %14, align 2
  %94 = sext i16 %93 to i32
  %95 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %96 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %95, i32 0, i32 3
  %97 = load float, float* %96, align 4
  %98 = fadd float %97, 5.000000e-01
  %99 = fptosi float %98 to i32
  %100 = add nsw i32 %94, %99
  %101 = sitofp i32 %100 to float
  %102 = load %struct.nk_rect*, %struct.nk_rect** %11, align 8
  %103 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %102, i32 0, i32 3
  %104 = load float, float* %103, align 4
  %105 = fcmp olt float %101, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %92
  %107 = load i16, i16* %14, align 2
  %108 = sext i16 %107 to i32
  %109 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %110 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %109, i32 0, i32 3
  %111 = load float, float* %110, align 4
  %112 = fadd float %111, 5.000000e-01
  %113 = fptosi float %112 to i32
  %114 = add nsw i32 %108, %113
  %115 = sitofp i32 %114 to float
  %116 = load %struct.nk_rect*, %struct.nk_rect** %11, align 8
  %117 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %116, i32 0, i32 1
  %118 = load float, float* %117, align 4
  %119 = fcmp oge float %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %106, %92
  br label %178

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %60
  %123 = load %struct.rawfb_image*, %struct.rawfb_image** %8, align 8
  %124 = load float, float* %18, align 4
  %125 = fptosi float %124 to i32
  %126 = load float, float* %19, align 4
  %127 = fptosi float %126 to i32
  call void @nk_rawfb_img_getpixel(%struct.nk_color* sret %20, %struct.rawfb_image* %123, i32 %125, i32 %127)
  %128 = bitcast %struct.nk_color* %15 to i8*
  %129 = bitcast %struct.nk_color* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 24, i1 false)
  %130 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %15, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %15, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %15, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137, %133, %122
  %142 = load %struct.nk_color*, %struct.nk_color** %12, align 8
  %143 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %15, i32 0, i32 2
  store i64 %144, i64* %145, align 8
  %146 = load %struct.nk_color*, %struct.nk_color** %12, align 8
  %147 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %15, i32 0, i32 1
  store i64 %148, i64* %149, align 8
  %150 = load %struct.nk_color*, %struct.nk_color** %12, align 8
  %151 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %15, i32 0, i32 0
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %141, %137
  %155 = load %struct.rawfb_image*, %struct.rawfb_image** %7, align 8
  %156 = load i16, i16* %13, align 2
  %157 = sext i16 %156 to i32
  %158 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %159 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %158, i32 0, i32 2
  %160 = load float, float* %159, align 4
  %161 = fadd float %160, 5.000000e-01
  %162 = fptosi float %161 to i32
  %163 = add nsw i32 %157, %162
  %164 = trunc i32 %163 to i16
  %165 = load i16, i16* %14, align 2
  %166 = sext i16 %165 to i32
  %167 = load %struct.nk_rect*, %struct.nk_rect** %9, align 8
  %168 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %167, i32 0, i32 3
  %169 = load float, float* %168, align 4
  %170 = fadd float %169, 5.000000e-01
  %171 = fptosi float %170 to i32
  %172 = add nsw i32 %166, %171
  %173 = trunc i32 %172 to i16
  %174 = call i32 @nk_rawfb_img_blendpixel(%struct.rawfb_image* %155, i16 signext %164, i16 signext %173, %struct.nk_color* byval(%struct.nk_color) align 8 %15)
  %175 = load float, float* %16, align 4
  %176 = load float, float* %18, align 4
  %177 = fadd float %176, %175
  store float %177, float* %18, align 4
  br label %178

178:                                              ; preds = %154, %120, %91
  %179 = load i16, i16* %13, align 2
  %180 = add i16 %179, 1
  store i16 %180, i16* %13, align 2
  br label %51

181:                                              ; preds = %51
  %182 = load %struct.nk_rect*, %struct.nk_rect** %10, align 8
  %183 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %182, i32 0, i32 2
  %184 = load float, float* %183, align 4
  store float %184, float* %18, align 4
  %185 = load float, float* %17, align 4
  %186 = load float, float* %19, align 4
  %187 = fadd float %186, %185
  store float %187, float* %19, align 4
  br label %188

188:                                              ; preds = %181
  %189 = load i16, i16* %14, align 2
  %190 = add i16 %189, 1
  store i16 %190, i16* %14, align 2
  br label %41

191:                                              ; preds = %41
  ret void
}

declare dso_local void @nk_rawfb_img_getpixel(%struct.nk_color* sret, %struct.rawfb_image*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nk_rawfb_img_blendpixel(%struct.rawfb_image*, i16 signext, i16 signext, %struct.nk_color* byval(%struct.nk_color) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
