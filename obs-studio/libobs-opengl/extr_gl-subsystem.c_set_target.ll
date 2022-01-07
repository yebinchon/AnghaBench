; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_set_target.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.fbo_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32*)* @set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fbo_info*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %67

29:                                               ; preds = %22, %16, %4
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = call i32 @set_current_fbo(%struct.TYPE_4__* %42, %struct.fbo_info* null)
  store i32 %43, i32* %5, align 4
  br label %67

44:                                               ; preds = %29
  %45 = load i32*, i32** %7, align 8
  %46 = call %struct.fbo_info* @get_fbo_by_tex(i32* %45)
  store %struct.fbo_info* %46, %struct.fbo_info** %10, align 8
  %47 = load %struct.fbo_info*, %struct.fbo_info** %10, align 8
  %48 = icmp ne %struct.fbo_info* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %67

50:                                               ; preds = %44
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = load %struct.fbo_info*, %struct.fbo_info** %10, align 8
  %53 = call i32 @set_current_fbo(%struct.TYPE_4__* %51, %struct.fbo_info* %52)
  %54 = load %struct.fbo_info*, %struct.fbo_info** %10, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @attach_rendertarget(%struct.fbo_info* %54, i32* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.fbo_info*, %struct.fbo_info** %10, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @attach_zstencil(%struct.fbo_info* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %67

66:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65, %59, %49, %41, %28
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @set_current_fbo(%struct.TYPE_4__*, %struct.fbo_info*) #1

declare dso_local %struct.fbo_info* @get_fbo_by_tex(i32*) #1

declare dso_local i32 @attach_rendertarget(%struct.fbo_info*, i32*, i32) #1

declare dso_local i32 @attach_zstencil(%struct.fbo_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
