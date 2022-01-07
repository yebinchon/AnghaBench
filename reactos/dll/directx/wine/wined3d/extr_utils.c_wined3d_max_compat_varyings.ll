; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_max_compat_varyings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_max_compat_varyings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64* }

@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@MAX_TEXTURES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_max_compat_varyings(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %2, align 8
  %3 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @MAX_TEXTURES, align 4
  %12 = mul nsw i32 %11, 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @MAX_TEXTURES, align 4
  %15 = add nsw i32 %14, 2
  %16 = mul nsw i32 %15, 4
  %17 = add nsw i32 %16, 1
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ %12, %10 ], [ %17, %13 ]
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
