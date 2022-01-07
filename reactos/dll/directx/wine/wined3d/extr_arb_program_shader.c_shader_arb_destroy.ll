; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.arb_vshader_private*, %struct.TYPE_6__, %struct.wined3d_device* }
%struct.arb_vshader_private = type { i64, %struct.arb_vshader_private*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }
%struct.arb_pshader_private = type { i64, %struct.arb_pshader_private*, i32 }
%struct.wined3d_context = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"GL_EXTCALL(glDeleteProgramsARB(1, &shader_data->gl_shaders[i].prgId))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader*)* @shader_arb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_destroy(%struct.wined3d_shader* %0) #0 {
  %2 = alloca %struct.wined3d_shader*, align 8
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.arb_pshader_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.arb_vshader_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %2, align 8
  %11 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %11, i32 0, i32 2
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %12, align 8
  store %struct.wined3d_device* %13, %struct.wined3d_device** %3, align 8
  %14 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %4, align 8
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @shader_is_pshader_version(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %1
  %26 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %26, i32 0, i32 0
  %28 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %27, align 8
  %29 = bitcast %struct.arb_vshader_private* %28 to %struct.arb_pshader_private*
  store %struct.arb_pshader_private* %29, %struct.arb_pshader_private** %5, align 8
  %30 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %5, align 8
  %31 = icmp ne %struct.arb_pshader_private* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %120

33:                                               ; preds = %25
  %34 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %5, align 8
  %35 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %40 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %39, i32* null, i32 0)
  store %struct.wined3d_context* %40, %struct.wined3d_context** %7, align 8
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %57, %38
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %5, align 8
  %44 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %5, align 8
  %49 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %48, i32 0, i32 1
  %50 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %50, i64 %51
  %53 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %52, i32 0, i32 2
  %54 = call i32 @glDeleteProgramsARB(i32 1, i32* %53)
  %55 = call i32 @GL_EXTCALL(i32 %54)
  %56 = call i32 @checkGLcall(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %62 = call i32 @context_release(%struct.wined3d_context* %61)
  br label %63

63:                                               ; preds = %60, %33
  %64 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %5, align 8
  %65 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %64, i32 0, i32 1
  %66 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %65, align 8
  %67 = bitcast %struct.arb_pshader_private* %66 to %struct.arb_vshader_private*
  %68 = call i32 @heap_free(%struct.arb_vshader_private* %67)
  %69 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %5, align 8
  %70 = bitcast %struct.arb_pshader_private* %69 to %struct.arb_vshader_private*
  %71 = call i32 @heap_free(%struct.arb_vshader_private* %70)
  %72 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %72, i32 0, i32 0
  store %struct.arb_vshader_private* null, %struct.arb_vshader_private** %73, align 8
  br label %120

74:                                               ; preds = %1
  %75 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %76 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %75, i32 0, i32 0
  %77 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %76, align 8
  store %struct.arb_vshader_private* %77, %struct.arb_vshader_private** %8, align 8
  %78 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %79 = icmp ne %struct.arb_vshader_private* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %120

81:                                               ; preds = %74
  %82 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %83 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %88 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %87, i32* null, i32 0)
  store %struct.wined3d_context* %88, %struct.wined3d_context** %10, align 8
  store i64 0, i64* %9, align 8
  br label %89

89:                                               ; preds = %105, %86
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %92 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %97 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %96, i32 0, i32 1
  %98 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %98, i64 %99
  %101 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %100, i32 0, i32 2
  %102 = call i32 @glDeleteProgramsARB(i32 1, i32* %101)
  %103 = call i32 @GL_EXTCALL(i32 %102)
  %104 = call i32 @checkGLcall(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %95
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %89

108:                                              ; preds = %89
  %109 = load %struct.wined3d_context*, %struct.wined3d_context** %10, align 8
  %110 = call i32 @context_release(%struct.wined3d_context* %109)
  br label %111

111:                                              ; preds = %108, %81
  %112 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %113 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %112, i32 0, i32 1
  %114 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %113, align 8
  %115 = call i32 @heap_free(%struct.arb_vshader_private* %114)
  %116 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %117 = call i32 @heap_free(%struct.arb_vshader_private* %116)
  %118 = load %struct.wined3d_shader*, %struct.wined3d_shader** %2, align 8
  %119 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %118, i32 0, i32 0
  store %struct.arb_vshader_private* null, %struct.arb_vshader_private** %119, align 8
  br label %120

120:                                              ; preds = %32, %80, %111, %63
  ret void
}

declare dso_local i64 @shader_is_pshader_version(i32) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glDeleteProgramsARB(i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @heap_free(%struct.arb_vshader_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
