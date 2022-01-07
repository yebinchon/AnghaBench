; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_remove_program_references.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_remove_program_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_shader = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gs_program* }
%struct.gs_program = type { %struct.gs_shader*, %struct.gs_shader*, %struct.gs_program* }

@GS_SHADER_VERTEX = common dso_local global i64 0, align 8
@GS_SHADER_PIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_shader*)* @remove_program_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_program_references(%struct.gs_shader* %0) #0 {
  %2 = alloca %struct.gs_shader*, align 8
  %3 = alloca %struct.gs_program*, align 8
  %4 = alloca %struct.gs_program*, align 8
  %5 = alloca i32, align 4
  store %struct.gs_shader* %0, %struct.gs_shader** %2, align 8
  %6 = load %struct.gs_shader*, %struct.gs_shader** %2, align 8
  %7 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.gs_program*, %struct.gs_program** %9, align 8
  store %struct.gs_program* %10, %struct.gs_program** %3, align 8
  br label %11

11:                                               ; preds = %50, %1
  %12 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %13 = icmp ne %struct.gs_program* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %16 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %15, i32 0, i32 2
  %17 = load %struct.gs_program*, %struct.gs_program** %16, align 8
  store %struct.gs_program* %17, %struct.gs_program** %4, align 8
  store i32 0, i32* %5, align 4
  %18 = load %struct.gs_shader*, %struct.gs_shader** %2, align 8
  %19 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GS_SHADER_VERTEX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %25 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %24, i32 0, i32 1
  %26 = load %struct.gs_shader*, %struct.gs_shader** %25, align 8
  %27 = load %struct.gs_shader*, %struct.gs_shader** %2, align 8
  %28 = icmp eq %struct.gs_shader* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %44

30:                                               ; preds = %23, %14
  %31 = load %struct.gs_shader*, %struct.gs_shader** %2, align 8
  %32 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GS_SHADER_PIXEL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %38 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %37, i32 0, i32 0
  %39 = load %struct.gs_shader*, %struct.gs_shader** %38, align 8
  %40 = load %struct.gs_shader*, %struct.gs_shader** %2, align 8
  %41 = icmp eq %struct.gs_shader* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %36, %30
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %49 = call i32 @gs_program_destroy(%struct.gs_program* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  store %struct.gs_program* %51, %struct.gs_program** %3, align 8
  br label %11

52:                                               ; preds = %11
  ret void
}

declare dso_local i32 @gs_program_destroy(%struct.gs_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
