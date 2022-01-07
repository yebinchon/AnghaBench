; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gl_add_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i32 }
%struct.shader_var = type { i32, i32, i32, i32, i32 }
%struct.gs_shader_param = type { i64, i32, i32, i32, i64, i32, %struct.gs_shader*, i32, i32, i32 }

@GS_SHADER_PARAM_TEXTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_shader*, %struct.shader_var*, i32*)* @gl_add_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_add_param(%struct.gs_shader* %0, %struct.shader_var* %1, i32* %2) #0 {
  %4 = alloca %struct.gs_shader*, align 8
  %5 = alloca %struct.shader_var*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gs_shader_param, align 8
  store %struct.gs_shader* %0, %struct.gs_shader** %4, align 8
  store %struct.shader_var* %1, %struct.shader_var** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = bitcast %struct.gs_shader_param* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 64, i1 false)
  %9 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %10 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %14 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bstrdup(i32 %15)
  %17 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %19 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 6
  store %struct.gs_shader* %18, %struct.gs_shader** %19, align 8
  %20 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %21 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @get_shader_param_type(i32 %22)
  %24 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GS_SHADER_PARAM_TEXTURE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %31 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 4
  store i64 %37, i64* %38, align 8
  br label %41

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 1
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %39, %29
  %42 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %45 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @da_move(i32 %43, i32 %46)
  %48 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.gs_shader_param, %struct.gs_shader_param* %7, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @da_copy(i32 %49, i32 %51)
  %53 = load %struct.gs_shader*, %struct.gs_shader** %4, align 8
  %54 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @da_push_back(i32 %55, %struct.gs_shader_param* %7)
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bstrdup(i32) #2

declare dso_local i64 @get_shader_param_type(i32) #2

declare dso_local i32 @da_move(i32, i32) #2

declare dso_local i32 @da_copy(i32, i32) #2

declare dso_local i32 @da_push_back(i32, %struct.gs_shader_param*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
