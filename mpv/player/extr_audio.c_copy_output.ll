; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_copy_output.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_copy_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double }
%struct.ao_chain = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.mp_audio_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.mp_audio_buffer = type { i32 }
%struct.mp_chmap = type { i32 }
%struct.mp_frame = type { i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@MP_FRAME_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown frame type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, %struct.ao_chain*, i32, double, i32*)* @copy_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_output(%struct.MPContext* %0, %struct.ao_chain* %1, i32 %2, double %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca %struct.ao_chain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mp_audio_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mp_chmap, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.mp_frame, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32**, align 8
  store %struct.MPContext* %0, %struct.MPContext** %7, align 8
  store %struct.ao_chain* %1, %struct.ao_chain** %8, align 8
  store i32 %2, i32* %9, align 4
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %25 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %24, i32 0, i32 5
  %26 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %25, align 8
  store %struct.mp_audio_buffer* %26, %struct.mp_audio_buffer** %12, align 8
  %27 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %28 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ao_get_format(i32 %29, i32* %13, i32* %14, %struct.mp_chmap* %15)
  br label %31

31:                                               ; preds = %184, %5
  %32 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %12, align 8
  %33 = call i32 @mp_audio_buffer_samples(%struct.mp_audio_buffer* %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %200

36:                                               ; preds = %31
  %37 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %12, align 8
  %38 = call i32 @mp_audio_buffer_samples(%struct.mp_audio_buffer* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @INT_MAX, align 4
  store i32 %39, i32* %17, align 4
  %40 = load double, double* %10, align 8
  %41 = load double, double* @MP_NOPTS_VALUE, align 8
  %42 = fcmp une double %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %44, %47
  %49 = sitofp i32 %48 to double
  store double %49, double* %18, align 8
  %50 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %51 = call double @written_audio_pts(%struct.MPContext* %50)
  store double %51, double* %19, align 8
  %52 = load double, double* %19, align 8
  %53 = load double, double* @MP_NOPTS_VALUE, align 8
  %54 = fcmp une double %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %43
  %56 = load double, double* %10, align 8
  %57 = load double, double* %19, align 8
  %58 = fsub double %56, %57
  %59 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fsub double %58, %63
  %65 = load double, double* %18, align 8
  %66 = fmul double %64, %65
  store double %66, double* %20, align 8
  %67 = load double, double* %20, align 8
  %68 = load i32, i32* @INT_MAX, align 4
  %69 = call i32 @MPCLAMP(double %67, i32 0, i32 %68)
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %55, %43
  br label %71

71:                                               ; preds = %70, %36
  %72 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %73 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %78 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mp_aframe_get_size(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %137, label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %84 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %83, i32 0, i32 1
  %85 = call i32 @TA_FREEP(i32* %84)
  %86 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %87 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call { i64, i32 } @mp_pin_out_read(i32 %94)
  %96 = bitcast %struct.mp_frame* %21 to { i64, i32 }*
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %96, i32 0, i32 0
  %98 = extractvalue { i64, i32 } %95, 0
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %96, i32 0, i32 1
  %100 = extractvalue { i64, i32 } %95, 1
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %21, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %82
  %106 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %21, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %109 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %111 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %113 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mp_aframe_end_pts(i32 %114)
  %116 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %117 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  br label %136

118:                                              ; preds = %82
  %119 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %21, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MP_FRAME_EOF, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %125 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %135

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %21, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %132 = call i32 @MP_ERR(%struct.MPContext* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %133 = call i32 @mp_frame_unref(%struct.mp_frame* %21)
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %135, %105
  br label %137

137:                                              ; preds = %136, %76
  %138 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %139 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %137
  %143 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %144 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32*, i32** %11, align 8
  store i32 1, i32* %148, align 4
  store i32 1, i32* %6, align 4
  br label %201

149:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %201

150:                                              ; preds = %137
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %153 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @mp_aframe_get_size(i32 %154)
  %156 = add nsw i32 %151, %155
  %157 = load i32, i32* %17, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %150
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %159
  %164 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %165 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32** @mp_aframe_get_data_ro(i32 %166)
  store i32** %167, i32*** %22, align 8
  %168 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %12, align 8
  %169 = load i32**, i32*** %22, align 8
  %170 = bitcast i32** %169 to i8**
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %171, %172
  %174 = call i32 @mp_audio_buffer_append(%struct.mp_audio_buffer* %168, i8** %170, i32 %173)
  %175 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %176 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %16, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i32 @mp_aframe_skip_samples(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %163, %159
  %183 = load i32*, i32** %11, align 8
  store i32 1, i32* %183, align 4
  store i32 1, i32* %6, align 4
  br label %201

184:                                              ; preds = %150
  %185 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %186 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32** @mp_aframe_get_data_ro(i32 %187)
  store i32** %188, i32*** %23, align 8
  %189 = load %struct.mp_audio_buffer*, %struct.mp_audio_buffer** %12, align 8
  %190 = load i32**, i32*** %23, align 8
  %191 = bitcast i32** %190 to i8**
  %192 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %193 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @mp_aframe_get_size(i32 %194)
  %196 = call i32 @mp_audio_buffer_append(%struct.mp_audio_buffer* %189, i8** %191, i32 %195)
  %197 = load %struct.ao_chain*, %struct.ao_chain** %8, align 8
  %198 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %197, i32 0, i32 1
  %199 = call i32 @TA_FREEP(i32* %198)
  br label %31

200:                                              ; preds = %31
  store i32 1, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %182, %149, %147
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @ao_get_format(i32, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_audio_buffer_samples(%struct.mp_audio_buffer*) #1

declare dso_local double @written_audio_pts(%struct.MPContext*) #1

declare dso_local i32 @MPCLAMP(double, i32, i32) #1

declare dso_local i32 @mp_aframe_get_size(i32) #1

declare dso_local i32 @TA_FREEP(i32*) #1

declare dso_local { i64, i32 } @mp_pin_out_read(i32) #1

declare dso_local i32 @mp_aframe_end_pts(i32) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local i32** @mp_aframe_get_data_ro(i32) #1

declare dso_local i32 @mp_audio_buffer_append(%struct.mp_audio_buffer*, i8**, i32) #1

declare dso_local i32 @mp_aframe_skip_samples(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
