; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/visualizer/extr_lcd_backlight.c_hsi_to_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/visualizer/extr_lcd_backlight.c_hsi_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, i32*, i32*, i32*)* @hsi_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsi_to_rgb(float %0, float %1, float %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load float, float* %7, align 4
  %17 = call float @fmodf(float %16, float 3.600000e+02) #3
  store float %17, float* %7, align 4
  %18 = load float, float* %7, align 4
  %19 = fmul float 0x400921FA00000000, %18
  %20 = fdiv float %19, 1.800000e+02
  store float %20, float* %7, align 4
  %21 = load float, float* %8, align 4
  %22 = fcmp ogt float %21, 0.000000e+00
  br i1 %22, label %23, label %31

23:                                               ; preds = %6
  %24 = load float, float* %8, align 4
  %25 = fcmp olt float %24, 1.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load float, float* %8, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi float [ %27, %26 ], [ 1.000000e+00, %28 ]
  br label %32

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi float [ %30, %29 ], [ 0.000000e+00, %31 ]
  store float %33, float* %8, align 4
  %34 = load float, float* %9, align 4
  %35 = fcmp ogt float %34, 0.000000e+00
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load float, float* %9, align 4
  %38 = fcmp olt float %37, 1.000000e+00
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load float, float* %9, align 4
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi float [ %40, %39 ], [ 1.000000e+00, %41 ]
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi float [ %43, %42 ], [ 0.000000e+00, %44 ]
  store float %46, float* %9, align 4
  %47 = load float, float* %7, align 4
  %48 = fcmp olt float %47, 0x4000C14F80000000
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load float, float* %9, align 4
  %51 = fmul float 6.553500e+04, %50
  %52 = fdiv float %51, 3.000000e+00
  %53 = load float, float* %8, align 4
  %54 = load float, float* %7, align 4
  %55 = call float @cos(float %54)
  %56 = fmul float %53, %55
  %57 = load float, float* %7, align 4
  %58 = fsub float 0x3FF0C15140000000, %57
  %59 = call float @cosf(float %58) #3
  %60 = fdiv float %56, %59
  %61 = fadd float 1.000000e+00, %60
  %62 = fmul float %52, %61
  %63 = fptoui float %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load float, float* %9, align 4
  %65 = fmul float 6.553500e+04, %64
  %66 = fdiv float %65, 3.000000e+00
  %67 = load float, float* %8, align 4
  %68 = load float, float* %7, align 4
  %69 = call float @cosf(float %68) #3
  %70 = load float, float* %7, align 4
  %71 = fsub float 0x3FF0C15140000000, %70
  %72 = call float @cos(float %71)
  %73 = fdiv float %69, %72
  %74 = fsub float 1.000000e+00, %73
  %75 = fmul float %67, %74
  %76 = fadd float 1.000000e+00, %75
  %77 = fmul float %66, %76
  %78 = fptoui float %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load float, float* %9, align 4
  %80 = fmul float 6.553500e+04, %79
  %81 = fdiv float %80, 3.000000e+00
  %82 = load float, float* %8, align 4
  %83 = fsub float 1.000000e+00, %82
  %84 = fmul float %81, %83
  %85 = fptoui float %84 to i32
  store i32 %85, i32* %15, align 4
  br label %173

86:                                               ; preds = %45
  %87 = load float, float* %7, align 4
  %88 = fpext float %87 to double
  %89 = fcmp olt double %88, 0x4010C151611BA3CA
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  %91 = load float, float* %7, align 4
  %92 = fpext float %91 to double
  %93 = fsub double %92, 2.094390e+00
  %94 = fptrunc double %93 to float
  store float %94, float* %7, align 4
  %95 = load float, float* %9, align 4
  %96 = fmul float 6.553500e+04, %95
  %97 = fdiv float %96, 3.000000e+00
  %98 = load float, float* %8, align 4
  %99 = load float, float* %7, align 4
  %100 = call float @cosf(float %99) #3
  %101 = fmul float %98, %100
  %102 = load float, float* %7, align 4
  %103 = fsub float 0x3FF0C15140000000, %102
  %104 = call float @cosf(float %103) #3
  %105 = fdiv float %101, %104
  %106 = fadd float 1.000000e+00, %105
  %107 = fmul float %97, %106
  %108 = fptoui float %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load float, float* %9, align 4
  %110 = fmul float 6.553500e+04, %109
  %111 = fdiv float %110, 3.000000e+00
  %112 = load float, float* %8, align 4
  %113 = load float, float* %7, align 4
  %114 = call float @cosf(float %113) #3
  %115 = load float, float* %7, align 4
  %116 = fsub float 0x3FF0C15140000000, %115
  %117 = call float @cosf(float %116) #3
  %118 = fdiv float %114, %117
  %119 = fsub float 1.000000e+00, %118
  %120 = fmul float %112, %119
  %121 = fadd float 1.000000e+00, %120
  %122 = fmul float %111, %121
  %123 = fptoui float %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load float, float* %9, align 4
  %125 = fmul float 6.553500e+04, %124
  %126 = fdiv float %125, 3.000000e+00
  %127 = load float, float* %8, align 4
  %128 = fsub float 1.000000e+00, %127
  %129 = fmul float %126, %128
  %130 = fptoui float %129 to i32
  store i32 %130, i32* %13, align 4
  br label %172

131:                                              ; preds = %86
  %132 = load float, float* %7, align 4
  %133 = fpext float %132 to double
  %134 = fsub double %133, 0x4010C151611BA3CA
  %135 = fptrunc double %134 to float
  store float %135, float* %7, align 4
  %136 = load float, float* %9, align 4
  %137 = fmul float 6.553500e+04, %136
  %138 = fdiv float %137, 3.000000e+00
  %139 = load float, float* %8, align 4
  %140 = load float, float* %7, align 4
  %141 = call float @cosf(float %140) #3
  %142 = fmul float %139, %141
  %143 = load float, float* %7, align 4
  %144 = fsub float 0x3FF0C15140000000, %143
  %145 = call float @cosf(float %144) #3
  %146 = fdiv float %142, %145
  %147 = fadd float 1.000000e+00, %146
  %148 = fmul float %138, %147
  %149 = fptoui float %148 to i32
  store i32 %149, i32* %15, align 4
  %150 = load float, float* %9, align 4
  %151 = fmul float 6.553500e+04, %150
  %152 = fdiv float %151, 3.000000e+00
  %153 = load float, float* %8, align 4
  %154 = load float, float* %7, align 4
  %155 = call float @cosf(float %154) #3
  %156 = load float, float* %7, align 4
  %157 = fsub float 0x3FF0C15140000000, %156
  %158 = call float @cosf(float %157) #3
  %159 = fdiv float %155, %158
  %160 = fsub float 1.000000e+00, %159
  %161 = fmul float %153, %160
  %162 = fadd float 1.000000e+00, %161
  %163 = fmul float %152, %162
  %164 = fptoui float %163 to i32
  store i32 %164, i32* %13, align 4
  %165 = load float, float* %9, align 4
  %166 = fmul float 6.553500e+04, %165
  %167 = fdiv float %166, 3.000000e+00
  %168 = load float, float* %8, align 4
  %169 = fsub float 1.000000e+00, %168
  %170 = fmul float %167, %169
  %171 = fptoui float %170 to i32
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %131, %90
  br label %173

173:                                              ; preds = %172, %49
  %174 = load i32, i32* %13, align 4
  %175 = icmp ugt i32 %174, 65535
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %179

177:                                              ; preds = %173
  %178 = load i32, i32* %13, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi i32 [ 65535, %176 ], [ %178, %177 ]
  %181 = load i32*, i32** %10, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp ugt i32 %182, 65535
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %14, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 65535, %184 ], [ %186, %185 ]
  %189 = load i32*, i32** %11, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp ugt i32 %190, 65535
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %195

193:                                              ; preds = %187
  %194 = load i32, i32* %15, align 4
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi i32 [ 65535, %192 ], [ %194, %193 ]
  %197 = load i32*, i32** %12, align 8
  store i32 %196, i32* %197, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @fmodf(float, float) #1

declare dso_local float @cos(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
