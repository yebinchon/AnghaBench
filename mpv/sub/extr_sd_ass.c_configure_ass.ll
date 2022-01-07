; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_configure_ass.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_configure_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_ass_priv*, %struct.mp_subtitle_opts* }
%struct.sd_ass_priv = type { i32* }
%struct.mp_subtitle_opts = type { i32, i32, i32, i32, i32, i32, i32, float, i32, float, i32, i64, i32 }
%struct.mp_osd_res = type { float, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@ASS_OVERRIDE_BIT_STYLE = common dso_local global i32 0, align 4
@ASS_OVERRIDE_BIT_FONT_SIZE = common dso_local global i32 0, align 4
@ASS_OVERRIDE_BIT_ALIGNMENT = common dso_local global i32 0, align 4
@ASS_OVERRIDE_BIT_JUSTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, %struct.mp_osd_res*, i32, %struct.TYPE_6__*)* @configure_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_ass(%struct.sd* %0, %struct.mp_osd_res* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.mp_osd_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.mp_subtitle_opts*, align 8
  %10 = alloca %struct.sd_ass_priv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__, align 4
  store %struct.sd* %0, %struct.sd** %5, align 8
  store %struct.mp_osd_res* %1, %struct.mp_osd_res** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.sd*, %struct.sd** %5, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %25, align 8
  store %struct.mp_subtitle_opts* %26, %struct.mp_subtitle_opts** %9, align 8
  %27 = load %struct.sd*, %struct.sd** %5, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %28, align 8
  store %struct.sd_ass_priv* %29, %struct.sd_ass_priv** %10, align 8
  %30 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %10, align 8
  %31 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %35 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %38 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = call i32 @ass_set_frame_size(i32* %33, i32 %36, float %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %43 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %46 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %49 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %52 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ass_set_margins(i32* %41, i32 %44, i32 %47, i32 %50, i32 %53)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store float 1.000000e+00, float* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %4
  %58 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %59 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %72

62:                                               ; preds = %57, %4
  %63 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %64 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %67 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %70 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %79

72:                                               ; preds = %57
  %73 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %74 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %17, align 4
  %76 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %77 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %72, %62
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %84 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82, %79
  %88 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %89 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 100, %90
  store i32 %91, i32* %13, align 4
  %92 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %93 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %92, i32 0, i32 7
  %94 = load float, float* %93, align 4
  store float %94, float* %14, align 4
  %95 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %96 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %16, align 4
  %98 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %99 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %98, i32 0, i32 9
  %100 = load float, float* %99, align 4
  store float %100, float* %15, align 4
  br label %101

101:                                              ; preds = %87, %82
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %106 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %105, i32 0, i32 0
  %107 = load float, float* %106, align 4
  %108 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %109 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %112 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = sitofp i32 %114 to float
  %116 = fsub float %107, %115
  %117 = fptosi float %116 to i32
  store i32 %117, i32* %20, align 4
  %118 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %119 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %118, i32 0, i32 0
  %120 = load float, float* %119, align 4
  %121 = load i32, i32* %20, align 4
  %122 = call i64 @MPMAX(i32 %121, i32 1)
  %123 = sitofp i64 %122 to float
  %124 = fdiv float %120, %123
  %125 = load float, float* %15, align 4
  %126 = fmul float %125, %124
  store float %126, float* %15, align 4
  br label %127

127:                                              ; preds = %104, %101
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %127
  %131 = load %struct.mp_osd_res*, %struct.mp_osd_res** %6, align 8
  %132 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %131, i32 0, i32 0
  %133 = load float, float* %132, align 4
  %134 = fpext float %133 to double
  %135 = fdiv double %134, 7.200000e+02
  store double %135, double* %21, align 8
  %136 = load double, double* %21, align 8
  %137 = fcmp une double %136, 0.000000e+00
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load double, double* %21, align 8
  %140 = load float, float* %15, align 4
  %141 = fpext float %140 to double
  %142 = fdiv double %141, %139
  %143 = fptrunc double %142 to float
  store float %143, float* %15, align 4
  br label %144

144:                                              ; preds = %138, %130
  br label %145

145:                                              ; preds = %144, %127
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @ass_set_use_margins(i32* %146, i32 %147)
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @ass_set_line_position(i32* %149, i32 %150)
  %152 = load i32*, i32** %11, align 8
  %153 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %154 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ass_set_shaper(i32* %152, i32 %155)
  store i32 0, i32* %22, align 4
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %145
  %160 = load i32, i32* @ASS_OVERRIDE_BIT_STYLE, align 4
  %161 = load i32, i32* @ASS_OVERRIDE_BIT_FONT_SIZE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %22, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %22, align 4
  br label %165

165:                                              ; preds = %159, %145
  %166 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %167 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 4
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* @ASS_OVERRIDE_BIT_FONT_SIZE, align 4
  %172 = load i32, i32* %22, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %22, align 4
  br label %174

174:                                              ; preds = %170, %165
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %22, align 4
  %177 = call i32 @ass_set_selective_style_override_enabled(i32* %175, i32 %176)
  %178 = bitcast %struct.TYPE_7__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %178, i8 0, i64 8, i1 false)
  %179 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %180 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @mp_ass_set_style(%struct.TYPE_7__* %23, i32 288, i32 %181)
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @ass_set_selective_style_override(i32* %183, %struct.TYPE_7__* %23)
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @free(i32 %186)
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %213

190:                                              ; preds = %174
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %190
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %9, align 8
  %210 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @mp_ass_set_style(%struct.TYPE_7__* %205, i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %198, %190, %174
  %214 = load i32*, i32** %11, align 8
  %215 = load float, float* %15, align 4
  %216 = call i32 @ass_set_font_scale(i32* %214, float %215)
  %217 = load i32*, i32** %11, align 8
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @ass_set_hinting(i32* %217, i32 %218)
  %220 = load i32*, i32** %11, align 8
  %221 = load float, float* %14, align 4
  %222 = call i32 @ass_set_line_spacing(i32* %220, float %221)
  ret void
}

declare dso_local i32 @ass_set_frame_size(i32*, i32, float) #1

declare dso_local i32 @ass_set_margins(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @MPMAX(i32, i32) #1

declare dso_local i32 @ass_set_use_margins(i32*, i32) #1

declare dso_local i32 @ass_set_line_position(i32*, i32) #1

declare dso_local i32 @ass_set_shaper(i32*, i32) #1

declare dso_local i32 @ass_set_selective_style_override_enabled(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_ass_set_style(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ass_set_selective_style_override(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @ass_set_font_scale(i32*, float) #1

declare dso_local i32 @ass_set_hinting(i32*, i32) #1

declare dso_local i32 @ass_set_line_spacing(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
