; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_get_fbo.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_get_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbo_info = type { i64, i64, i64, i32*, i64, i32*, i32 }
%struct.TYPE_3__ = type { i64, %struct.fbo_info* }

@.str = private unnamed_addr constant [18 x i8] c"glGenFramebuffers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fbo_info* @get_fbo(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fbo_info*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.fbo_info*, %struct.fbo_info** %10, align 8
  %12 = icmp ne %struct.fbo_info* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.fbo_info*, %struct.fbo_info** %15, align 8
  %17 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.fbo_info*, %struct.fbo_info** %23, align 8
  %25 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.fbo_info*, %struct.fbo_info** %31, align 8
  %33 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.fbo_info*, %struct.fbo_info** %41, align 8
  store %struct.fbo_info* %42, %struct.fbo_info** %4, align 8
  br label %89

43:                                               ; preds = %29, %21, %13, %3
  %44 = call i32 @glGenFramebuffers(i32 1, i32* %8)
  %45 = call i32 @gl_success(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store %struct.fbo_info* null, %struct.fbo_info** %4, align 8
  br label %89

48:                                               ; preds = %43
  %49 = call %struct.fbo_info* @bmalloc(i32 56)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store %struct.fbo_info* %49, %struct.fbo_info** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.fbo_info*, %struct.fbo_info** %54, align 8
  %56 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %55, i32 0, i32 6
  store i32 %52, i32* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.fbo_info*, %struct.fbo_info** %59, align 8
  %61 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %struct.fbo_info*, %struct.fbo_info** %64, align 8
  %66 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %65, i32 0, i32 1
  store i64 %62, i64* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load %struct.fbo_info*, %struct.fbo_info** %71, align 8
  %73 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %72, i32 0, i32 2
  store i64 %69, i64* %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load %struct.fbo_info*, %struct.fbo_info** %75, align 8
  %77 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.fbo_info*, %struct.fbo_info** %79, align 8
  %81 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load %struct.fbo_info*, %struct.fbo_info** %83, align 8
  %85 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.fbo_info*, %struct.fbo_info** %87, align 8
  store %struct.fbo_info* %88, %struct.fbo_info** %4, align 8
  br label %89

89:                                               ; preds = %48, %47, %39
  %90 = load %struct.fbo_info*, %struct.fbo_info** %4, align 8
  ret %struct.fbo_info* %90
}

declare dso_local i32 @glGenFramebuffers(i32, i32*) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local %struct.fbo_info* @bmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
