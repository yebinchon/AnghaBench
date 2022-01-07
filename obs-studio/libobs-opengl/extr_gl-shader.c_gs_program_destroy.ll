; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_program_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_program_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__**, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__** }
%struct.TYPE_4__ = type { %struct.gs_program* }

@.str = private unnamed_addr constant [20 x i8] c"glUseProgram (zero)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"glDeleteProgram\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_program_destroy(%struct.gs_program* %0) #0 {
  %2 = alloca %struct.gs_program*, align 8
  store %struct.gs_program* %0, %struct.gs_program** %2, align 8
  %3 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %4 = icmp ne %struct.gs_program* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %62

6:                                                ; preds = %1
  %7 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %8 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.gs_program*, %struct.gs_program** %10, align 8
  %12 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %13 = icmp eq %struct.gs_program* %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %16 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.gs_program* null, %struct.gs_program** %18, align 8
  %19 = call i32 @glUseProgram(i32 0)
  %20 = call i32 @gl_success(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %14, %6
  %22 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %23 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @da_free(i32 %24)
  %26 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %27 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @da_free(i32 %28)
  %30 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %31 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %36 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %39 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.TYPE_3__** %37, %struct.TYPE_3__*** %41, align 8
  br label %42

42:                                               ; preds = %34, %21
  %43 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %44 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = icmp ne %struct.TYPE_3__** %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %49 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %52 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %52, align 8
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %56 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @glDeleteProgram(i32 %57)
  %59 = call i32 @gl_success(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  %61 = call i32 @bfree(%struct.gs_program* %60)
  br label %62

62:                                               ; preds = %54, %5
  ret void
}

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @glDeleteProgram(i32) #1

declare dso_local i32 @bfree(%struct.gs_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
