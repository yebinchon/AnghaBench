; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_compute_texture_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_compute_texture_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_matrix = type { float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32 }

@WINED3D_TTFF_DISABLE = common dso_local global i32 0, align 4
@WINED3D_TTFF_COUNT1 = common dso_local global i32 0, align 4
@WINED3D_TTFF_PROJECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Invalid texture transform flags: WINED3D_TTFF_COUNT1 | WINED3D_TTFF_PROJECTED.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Unexpected fixed function texture coord input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_matrix*, i32, i64, i64, i32, i64, %struct.wined3d_matrix*)* @compute_texture_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_texture_matrix(%struct.wined3d_gl_info* %0, %struct.wined3d_matrix* %1, i32 %2, i64 %3, i64 %4, i32 %5, i64 %6, %struct.wined3d_matrix* %7) #0 {
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_matrix*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.wined3d_matrix*, align 8
  %17 = alloca %struct.wined3d_matrix, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_matrix* %1, %struct.wined3d_matrix** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store %struct.wined3d_matrix* %7, %struct.wined3d_matrix** %16, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @WINED3D_TTFF_DISABLE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @WINED3D_TTFF_COUNT1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %21, %8
  %29 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %16, align 8
  %30 = call i32 @get_identity_matrix(%struct.wined3d_matrix* %29)
  br label %150

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @WINED3D_TTFF_COUNT1, align 4
  %34 = load i32, i32* @WINED3D_TTFF_PROJECTED, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @ERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %150

39:                                               ; preds = %31
  %40 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %10, align 8
  %41 = bitcast %struct.wined3d_matrix* %17 to i8*
  %42 = bitcast %struct.wined3d_matrix* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 60, i1 false)
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @WINED3D_TTFF_PROJECTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %39
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @WINED3D_TTFF_PROJECTED, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  switch i32 %54, label %89 [
    i32 129, label %55
    i32 128, label %72
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 0
  store float %57, float* %58, align 4
  %59 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 3
  %60 = load float, float* %59, align 4
  %61 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 2
  store float %60, float* %61, align 4
  %62 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 5
  %63 = load float, float* %62, align 4
  %64 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 4
  store float %63, float* %64, align 4
  %65 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 7
  %66 = load float, float* %65, align 4
  %67 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 6
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 7
  store float 0.000000e+00, float* %68, align 4
  %69 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 5
  store float 0.000000e+00, float* %69, align 4
  %70 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 3
  store float 0.000000e+00, float* %70, align 4
  %71 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 1
  store float 0.000000e+00, float* %71, align 4
  br label %89

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 8
  %74 = load float, float* %73, align 4
  %75 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 0
  store float %74, float* %75, align 4
  %76 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 9
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 2
  store float %77, float* %78, align 4
  %79 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 10
  %80 = load float, float* %79, align 4
  %81 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 4
  store float %80, float* %81, align 4
  %82 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 11
  %83 = load float, float* %82, align 4
  %84 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 6
  store float %83, float* %84, align 4
  %85 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 11
  store float 0.000000e+00, float* %85, align 4
  %86 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 10
  store float 0.000000e+00, float* %86, align 4
  %87 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 9
  store float 0.000000e+00, float* %87, align 4
  %88 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 8
  store float 0.000000e+00, float* %88, align 4
  br label %89

89:                                               ; preds = %50, %72, %55
  br label %90

90:                                               ; preds = %89, %47
  br label %146

91:                                               ; preds = %39
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %126, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  switch i32 %95, label %123 [
    i32 131, label %96
    i32 132, label %109
    i32 133, label %122
    i32 134, label %122
    i32 130, label %122
  ]

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 14
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 13
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 3
  %101 = load float, float* %100, align 4
  %102 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 7
  store float %101, float* %102, align 4
  %103 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 9
  %104 = load float, float* %103, align 4
  %105 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 11
  store float %104, float* %105, align 4
  %106 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 2
  %107 = load float, float* %106, align 4
  %108 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 6
  store float %107, float* %108, align 4
  br label %125

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 12
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 13
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 5
  %114 = load float, float* %113, align 4
  %115 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 7
  store float %114, float* %115, align 4
  %116 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 10
  %117 = load float, float* %116, align 4
  %118 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 11
  store float %117, float* %118, align 4
  %119 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 4
  %120 = load float, float* %119, align 4
  %121 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 6
  store float %120, float* %121, align 4
  br label %125

122:                                              ; preds = %94, %94, %94
  br label %125

123:                                              ; preds = %94
  %124 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %122, %109, %96
  br label %126

126:                                              ; preds = %125, %91
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @WINED3D_TTFF_PROJECTED, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  switch i32 %133, label %139 [
    i32 129, label %134
  ]

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 11
  store float 0.000000e+00, float* %135, align 4
  %136 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 10
  store float 0.000000e+00, float* %136, align 4
  %137 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 9
  store float 0.000000e+00, float* %137, align 4
  %138 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 8
  store float 0.000000e+00, float* %138, align 4
  br label %139

139:                                              ; preds = %129, %134
  %140 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 4
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 2
  store float 0.000000e+00, float* %141, align 4
  %142 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 0
  store float 0.000000e+00, float* %142, align 4
  %143 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %17, i32 0, i32 6
  store float 1.000000e+00, float* %143, align 4
  br label %144

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %126
  br label %146

146:                                              ; preds = %145, %90
  %147 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %16, align 8
  %148 = bitcast %struct.wined3d_matrix* %147 to i8*
  %149 = bitcast %struct.wined3d_matrix* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 4 %149, i64 60, i1 false)
  br label %150

150:                                              ; preds = %146, %37, %28
  ret void
}

declare dso_local i32 @get_identity_matrix(%struct.wined3d_matrix*) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
