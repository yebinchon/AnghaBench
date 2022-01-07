; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_opt_sample_rgb_2d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_opt_sample_rgb_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i64, i64, %struct.gl_texture_image** }
%struct.gl_texture_image = type { i32, i32, i32, i64, i64, i32* }

@GL_REPEAT = common dso_local global i64 0, align 8
@GL_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @opt_sample_rgb_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_sample_rgb_2d(%struct.gl_texture_object* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.gl_texture_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.gl_texture_image*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %32 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %33 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %32, i32 0, i32 2
  %34 = load %struct.gl_texture_image**, %struct.gl_texture_image*** %33, align 8
  %35 = getelementptr inbounds %struct.gl_texture_image*, %struct.gl_texture_image** %34, i64 0
  %36 = load %struct.gl_texture_image*, %struct.gl_texture_image** %35, align 8
  store %struct.gl_texture_image* %36, %struct.gl_texture_image** %21, align 8
  %37 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %38 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %22, align 4
  %40 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %41 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %23, align 4
  %43 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %44 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %24, align 4
  %47 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %48 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %25, align 4
  %51 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %52 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %26, align 4
  %54 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %55 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GL_REPEAT, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.gl_texture_object*, %struct.gl_texture_object** %11, align 8
  %62 = getelementptr inbounds %struct.gl_texture_object, %struct.gl_texture_object* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @GL_REPEAT, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %69 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %75 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GL_RGB, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  store i64 0, i64* %27, align 8
  br label %81

81:                                               ; preds = %137, %10
  %82 = load i64, i64* %27, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %140

85:                                               ; preds = %81
  %86 = load i32*, i32** %13, align 8
  %87 = load i64, i64* %27, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %22, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %24, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %28, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %27, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %23, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %25, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %29, align 4
  %102 = load i32, i32* %29, align 4
  %103 = load i32, i32* %26, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %28, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %30, align 4
  %107 = load %struct.gl_texture_image*, %struct.gl_texture_image** %21, align 8
  %108 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %30, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %30, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %30, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32* %118, i32** %31, align 8
  %119 = load i32*, i32** %31, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %17, align 8
  %123 = load i64, i64* %27, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32*, i32** %31, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = load i64, i64* %27, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %130, align 4
  %131 = load i32*, i32** %31, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %19, align 8
  %135 = load i64, i64* %27, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %133, i32* %136, align 4
  br label %137

137:                                              ; preds = %85
  %138 = load i64, i64* %27, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %27, align 8
  br label %81

140:                                              ; preds = %81
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
