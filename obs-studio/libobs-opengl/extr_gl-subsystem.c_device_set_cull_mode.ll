; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_set_cull_mode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_set_cull_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GS_NEITHER = common dso_local global i64 0, align 8
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GS_BACK = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GS_FRONT = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_set_cull_mode(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @GS_NEITHER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @GL_CULL_FACE, align 4
  %20 = call i32 @gl_enable(i32 %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GS_BACK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @GL_BACK, align 4
  %30 = call i32 @gl_cull_face(i32 %29)
  br label %42

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GS_FRONT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @GL_FRONT, align 4
  %37 = call i32 @gl_cull_face(i32 %36)
  br label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @GL_CULL_FACE, align 4
  %40 = call i32 @gl_disable(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %10, %41, %28
  ret void
}

declare dso_local i32 @gl_enable(i32) #1

declare dso_local i32 @gl_cull_face(i32) #1

declare dso_local i32 @gl_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
