; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvts_texdim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvts_texdim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wined3d_state = type { i32 }

@WINED3D_UNMAPPED_STAGE = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i64)* @nvts_texdim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvts_texdim(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @STATE_SAMPLER(i32 0)
  %11 = sub i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %24 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21, %3
  br label %51

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %51

38:                                               ; preds = %31
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @WINED3D_TSS_COLOR_OP, align 4
  %42 = call i32 @STATE_TEXTURESTAGE(i64 %40, i32 %41)
  %43 = call i64 @isStateDirty(%struct.wined3d_context* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %51

46:                                               ; preds = %38
  %47 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %50 = call i32 @nvts_activate_dimensions(%struct.wined3d_state* %47, i64 %48, %struct.wined3d_context* %49)
  br label %51

51:                                               ; preds = %46, %45, %37, %30
  ret void
}

declare dso_local i64 @STATE_SAMPLER(i32) #1

declare dso_local i64 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_TEXTURESTAGE(i64, i32) #1

declare dso_local i32 @nvts_activate_dimensions(%struct.wined3d_state*, i64, %struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
