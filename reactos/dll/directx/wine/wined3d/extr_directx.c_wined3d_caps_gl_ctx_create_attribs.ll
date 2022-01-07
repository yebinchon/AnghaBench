; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_caps_gl_ctx_create_attribs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_caps_gl_ctx_create_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_caps_gl_ctx = type { i32, i32 }
%struct.wined3d_gl_info = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"wglCreateContextAttribsARB\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to make new context current, last error %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to delete new context, last error %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to delete old context, last error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_caps_gl_ctx*, %struct.wined3d_gl_info*)* @wined3d_caps_gl_ctx_create_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_caps_gl_ctx_create_attribs(%struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  %7 = call i64 @wglGetProcAddress(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = icmp ne i32* %9, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %17 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @context_create_wgl_attribs(%struct.wined3d_gl_info* %16, i32 %19, i32* null)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %15
  %27 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @wglMakeCurrent(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @wglDeleteContext(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %44 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %26
  %47 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wglDeleteContext(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %42, %22, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @wglGetProcAddress(i8*) #1

declare dso_local i32 @context_create_wgl_attribs(%struct.wined3d_gl_info*, i32, i32*) #1

declare dso_local i32 @wglMakeCurrent(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wglDeleteContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
