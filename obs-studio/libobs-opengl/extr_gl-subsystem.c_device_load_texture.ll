; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_load_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_load_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gs_sampler_state**, %struct.gs_texture**, i32 }
%struct.gs_sampler_state = type { i32 }
%struct.gs_texture = type { i64, i32 }
%struct.gs_shader_param = type { i64, %struct.gs_texture* }

@GL_TEXTURE0 = common dso_local global i64 0, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"device_load_texture (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_load_texture(%struct.TYPE_4__* %0, %struct.gs_texture* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.gs_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_shader_param*, align 8
  %8 = alloca %struct.gs_sampler_state*, align 8
  %9 = alloca %struct.gs_texture*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.gs_texture* %1, %struct.gs_texture** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.gs_texture**, %struct.gs_texture*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gs_texture*, %struct.gs_texture** %12, i64 %14
  %16 = load %struct.gs_texture*, %struct.gs_texture** %15, align 8
  store %struct.gs_texture* %16, %struct.gs_texture** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %110

22:                                               ; preds = %3
  %23 = load %struct.gs_texture*, %struct.gs_texture** %9, align 8
  %24 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %25 = icmp eq %struct.gs_texture* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %113

27:                                               ; preds = %22
  %28 = load i64, i64* @GL_TEXTURE0, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @gl_active_texture(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.gs_texture*, %struct.gs_texture** %9, align 8
  %37 = icmp ne %struct.gs_texture* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %40 = icmp ne %struct.gs_texture* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.gs_texture*, %struct.gs_texture** %9, align 8
  %43 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %46 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41, %38
  %50 = load %struct.gs_texture*, %struct.gs_texture** %9, align 8
  %51 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gl_bind_texture(i64 %52, i32 0)
  br label %54

54:                                               ; preds = %49, %41, %35
  %55 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.gs_texture**, %struct.gs_texture*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.gs_texture*, %struct.gs_texture** %58, i64 %60
  store %struct.gs_texture* %55, %struct.gs_texture** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.gs_shader_param* @get_texture_param(%struct.TYPE_4__* %62, i32 %63)
  store %struct.gs_shader_param* %64, %struct.gs_shader_param** %7, align 8
  %65 = load %struct.gs_shader_param*, %struct.gs_shader_param** %7, align 8
  %66 = icmp ne %struct.gs_shader_param* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  br label %113

68:                                               ; preds = %54
  %69 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %70 = load %struct.gs_shader_param*, %struct.gs_shader_param** %7, align 8
  %71 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %70, i32 0, i32 1
  store %struct.gs_texture* %69, %struct.gs_texture** %71, align 8
  %72 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %73 = icmp ne %struct.gs_texture* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %113

75:                                               ; preds = %68
  %76 = load %struct.gs_shader_param*, %struct.gs_shader_param** %7, align 8
  %77 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, -1
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.gs_sampler_state**, %struct.gs_sampler_state*** %82, align 8
  %84 = load %struct.gs_shader_param*, %struct.gs_shader_param** %7, align 8
  %85 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.gs_sampler_state*, %struct.gs_sampler_state** %83, i64 %86
  %88 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %87, align 8
  store %struct.gs_sampler_state* %88, %struct.gs_sampler_state** %8, align 8
  br label %90

89:                                               ; preds = %75
  store %struct.gs_sampler_state* null, %struct.gs_sampler_state** %8, align 8
  br label %90

90:                                               ; preds = %89, %80
  %91 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %92 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %95 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @gl_bind_texture(i64 %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  br label %110

100:                                              ; preds = %90
  %101 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %8, align 8
  %102 = icmp ne %struct.gs_sampler_state* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.gs_texture*, %struct.gs_texture** %5, align 8
  %105 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %8, align 8
  %106 = call i32 @load_texture_sampler(%struct.gs_texture* %104, %struct.gs_sampler_state* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %110

109:                                              ; preds = %103, %100
  br label %113

110:                                              ; preds = %108, %99, %34, %21
  %111 = load i32, i32* @LOG_ERROR, align 4
  %112 = call i32 @blog(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %109, %74, %67, %26
  ret void
}

declare dso_local i32 @gl_active_texture(i64) #1

declare dso_local i32 @gl_bind_texture(i64, i32) #1

declare dso_local %struct.gs_shader_param* @get_texture_param(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @load_texture_sampler(%struct.gs_texture*, %struct.gs_sampler_state*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
