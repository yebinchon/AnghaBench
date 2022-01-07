; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_wc_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-capture.c_wc_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_capture = type { float, float, float, i64, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@EXCLUDE_MINIMIZED = common dso_local global i32 0, align 4
@CURSOR_CHECK_TIME = common dso_local global float 0.000000e+00, align 4
@RESIZE_CHECK_TIME = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @wc_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wc_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.window_capture*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.window_capture*
  store %struct.window_capture* %11, %struct.window_capture** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %13 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @obs_source_showing(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %222

18:                                               ; preds = %2
  %19 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %20 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %25 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @IsWindow(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %96, label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %31 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %36 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %222

40:                                               ; preds = %34, %29
  %41 = load float, float* %4, align 4
  %42 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %43 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = fadd float %44, %41
  store float %45, float* %43, align 8
  %46 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %47 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %46, i32 0, i32 0
  %48 = load float, float* %47, align 8
  %49 = fcmp olt float %48, 1.000000e+00
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %52 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %58 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %57, i32 0, i32 4
  %59 = call i32 @dc_capture_free(%struct.TYPE_7__* %58)
  br label %60

60:                                               ; preds = %56, %50
  br label %222

61:                                               ; preds = %40
  %62 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %63 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %62, i32 0, i32 0
  store float 0.000000e+00, float* %63, align 8
  %64 = load i32, i32* @EXCLUDE_MINIMIZED, align 4
  %65 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %66 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %69 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %72 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %75 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @find_window(i32 %64, i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %79 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %81 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %61
  %85 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %86 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %92 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %91, i32 0, i32 4
  %93 = call i32 @dc_capture_free(%struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %90, %84
  br label %222

95:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %104

96:                                               ; preds = %23
  %97 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %98 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @IsIconic(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %222

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %95
  %105 = load float, float* %4, align 4
  %106 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %107 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %106, i32 0, i32 1
  %108 = load float, float* %107, align 4
  %109 = fadd float %108, %105
  store float %109, float* %107, align 4
  %110 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %111 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %110, i32 0, i32 1
  %112 = load float, float* %111, align 4
  %113 = load float, float* @CURSOR_CHECK_TIME, align 4
  %114 = fcmp ogt float %112, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %104
  %116 = call i64 (...) @GetForegroundWindow()
  %117 = call i32 @GetWindowThreadProcessId(i64 %116, i64* %8)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %119, %115
  %121 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %122 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @GetWindowThreadProcessId(i64 %123, i64* %9)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  store i64 0, i64* %9, align 8
  br label %127

127:                                              ; preds = %126, %120
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i64, i64* %9, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %139 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %145

141:                                              ; preds = %133, %130, %127
  %142 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %143 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %147 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %146, i32 0, i32 1
  store float 0.000000e+00, float* %147, align 4
  br label %148

148:                                              ; preds = %145, %104
  %149 = call i32 (...) @obs_enter_graphics()
  %150 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %151 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @GetClientRect(i64 %152, %struct.TYPE_6__* %6)
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %188, label %156

156:                                              ; preds = %148
  %157 = load float, float* %4, align 4
  %158 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %159 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %158, i32 0, i32 2
  %160 = load float, float* %159, align 8
  %161 = fadd float %160, %157
  store float %161, float* %159, align 8
  %162 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %163 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %162, i32 0, i32 2
  %164 = load float, float* %163, align 8
  %165 = load float, float* @RESIZE_CHECK_TIME, align 4
  %166 = fcmp oge float %164, %165
  br i1 %166, label %167, label %187

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %171 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %169, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %179 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %177, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175, %167
  store i32 1, i32* %7, align 4
  br label %184

184:                                              ; preds = %183, %175
  %185 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %186 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %185, i32 0, i32 2
  store float 0.000000e+00, float* %186, align 8
  br label %187

187:                                              ; preds = %184, %156
  br label %188

188:                                              ; preds = %187, %148
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %214

191:                                              ; preds = %188
  %192 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %193 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %192, i32 0, i32 2
  store float 0.000000e+00, float* %193, align 8
  %194 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %195 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %194, i32 0, i32 7
  %196 = bitcast %struct.TYPE_6__* %195 to i8*
  %197 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 16, i1 false)
  %198 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %199 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %198, i32 0, i32 4
  %200 = call i32 @dc_capture_free(%struct.TYPE_7__* %199)
  %201 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %202 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %208 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %211 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dc_capture_init(%struct.TYPE_7__* %202, i32 0, i32 0, i64 %204, i64 %206, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %191, %188
  %215 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %216 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %215, i32 0, i32 4
  %217 = load %struct.window_capture*, %struct.window_capture** %5, align 8
  %218 = getelementptr inbounds %struct.window_capture, %struct.window_capture* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @dc_capture_capture(%struct.TYPE_7__* %216, i64 %219)
  %221 = call i32 (...) @obs_leave_graphics()
  br label %222

222:                                              ; preds = %214, %102, %94, %60, %39, %17
  ret void
}

declare dso_local i32 @obs_source_showing(i32) #1

declare dso_local i32 @IsWindow(i64) #1

declare dso_local i32 @dc_capture_free(%struct.TYPE_7__*) #1

declare dso_local i64 @find_window(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IsIconic(i64) #1

declare dso_local i32 @GetWindowThreadProcessId(i64, i64*) #1

declare dso_local i64 @GetForegroundWindow(...) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_capture_init(%struct.TYPE_7__*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @dc_capture_capture(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
