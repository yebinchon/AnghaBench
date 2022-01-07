; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_egl_helpers.c_mpegl_load_functions.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_egl_helpers.c_mpegl_load_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GL = type { i64 }
%struct.mp_log = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@EGL_EXTENSIONS = common dso_local global i32 0, align 4
@mpegl_get_proc_address = common dso_local global i32 0, align 4
@swap_interval = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpegl_load_functions(%struct.GL* %0, %struct.mp_log* %1) #0 {
  %3 = alloca %struct.GL*, align 8
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.GL* %0, %struct.GL** %3, align 8
  store %struct.mp_log* %1, %struct.mp_log** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = call i64 (...) @eglGetCurrentDisplay()
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @EGL_EXTENSIONS, align 4
  %14 = call i8* @eglQueryString(i64 %12, i32 %13)
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.GL*, %struct.GL** %3, align 8
  %17 = load i32, i32* @mpegl_get_proc_address, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %20 = call i32 @mpgl_load_functions2(%struct.GL* %16, i32 %17, i32* null, i8* %18, %struct.mp_log* %19)
  %21 = load %struct.GL*, %struct.GL** %3, align 8
  %22 = getelementptr inbounds %struct.GL, %struct.GL* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i64, i64* @swap_interval, align 8
  %27 = load %struct.GL*, %struct.GL** %3, align 8
  %28 = getelementptr inbounds %struct.GL, %struct.GL* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %15
  ret void
}

declare dso_local i64 @eglGetCurrentDisplay(...) #1

declare dso_local i8* @eglQueryString(i64, i32) #1

declare dso_local i32 @mpgl_load_functions2(%struct.GL*, i32, i32*, i8*, %struct.mp_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
