; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_windowinfo_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_windowinfo_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_windowinfo = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_windowinfo_destroy(%struct.gl_windowinfo* %0) #0 {
  %2 = alloca %struct.gl_windowinfo*, align 8
  store %struct.gl_windowinfo* %0, %struct.gl_windowinfo** %2, align 8
  %3 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  %4 = icmp ne %struct.gl_windowinfo* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  %7 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  %12 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  %15 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ReleaseDC(i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %10, %5
  %19 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  %20 = call i32 @bfree(%struct.gl_windowinfo* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @ReleaseDC(i32, i64) #1

declare dso_local i32 @bfree(%struct.gl_windowinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
