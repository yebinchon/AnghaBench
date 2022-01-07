; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_modelview_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_modelview_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64 }
%struct.wined3d_state = type { i32* }
%struct.wined3d_matrix = type { i32 }

@WINED3D_TS_VIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_modelview_matrix(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2, %struct.wined3d_matrix* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_matrix*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_matrix* %3, %struct.wined3d_matrix** %8, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %8, align 8
  %15 = call i32 @get_identity_matrix(%struct.wined3d_matrix* %14)
  br label %30

16:                                               ; preds = %4
  %17 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %8, align 8
  %18 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @WINED3D_TS_VIEW, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @WINED3D_TS_WORLD_MATRIX(i32 %26)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @multiply_matrix(%struct.wined3d_matrix* %17, i32* %22, i32* %28)
  br label %30

30:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @get_identity_matrix(%struct.wined3d_matrix*) #1

declare dso_local i32 @multiply_matrix(%struct.wined3d_matrix*, i32*, i32*) #1

declare dso_local i64 @WINED3D_TS_WORLD_MATRIX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
