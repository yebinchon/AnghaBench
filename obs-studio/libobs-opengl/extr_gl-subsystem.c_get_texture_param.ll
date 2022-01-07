; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_get_texture_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_get_texture_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader_param = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.gs_shader* }
%struct.gs_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.gs_shader_param* }

@GS_SHADER_PARAM_TEXTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gs_shader_param* (%struct.TYPE_5__*, i32)* @get_texture_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gs_shader_param* @get_texture_param(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.gs_shader_param*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_shader*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gs_shader_param*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.gs_shader*, %struct.gs_shader** %10, align 8
  store %struct.gs_shader* %11, %struct.gs_shader** %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %41, %2
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %15 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  %21 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.gs_shader_param*, %struct.gs_shader_param** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %23, i64 %24
  store %struct.gs_shader_param* %25, %struct.gs_shader_param** %8, align 8
  %26 = load %struct.gs_shader_param*, %struct.gs_shader_param** %8, align 8
  %27 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GS_SHADER_PARAM_TEXTURE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load %struct.gs_shader_param*, %struct.gs_shader_param** %8, align 8
  %33 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.gs_shader_param*, %struct.gs_shader_param** %8, align 8
  store %struct.gs_shader_param* %38, %struct.gs_shader_param** %3, align 8
  br label %45

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %12

44:                                               ; preds = %12
  store %struct.gs_shader_param* null, %struct.gs_shader_param** %3, align 8
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.gs_shader_param*, %struct.gs_shader_param** %3, align 8
  ret %struct.gs_shader_param* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
