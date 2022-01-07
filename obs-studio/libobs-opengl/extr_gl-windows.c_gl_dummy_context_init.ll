; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_dummy_context_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_dummy_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_context = type { i32, i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Dummy ChoosePixelFormat failed, %lu\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Dummy SetPixelFormat failed, %lu\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to initialize dummy context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_context*)* @gl_dummy_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_dummy_context_init(%struct.dummy_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dummy_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dummy_context* %0, %struct.dummy_context** %3, align 8
  %6 = call i32 (...) @gl_register_dummy_window_class()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

9:                                                ; preds = %1
  %10 = call i32 (...) @gl_create_dummy_window()
  %11 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %12 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %14 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %62

18:                                               ; preds = %9
  %19 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %20 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GetDC(i32 %21)
  %23 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %24 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = call i32 @init_dummy_pixel_format(i32* %4)
  %26 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %27 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ChoosePixelFormat(i32 %28, i32* %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @LOG_ERROR, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @blog(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %62

36:                                               ; preds = %18
  %37 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %38 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @SetPixelFormat(i32 %39, i32 %40, i32* %4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @LOG_ERROR, align 4
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @blog(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %2, align 4
  br label %62

47:                                               ; preds = %36
  %48 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %49 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gl_init_basic_context(i32 %50)
  %52 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %53 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dummy_context*, %struct.dummy_context** %3, align 8
  %55 = getelementptr inbounds %struct.dummy_context, %struct.dummy_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @LOG_ERROR, align 4
  %60 = call i32 (i32, i8*, ...) @blog(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %43, %32, %17, %8
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @gl_register_dummy_window_class(...) #1

declare dso_local i32 @gl_create_dummy_window(...) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @init_dummy_pixel_format(i32*) #1

declare dso_local i32 @ChoosePixelFormat(i32, i32*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetPixelFormat(i32, i32, i32*) #1

declare dso_local i32 @gl_init_basic_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
