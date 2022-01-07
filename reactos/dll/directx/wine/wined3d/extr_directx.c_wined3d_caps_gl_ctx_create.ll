; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_caps_gl_ctx_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_caps_gl_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_adapter = type { i32 }
%struct.wined3d_caps_gl_ctx = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"getting context...\0A\00", align 1
@WINED3D_OPENGL_WINDOW_CLASS_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"WineD3D fake window\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to create a window.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to get a DC.\0A\00", align 1
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to find a suitable pixel format.\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Failed to create default context for capabilities initialization.\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to make caps GL context current.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to restore previous GL context.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_adapter*, %struct.wined3d_caps_gl_ctx*)* @wined3d_caps_gl_ctx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_caps_gl_ctx_create(%struct.wined3d_adapter* %0, %struct.wined3d_caps_gl_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_adapter*, align 8
  %5 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_adapter* %0, %struct.wined3d_adapter** %4, align 8
  store %struct.wined3d_caps_gl_ctx* %1, %struct.wined3d_caps_gl_ctx** %5, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = call i32* (...) @wglGetCurrentDC()
  %10 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = call i32* (...) @wglGetCurrentContext()
  %13 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* @WINED3D_OPENGL_WINDOW_CLASS_NAME, align 4
  %16 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %17 = call i32* @CreateWindowA(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 10, i32 10, i32 10, i32 10, i32* null, i32* null, i32* null, i32* null)
  %18 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %98

26:                                               ; preds = %2
  %27 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @GetDC(i32* %29)
  %31 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %98

39:                                               ; preds = %26
  %40 = call i32 @ZeroMemory(%struct.TYPE_6__* %6, i32 24)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 24, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %44 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 32, i32* %51, align 4
  %52 = load i32, i32* @PFD_MAIN_PLANE, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ChoosePixelFormat(i32* %56, %struct.TYPE_6__* %6)
  store i32 %57, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %39
  %60 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %98

61:                                               ; preds = %39
  %62 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @DescribePixelFormat(i32* %64, i32 %65, i32 24, %struct.TYPE_6__* %6)
  %67 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @SetPixelFormat(i32* %69, i32 %70, %struct.TYPE_6__* %6)
  %72 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32* @wglCreateContext(i32* %74)
  %76 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = icmp ne i32* %75, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %61
  %80 = call i32 @WARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  br label %98

81:                                               ; preds = %61
  %82 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @wglMakeCurrent(i32* %84, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %98

92:                                               ; preds = %81
  %93 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %93, i32 0, i32 0
  %95 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %95, i32 0, i32 5
  store i32* %94, i32** %96, align 8
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %155

98:                                               ; preds = %90, %79, %59, %37, %24
  %99 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %105 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @wglDeleteContext(i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  %111 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @ReleaseDC(i32* %118, i32* %121)
  br label %123

123:                                              ; preds = %115, %108
  %124 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %125 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %124, i32 0, i32 3
  store i32* null, i32** %125, align 8
  %126 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %127 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %132 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @DestroyWindow(i32* %133)
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %137 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %136, i32 0, i32 2
  store i32* null, i32** %137, align 8
  %138 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @wglMakeCurrent(i32* %145, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %142
  %152 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %142, %135
  %154 = load i32, i32* @FALSE, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %92
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @wglGetCurrentDC(...) #1

declare dso_local i32* @wglGetCurrentContext(...) #1

declare dso_local i32* @CreateWindowA(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ChoosePixelFormat(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @DescribePixelFormat(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @SetPixelFormat(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32* @wglCreateContext(i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @wglMakeCurrent(i32*, i32*) #1

declare dso_local i32 @wglDeleteContext(i32*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
