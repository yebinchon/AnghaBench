; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_preload_textures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_preload_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MAX_VERTEX_SAMPLERS = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*)* @context_preload_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_preload_textures(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %4, align 8
  %7 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %8 = call i64 @use_vs(%struct.wined3d_state* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_VERTEX_SAMPLERS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %15
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %33 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %34 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %34, %35
  %37 = call i32 @context_preload_texture(%struct.wined3d_context* %32, %struct.wined3d_state* %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %11

42:                                               ; preds = %11
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %45 = call i64 @use_ps(%struct.wined3d_state* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %70 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @context_preload_texture(%struct.wined3d_context* %69, %struct.wined3d_state* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %48

77:                                               ; preds = %48
  br label %101

78:                                               ; preds = %43
  %79 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %80 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %95, %78
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %91 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @context_preload_texture(%struct.wined3d_context* %90, %struct.wined3d_state* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %85
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %82

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %77
  ret void
}

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @context_preload_texture(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
