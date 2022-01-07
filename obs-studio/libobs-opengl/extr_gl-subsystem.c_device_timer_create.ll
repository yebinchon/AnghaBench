; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_timer_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_timer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_timer = type { i8** }

@.str = private unnamed_addr constant [13 x i8] c"glGenQueries\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_timer* @device_timer_create(i32* %0) #0 {
  %2 = alloca %struct.gs_timer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gs_timer*, align 8
  %5 = alloca [2 x i8*], align 16
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @UNUSED_PARAMETER(i32* %6)
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %9 = call i32 @glGenQueries(i32 2, i8** %8)
  %10 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.gs_timer* null, %struct.gs_timer** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = call %struct.gs_timer* @bzalloc(i32 8)
  store %struct.gs_timer* %14, %struct.gs_timer** %4, align 8
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %16 = load i8*, i8** %15, align 16
  %17 = load %struct.gs_timer*, %struct.gs_timer** %4, align 8
  %18 = getelementptr inbounds %struct.gs_timer, %struct.gs_timer* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %16, i8** %20, align 8
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.gs_timer*, %struct.gs_timer** %4, align 8
  %24 = getelementptr inbounds %struct.gs_timer, %struct.gs_timer* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %22, i8** %26, align 8
  %27 = load %struct.gs_timer*, %struct.gs_timer** %4, align 8
  store %struct.gs_timer* %27, %struct.gs_timer** %2, align 8
  br label %28

28:                                               ; preds = %13, %12
  %29 = load %struct.gs_timer*, %struct.gs_timer** %2, align 8
  ret %struct.gs_timer* %29
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @glGenQueries(i32, i8**) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local %struct.gs_timer* @bzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
