; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_pixel_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, i64, i32*, i32*, i32, i64, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Failed to set pixel format %d on device context %p, last error %#x.\0A\00", align 1
@WGL_WINE_PIXEL_FORMAT_PASSTHROUGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"wglSetPixelFormatWINE failed to set pixel format %d on device context %p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"Unable to set pixel format %d on device context %p. Already using format %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wined3d_context*)* @context_set_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @context_set_pixel_format(%struct.wined3d_context* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 7
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %4, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %2, align 8
  br label %146

31:                                               ; preds = %24, %1
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @WindowFromDC(i32 %35)
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %38 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %2, align 8
  br label %146

43:                                               ; preds = %34, %31
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %48(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %137

55:                                               ; preds = %43
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @SetPixelFormat(i32 %59, i32 %60, i32* null)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 @WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %2, align 8
  br label %146

69:                                               ; preds = %58
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %71 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = call i32* @WindowFromDC(i32 %76)
  br label %78

78:                                               ; preds = %75, %74
  %79 = phi i32* [ null, %74 ], [ %77, %75 ]
  %80 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %81 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  br label %137

82:                                               ; preds = %55
  %83 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %84 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @WGL_WINE_PIXEL_FORMAT_PASSTHROUGH, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @wglSetPixelFormatWINE(i32 %91, i32 %92)
  %94 = call i32 @GL_EXTCALL(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i8*, i32, i32, ...) @ERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %2, align 8
  br label %146

101:                                              ; preds = %90
  %102 = load i64, i64* %5, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = call i32* @WindowFromDC(i32 %106)
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i32* [ null, %104 ], [ %107, %105 ]
  store i32* %109, i32** %9, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %112 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %110, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %108
  %116 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %117 = call i32 @context_restore_pixel_format(%struct.wined3d_context* %116)
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i32 [ 0, %120 ], [ %122, %121 ]
  %125 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %126 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %129 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %128, i32 0, i32 3
  store i32* %127, i32** %129, align 8
  br label %130

130:                                              ; preds = %123, %108
  br label %137

131:                                              ; preds = %82
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i8*, i32, i32, ...) @ERR(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  %136 = load i64, i64* @TRUE, align 8
  store i64 %136, i64* %2, align 8
  br label %146

137:                                              ; preds = %130, %78, %54
  %138 = load i64, i64* %5, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i64, i64* @TRUE, align 8
  %142 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %143 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %2, align 8
  br label %146

146:                                              ; preds = %144, %131, %96, %63, %41, %29
  %147 = load i64, i64* %2, align 8
  ret i64 %147
}

declare dso_local i32* @WindowFromDC(i32) #1

declare dso_local i32 @SetPixelFormat(i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @wglSetPixelFormatWINE(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, ...) #1

declare dso_local i32 @context_restore_pixel_format(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
