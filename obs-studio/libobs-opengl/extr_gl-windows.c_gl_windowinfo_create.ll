; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_windowinfo_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_windowinfo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_windowinfo = type { i32 }
%struct.gs_init_data = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"gl_windowinfo_create failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gl_windowinfo* @gl_windowinfo_create(%struct.gs_init_data* %0) #0 {
  %2 = alloca %struct.gl_windowinfo*, align 8
  %3 = alloca %struct.gs_init_data*, align 8
  %4 = alloca %struct.gl_windowinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gs_init_data* %0, %struct.gs_init_data** %3, align 8
  %7 = load %struct.gs_init_data*, %struct.gs_init_data** %3, align 8
  %8 = call %struct.gl_windowinfo* @gl_windowinfo_bare(%struct.gs_init_data* %7)
  store %struct.gl_windowinfo* %8, %struct.gl_windowinfo** %4, align 8
  %9 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %10 = icmp ne %struct.gl_windowinfo* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.gl_windowinfo* null, %struct.gl_windowinfo** %2, align 8
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %14 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gs_init_data*, %struct.gs_init_data** %3, align 8
  %17 = call i32 @gl_getpixelformat(i32 %15, %struct.gs_init_data* %16, i32* %6, i32* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %22 = getelementptr inbounds %struct.gl_windowinfo, %struct.gl_windowinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @gl_setpixelformat(i32 %23, i32 %24, i32* %5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %30

28:                                               ; preds = %20
  %29 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  store %struct.gl_windowinfo* %29, %struct.gl_windowinfo** %2, align 8
  br label %35

30:                                               ; preds = %27, %19
  %31 = load i32, i32* @LOG_ERROR, align 4
  %32 = call i32 @blog(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %4, align 8
  %34 = call i32 @gl_windowinfo_destroy(%struct.gl_windowinfo* %33)
  store %struct.gl_windowinfo* null, %struct.gl_windowinfo** %2, align 8
  br label %35

35:                                               ; preds = %30, %28, %11
  %36 = load %struct.gl_windowinfo*, %struct.gl_windowinfo** %2, align 8
  ret %struct.gl_windowinfo* %36
}

declare dso_local %struct.gl_windowinfo* @gl_windowinfo_bare(%struct.gs_init_data*) #1

declare dso_local i32 @gl_getpixelformat(i32, %struct.gs_init_data*, i32*, i32*) #1

declare dso_local i32 @gl_setpixelformat(i32, i32, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gl_windowinfo_destroy(%struct.gl_windowinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
