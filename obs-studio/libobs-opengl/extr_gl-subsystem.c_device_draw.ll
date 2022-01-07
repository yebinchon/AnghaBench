; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_draw.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.gs_vertex_buffer*, %struct.gs_index_buffer*, %struct.gs_program*, i32 }
%struct.gs_vertex_buffer = type { i64 }
%struct.gs_index_buffer = type { i64, i32, i64 }
%struct.gs_program = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"glUseProgram (zero)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"glDrawElements\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"glDrawArrays\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"device_draw (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_draw(%struct.TYPE_6__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gs_vertex_buffer*, align 8
  %10 = alloca %struct.gs_index_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gs_program*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %15, align 8
  store %struct.gs_vertex_buffer* %16, %struct.gs_vertex_buffer** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %18, align 8
  store %struct.gs_index_buffer* %19, %struct.gs_index_buffer** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @convert_gs_topology(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = call i32* (...) @gs_get_effect()
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @can_render(%struct.TYPE_6__* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %137

28:                                               ; preds = %4
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @gs_effect_update_params(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = call %struct.gs_program* @get_shader_program(%struct.TYPE_6__* %35)
  store %struct.gs_program* %36, %struct.gs_program** %13, align 8
  %37 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %38 = icmp ne %struct.gs_program* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %137

40:                                               ; preds = %34
  %41 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %9, align 8
  %42 = icmp ne %struct.gs_vertex_buffer* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %45 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %9, align 8
  %46 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %10, align 8
  %47 = call i32 @load_vb_buffers(%struct.gs_program* %44, %struct.gs_vertex_buffer* %45, %struct.gs_index_buffer* %46)
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gl_bind_vertex_array(i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.gs_program*, %struct.gs_program** %56, align 8
  %58 = icmp ne %struct.gs_program* %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.gs_program*, %struct.gs_program** %61, align 8
  %63 = icmp ne %struct.gs_program* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = call i32 @glUseProgram(i32 0)
  %66 = call i32 @gl_success(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59, %53
  %68 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.gs_program*, %struct.gs_program** %70, align 8
  %72 = icmp ne %struct.gs_program* %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store %struct.gs_program* %74, %struct.gs_program** %76, align 8
  %77 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %78 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @glUseProgram(i32 %79)
  %81 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %137

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = call i32 @update_viewproj_matrix(%struct.TYPE_6__* %86)
  %88 = load %struct.gs_program*, %struct.gs_program** %13, align 8
  %89 = call i32 @program_update_params(%struct.gs_program* %88)
  %90 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %10, align 8
  %91 = icmp ne %struct.gs_index_buffer* %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %85
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %97, align 8
  %99 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %10, align 8
  %105 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %10, align 8
  %109 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul nsw i64 %107, %110
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @glDrawElements(i32 %102, i64 %103, i32 %106, i32* %112)
  %114 = call i32 @gl_success(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %101
  br label %137

117:                                              ; preds = %101
  br label %136

118:                                              ; preds = %85
  %119 = load i64, i64* %8, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %123, align 8
  %125 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %11, align 4
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @glDrawArrays(i32 %128, i64 %129, i64 %130)
  %132 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %137

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %117
  br label %140

137:                                              ; preds = %134, %116, %83, %39, %27
  %138 = load i32, i32* @LOG_ERROR, align 4
  %139 = call i32 @blog(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %136
  ret void
}

declare dso_local i32 @convert_gs_topology(i32) #1

declare dso_local i32* @gs_get_effect(...) #1

declare dso_local i32 @can_render(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @gs_effect_update_params(i32*) #1

declare dso_local %struct.gs_program* @get_shader_program(%struct.TYPE_6__*) #1

declare dso_local i32 @load_vb_buffers(%struct.gs_program*, %struct.gs_vertex_buffer*, %struct.gs_index_buffer*) #1

declare dso_local i32 @gl_bind_vertex_array(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @update_viewproj_matrix(%struct.TYPE_6__*) #1

declare dso_local i32 @program_update_params(%struct.gs_program*) #1

declare dso_local i32 @glDrawElements(i32, i64, i32, i32*) #1

declare dso_local i32 @glDrawArrays(i32, i64, i64) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
