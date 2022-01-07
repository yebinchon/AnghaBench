; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_load_sampler_on_textures.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_load_sampler_on_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.gs_shader* }
%struct.gs_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.gs_shader_param* }
%struct.gs_shader_param = type { i64, i64, i64, i64 }

@GS_SHADER_PARAM_TEXTURE = common dso_local global i64 0, align 8
@GL_TEXTURE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @load_sampler_on_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_sampler_on_textures(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_shader*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gs_shader_param*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.gs_shader*, %struct.gs_shader** %12, align 8
  store %struct.gs_shader* %13, %struct.gs_shader** %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %64, %3
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.gs_shader*, %struct.gs_shader** %8, align 8
  %17 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %14
  %22 = load %struct.gs_shader*, %struct.gs_shader** %8, align 8
  %23 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.gs_shader_param*, %struct.gs_shader_param** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %25, i64 %26
  store %struct.gs_shader_param* %27, %struct.gs_shader_param** %10, align 8
  %28 = load %struct.gs_shader_param*, %struct.gs_shader_param** %10, align 8
  %29 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GS_SHADER_PARAM_TEXTURE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %21
  %34 = load %struct.gs_shader_param*, %struct.gs_shader_param** %10, align 8
  %35 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load %struct.gs_shader_param*, %struct.gs_shader_param** %10, align 8
  %42 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i64, i64* @GL_TEXTURE0, align 8
  %47 = load %struct.gs_shader_param*, %struct.gs_shader_param** %10, align 8
  %48 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @gl_active_texture(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %68

54:                                               ; preds = %45
  %55 = load %struct.gs_shader_param*, %struct.gs_shader_param** %10, align 8
  %56 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @load_texture_sampler(i64 %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %68

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %40, %33, %21
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %14

67:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61, %53
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @gl_active_texture(i64) #1

declare dso_local i32 @load_texture_sampler(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
