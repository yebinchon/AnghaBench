; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_windowinfo_bare.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_windowinfo_bare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_windowinfo = type { i32, i32 }
%struct.gs_init_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to get device context from window\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gl_windowinfo* (%struct.gs_init_data*)* @gl_windowinfo_bare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gl_windowinfo* @gl_windowinfo_bare(%struct.gs_init_data* %0) #0 {
  %2 = alloca %struct.gl_windowinfo*, align 8
  %3 = alloca %struct.gs_init_data*, align 8
  %4 = alloca %struct.gl_windowinfo*, align 8
  store %struct.gs_init_data* %0, %struct.gs_init_data** %3, align 8
  %5 = call %struct.gl_windowinfo* @bzalloc(i32 8)
  store %struct.gl_windowinfo* %5, %struct.gl_windowinfo** %4, align 8
  %6 = load %struct.gs_init_data*, %struct.gs_init_data** %3, align 8
  %7 = getelementptr inbounds %struct.gs_init_data, %struct.gs_init_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %11 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %13 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GetDC(i32 %14)
  %16 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %17 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %19 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @LOG_ERROR, align 4
  %24 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %26 = call i32 @bfree(%struct.gl_windowinfo* %25)
  store %struct.gl_windowinfo* null, %struct.gl_windowinfo** %2, align 8
  br label %29

27:                                               ; preds = %1
  %28 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  store %struct.gl_windowinfo* %28, %struct.gl_windowinfo** %2, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  ret %struct.gl_windowinfo* %30
}

declare dso_local %struct.gl_windowinfo* @bzalloc(i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @bfree(%struct.gl_windowinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
