; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_context_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_platform = type { i32, i32* }

@None = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_platform*)* @gl_context_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_context_destroy(%struct.gl_platform* %0) #0 {
  %2 = alloca %struct.gl_platform*, align 8
  %3 = alloca i32*, align 8
  store %struct.gl_platform* %0, %struct.gl_platform** %2, align 8
  %4 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %5 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @None, align 4
  %9 = load i32, i32* @None, align 4
  %10 = call i32 @glXMakeContextCurrent(i32* %7, i32 %8, i32 %9, i32* null)
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %13 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @glXDestroyContext(i32* %11, i32 %14)
  %16 = load %struct.gl_platform*, %struct.gl_platform** %2, align 8
  %17 = call i32 @bfree(%struct.gl_platform* %16)
  ret void
}

declare dso_local i32 @glXMakeContextCurrent(i32*, i32, i32, i32*) #1

declare dso_local i32 @glXDestroyContext(i32*, i32) #1

declare dso_local i32 @bfree(%struct.gl_platform*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
