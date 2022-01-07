; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.h_fbo_info_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.h_fbo_info_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbo_info = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"glDeleteFramebuffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fbo_info*)* @fbo_info_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbo_info_destroy(%struct.fbo_info* %0) #0 {
  %2 = alloca %struct.fbo_info*, align 8
  store %struct.fbo_info* %0, %struct.fbo_info** %2, align 8
  %3 = load %struct.fbo_info*, %struct.fbo_info** %2, align 8
  %4 = icmp ne %struct.fbo_info* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.fbo_info*, %struct.fbo_info** %2, align 8
  %7 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %6, i32 0, i32 0
  %8 = call i32 @glDeleteFramebuffers(i32 1, i32* %7)
  %9 = call i32 @gl_success(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.fbo_info*, %struct.fbo_info** %2, align 8
  %11 = call i32 @bfree(%struct.fbo_info* %10)
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @glDeleteFramebuffers(i32, i32*) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @bfree(%struct.fbo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
