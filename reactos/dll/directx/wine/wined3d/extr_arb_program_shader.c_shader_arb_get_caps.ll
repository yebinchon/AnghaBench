; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.shader_caps = type { float, i32, i64, i8*, i8*, i64, i64, i64, i64, i8*, i8* }

@ARB_VERTEX_PROGRAM = common dso_local global i64 0, align 8
@NV_VERTEX_PROGRAM3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"Hardware vertex shader version 3.0 enabled (NV_VERTEX_PROGRAM3)\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Hardware vertex shader version 2.0 enabled (ARB_PROGRAM)\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Hardware vertex shader version 1.1 enabled (ARB_PROGRAM)\0A\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@WINED3D_MAX_VS_CONSTS_F = common dso_local global i32 0, align 4
@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@NV_FRAGMENT_PROGRAM2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"Hardware pixel shader version 3.0 enabled (NV_FRAGMENT_PROGRAM2)\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Hardware pixel shader version 2.0 enabled (ARB_PROGRAM)\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Hardware pixel shader version 1.4 enabled (ARB_PROGRAM)\0A\00", align 1
@WINED3D_MAX_PS_CONSTS_F = common dso_local global i32 0, align 4
@WINED3D_SHADER_CAP_SRGB_WRITE = common dso_local global i32 0, align 4
@WINED3D_SHADER_CAP_VS_CLIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_caps*)* @shader_arb_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_get_caps(%struct.wined3d_gl_info* %0, %struct.shader_caps* %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.shader_caps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store %struct.shader_caps* %1, %struct.shader_caps** %4, align 8
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @ARB_VERTEX_PROGRAM, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %2
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 96
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %24 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %38

27:                                               ; preds = %16
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @min(i32 %31, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @NV_VERTEX_PROGRAM3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  store i32 3, i32* %6, align 4
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %56

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 256
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  store i32 2, i32* %6, align 4
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %55

53:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @min(i32 %57, i32 %58)
  %60 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %61 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @WINED3D_MAX_VS_CONSTS_F, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i8* @min(i32 %62, i32 %63)
  %65 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %66 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  br label %72

67:                                               ; preds = %2
  %68 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %69 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %68, i32 0, i32 10
  store i8* null, i8** %69, align 8
  %70 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %71 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %70, i32 0, i32 9
  store i8* null, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %56
  %73 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %74 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %76 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %75, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %78 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %80 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %141

88:                                               ; preds = %72
  %89 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %90 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 24
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %96 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %7, align 4
  br label %110

99:                                               ; preds = %88
  %100 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %101 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @min(i32 %103, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %99, %94
  %111 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %112 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @NV_FRAGMENT_PROGRAM2, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  store i32 3, i32* %8, align 4
  %119 = call i32 @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %128

120:                                              ; preds = %110
  %121 = load i32, i32* %7, align 4
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  store i32 2, i32* %8, align 4
  %124 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %127

125:                                              ; preds = %120
  store i32 1, i32* %8, align 4
  %126 = call i32 @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %123
  br label %128

128:                                              ; preds = %127, %118
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 1), align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i8* @min(i32 %129, i32 %130)
  %132 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %133 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* @WINED3D_MAX_PS_CONSTS_F, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i8* @min(i32 %134, i32 %135)
  %137 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %138 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %140 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %139, i32 0, i32 0
  store float 8.000000e+00, float* %140, align 8
  br label %148

141:                                              ; preds = %72
  %142 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %143 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %142, i32 0, i32 4
  store i8* null, i8** %143, align 8
  %144 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %145 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %144, i32 0, i32 3
  store i8* null, i8** %145, align 8
  %146 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %147 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %146, i32 0, i32 0
  store float 0.000000e+00, float* %147, align 8
  br label %148

148:                                              ; preds = %141, %128
  %149 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %150 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @WINED3D_SHADER_CAP_SRGB_WRITE, align 4
  %152 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %153 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %155 = call i64 @use_nv_clip(%struct.wined3d_gl_info* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %148
  %158 = load i32, i32* @WINED3D_SHADER_CAP_VS_CLIPPING, align 4
  %159 = load %struct.shader_caps*, %struct.shader_caps** %4, align 8
  %160 = getelementptr inbounds %struct.shader_caps, %struct.shader_caps* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %148
  ret void
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @use_nv_clip(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
