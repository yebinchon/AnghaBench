; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_probe_real_size.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_probe_real_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32*)*, i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i32, i32, i32, i64, i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32*)*, i64 }
%struct.ra_format = type { i32, i64*, %struct.gl_format* }
%struct.gl_format = type { i64, i32, i32 }

@GL_LUMINANCE = common dso_local global i64 0, align 8
@GL_LUMINANCE_ALPHA = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_RED_SIZE = common dso_local global i32 0, align 4
@GL_TEXTURE_GREEN_SIZE = common dso_local global i32 0, align 4
@GL_TEXTURE_BLUE_SIZE = common dso_local global i32 0, align 4
@GL_TEXTURE_ALPHA_SIZE = common dso_local global i32 0, align 4
@GL_TEXTURE_LUMINANCE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.ra_format*)* @probe_real_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_real_size(%struct.TYPE_3__* %0, %struct.ra_format* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ra_format*, align 8
  %5 = alloca %struct.gl_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.ra_format* %1, %struct.ra_format** %4, align 8
  %12 = load %struct.ra_format*, %struct.ra_format** %4, align 8
  %13 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %12, i32 0, i32 2
  %14 = load %struct.gl_format*, %struct.gl_format** %13, align 8
  store %struct.gl_format* %14, %struct.gl_format** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %16, align 8
  %18 = icmp ne i32 (i32, i32, i32, i64*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %132

20:                                               ; preds = %2
  %21 = load %struct.gl_format*, %struct.gl_format** %5, align 8
  %22 = getelementptr inbounds %struct.gl_format, %struct.gl_format* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GL_LUMINANCE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.gl_format*, %struct.gl_format** %5, align 8
  %28 = getelementptr inbounds %struct.gl_format, %struct.gl_format* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GL_LUMINANCE_ALPHA, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ true, %20 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %132

43:                                               ; preds = %37, %32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32 (i32, i32*)*, i32 (i32, i32*)** %45, align 8
  %47 = call i32 %46(i32 1, i32* %7)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load i32, i32* @GL_TEXTURE_2D, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 %50(i32 %51, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32 (i32, i32, i32, i32, i32, i32, i64, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i64, i32, i32*)** %55, align 8
  %57 = load i32, i32* @GL_TEXTURE_2D, align 4
  %58 = load %struct.gl_format*, %struct.gl_format** %5, align 8
  %59 = getelementptr inbounds %struct.gl_format, %struct.gl_format* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gl_format*, %struct.gl_format** %5, align 8
  %62 = getelementptr inbounds %struct.gl_format, %struct.gl_format* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.gl_format*, %struct.gl_format** %5, align 8
  %65 = getelementptr inbounds %struct.gl_format, %struct.gl_format* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %56(i32 %57, i32 0, i32 %60, i32 64, i32 64, i32 0, i64 %63, i32 %66, i32* null)
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %124, %43
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ra_format*, %struct.ra_format** %4, align 8
  %71 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %127

74:                                               ; preds = %68
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %76 = load i32, i32* @GL_TEXTURE_RED_SIZE, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %75, i64 1
  %78 = load i32, i32* @GL_TEXTURE_GREEN_SIZE, align 4
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds i32, i32* %77, i64 1
  %80 = load i32, i32* @GL_TEXTURE_BLUE_SIZE, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds i32, i32* %79, i64 1
  %82 = load i32, i32* @GL_TEXTURE_ALPHA_SIZE, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds i32, i32* %81, i64 1
  %84 = load i32, i32* @GL_TEXTURE_LUMINANCE_SIZE, align 4
  store i32 %84, i32* %83, align 4
  %85 = getelementptr inbounds i32, i32* %83, i64 1
  %86 = load i32, i32* @GL_TEXTURE_ALPHA_SIZE, align 4
  store i32 %86, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 4
  br label %94

92:                                               ; preds = %74
  %93 = load i32, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %98 = call i32 @MP_ARRAY_SIZE(i32* %97)
  %99 = icmp slt i32 %96, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  store i64 -1, i64* %11, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %103, align 8
  %105 = load i32, i32* @GL_TEXTURE_2D, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 %104(i32 %105, i32 0, i32 %109, i64* %11)
  %111 = load i64, i64* %11, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %94
  %114 = load i64, i64* %11, align 8
  br label %116

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i64 [ %114, %113 ], [ 0, %115 ]
  %118 = load %struct.ra_format*, %struct.ra_format** %4, align 8
  %119 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %68

127:                                              ; preds = %68
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32 (i32, i32*)*, i32 (i32, i32*)** %129, align 8
  %131 = call i32 %130(i32 1, i32* %7)
  br label %132

132:                                              ; preds = %127, %42, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
