; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@gl_capture.critical_failure = internal global i32 0, align 4
@functions_initialized = common dso_local global i64 0, align 8
@INIT_SHTEX_FAILED = common dso_local global i64 0, align 8
@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gl_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_capture(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @gl_capture.critical_failure, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %69

8:                                                ; preds = %1
  %9 = load i64, i64* @functions_initialized, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = call i64 (...) @init_gl_functions()
  store i64 %12, i64* @functions_initialized, align 8
  %13 = load i64, i64* @functions_initialized, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 1, i32* @gl_capture.critical_failure, align 4
  br label %69

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %8
  %18 = call i32 (...) @glGetError()
  %19 = call i64 (...) @capture_should_stop()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @gl_free()
  br label %23

23:                                               ; preds = %21, %17
  %24 = call i64 (...) @capture_should_init()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @gl_init(i64 %27)
  %29 = load i64, i64* @INIT_SHTEX_FAILED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 8
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @gl_init(i64 %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %23
  %36 = call i64 (...) @capture_ready()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1), align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @get_window_size(i64 %43, i64* %3, i64* %4)
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 2), align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48, %42
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (...) @gl_free()
  br label %60

60:                                               ; preds = %58, %55, %52
  br label %69

61:                                               ; preds = %48
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 4), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @gl_shtex_capture()
  br label %68

66:                                               ; preds = %61
  %67 = call i32 (...) @gl_shmem_capture()
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %7, %15, %60, %68, %38, %35
  ret void
}

declare dso_local i64 @init_gl_functions(...) #1

declare dso_local i32 @glGetError(...) #1

declare dso_local i64 @capture_should_stop(...) #1

declare dso_local i32 @gl_free(...) #1

declare dso_local i64 @capture_should_init(...) #1

declare dso_local i64 @gl_init(i64) #1

declare dso_local i64 @capture_ready(...) #1

declare dso_local i32 @get_window_size(i64, i64*, i64*) #1

declare dso_local i32 @gl_shtex_capture(...) #1

declare dso_local i32 @gl_shmem_capture(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
