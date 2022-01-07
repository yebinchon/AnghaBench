; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_update_viewproj_matrix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_update_viewproj_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_device = type { i32, i32, i64, i32, %struct.gs_shader* }
%struct.gs_shader = type { i64 }
%struct.matrix4 = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GL_CW = common dso_local global i32 0, align 4
@GL_CCW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"glFrontFace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_device*)* @update_viewproj_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_viewproj_matrix(%struct.gs_device* %0) #0 {
  %2 = alloca %struct.gs_device*, align 8
  %3 = alloca %struct.gs_shader*, align 8
  %4 = alloca %struct.matrix4, align 4
  store %struct.gs_device* %0, %struct.gs_device** %2, align 8
  %5 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %6 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %5, i32 0, i32 4
  %7 = load %struct.gs_shader*, %struct.gs_shader** %6, align 8
  store %struct.gs_shader* %7, %struct.gs_shader** %3, align 8
  %8 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %9 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %8, i32 0, i32 1
  %10 = call i32 @gs_matrix_get(i32* %9)
  %11 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %12 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %11, i32 0, i32 3
  %13 = call i32 @matrix4_copy(%struct.matrix4* %4, i32* %12)
  %14 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %15 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 0, %21
  %23 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  %29 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  %41 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %4, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @GL_CW, align 4
  %44 = call i32 @glFrontFace(i32 %43)
  br label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @GL_CCW, align 4
  %47 = call i32 @glFrontFace(i32 %46)
  br label %48

48:                                               ; preds = %45, %18
  %49 = call i32 @gl_success(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %51 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %50, i32 0, i32 0
  %52 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %53 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %52, i32 0, i32 1
  %54 = call i32 @matrix4_mul(i32* %51, i32* %53, %struct.matrix4* %4)
  %55 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %56 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %55, i32 0, i32 0
  %57 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %58 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %57, i32 0, i32 0
  %59 = call i32 @matrix4_transpose(i32* %56, i32* %58)
  %60 = load %struct.gs_shader*, %struct.gs_shader** %3, align 8
  %61 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %48
  %65 = load %struct.gs_shader*, %struct.gs_shader** %3, align 8
  %66 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.gs_device*, %struct.gs_device** %2, align 8
  %69 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %68, i32 0, i32 0
  %70 = call i32 @gs_shader_set_matrix4(i64 %67, i32* %69)
  br label %71

71:                                               ; preds = %64, %48
  ret void
}

declare dso_local i32 @gs_matrix_get(i32*) #1

declare dso_local i32 @matrix4_copy(%struct.matrix4*, i32*) #1

declare dso_local i32 @glFrontFace(i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @matrix4_mul(i32*, i32*, %struct.matrix4*) #1

declare dso_local i32 @matrix4_transpose(i32*, i32*) #1

declare dso_local i32 @gs_shader_set_matrix4(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
