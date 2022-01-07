; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_caps_gl_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_caps_gl_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_caps_gl_ctx = type { i32*, i32*, i32, i32, i32, i64, i64, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Destroying caps GL context.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to disable caps GL context.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"wglDeleteContext(%p) failed, last error %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to restore previous GL context.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_caps_gl_ctx*)* @wined3d_caps_gl_ctx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_caps_gl_ctx_destroy(%struct.wined3d_caps_gl_ctx* %0) #0 {
  %2 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %2, align 8
  %5 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %5, i32 0, i32 7
  %7 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  store %struct.wined3d_gl_info* %7, %struct.wined3d_gl_info** %3, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13, %1
  %19 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @glDeleteProgram(i64 %21)
  %23 = call i32 @GL_EXTCALL(i32 %22)
  %24 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %24, i32 0, i32 5
  %26 = call i32 @glDeleteBuffers(i32 1, i64* %25)
  %27 = call i32 @GL_EXTCALL(i32 %26)
  br label %28

28:                                               ; preds = %18, %13
  %29 = call i32 @wglMakeCurrent(i32* null, i32* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wglDeleteContext(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = call i32 (...) @GetLastError()
  store i32 %40, i32* %4, align 4
  %41 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wined3d_release_dc(i32 %49, i32 %52)
  %54 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DestroyWindow(i32 %56)
  %58 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %46
  %63 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @wglMakeCurrent(i32* %65, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %62, %46
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glDeleteProgram(i64) #1

declare dso_local i32 @glDeleteBuffers(i32, i64*) #1

declare dso_local i32 @wglMakeCurrent(i32*, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @wglDeleteContext(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wined3d_release_dc(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
