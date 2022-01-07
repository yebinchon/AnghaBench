; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_shader_backend.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_shader_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.wined3d_shader_backend_ops = type { i32 }
%struct.wined3d_gl_info = type { i64, i64* }

@wined3d_settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ARB_VERTEX_SHADER = common dso_local global i64 0, align 8
@ARB_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@glsl_shader_backend = common dso_local global %struct.wined3d_shader_backend_ops zeroinitializer, align 4
@ARB_VERTEX_PROGRAM = common dso_local global i64 0, align 8
@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@arb_program_shader_backend = common dso_local global %struct.wined3d_shader_backend_ops zeroinitializer, align 4
@none_shader_backend = common dso_local global %struct.wined3d_shader_backend_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_shader_backend_ops* (%struct.wined3d_gl_info*)* @select_shader_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_shader_backend_ops* @select_shader_backend(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca %struct.wined3d_shader_backend_ops*, align 8
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wined3d_settings, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @MAKEDWORD_VERSION(i32 1, i32 20)
  %12 = icmp sge i64 %10, %11
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @ARB_VERTEX_SHADER, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @ARB_FRAGMENT_SHADER, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store %struct.wined3d_shader_backend_ops* @glsl_shader_backend, %struct.wined3d_shader_backend_ops** %2, align 8
  br label %90

35:                                               ; preds = %26, %18, %13
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @ARB_VERTEX_PROGRAM, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store %struct.wined3d_shader_backend_ops* @arb_program_shader_backend, %struct.wined3d_shader_backend_ops** %2, align 8
  br label %90

52:                                               ; preds = %43, %35
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @ARB_VERTEX_SHADER, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @ARB_FRAGMENT_SHADER, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %55
  store %struct.wined3d_shader_backend_ops* @glsl_shader_backend, %struct.wined3d_shader_backend_ops** %2, align 8
  br label %90

72:                                               ; preds = %63, %52
  %73 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %74 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @ARB_VERTEX_PROGRAM, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %72
  store %struct.wined3d_shader_backend_ops* @arb_program_shader_backend, %struct.wined3d_shader_backend_ops** %2, align 8
  br label %90

89:                                               ; preds = %80
  store %struct.wined3d_shader_backend_ops* @none_shader_backend, %struct.wined3d_shader_backend_ops** %2, align 8
  br label %90

90:                                               ; preds = %89, %88, %71, %51, %34
  %91 = load %struct.wined3d_shader_backend_ops*, %struct.wined3d_shader_backend_ops** %2, align 8
  ret %struct.wined3d_shader_backend_ops* %91
}

declare dso_local i64 @MAKEDWORD_VERSION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
