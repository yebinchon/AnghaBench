; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_get_2d_texel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_texture.c_get_2d_texel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_texture_object = type { i32 }
%struct.gl_texture_image = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"Bad format in get_2d_texel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_texture_object*, %struct.gl_texture_image*, i64, i64, i32*, i32*, i32*, i32*)* @get_2d_texel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_2d_texel(%struct.gl_texture_object* %0, %struct.gl_texture_image* %1, i64 %2, i64 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.gl_texture_object*, align 8
  %10 = alloca %struct.gl_texture_image*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.gl_texture_object* %0, %struct.gl_texture_object** %9, align 8
  store %struct.gl_texture_image* %1, %struct.gl_texture_image** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %21 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %17, align 8
  %23 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %24 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %137 [
    i32 133, label %26
    i32 134, label %44
    i32 131, label %56
    i32 132, label %56
    i32 130, label %68
    i32 129, label %87
    i32 128, label %110
  ]

26:                                               ; preds = %8
  %27 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %28 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* %12, align 8
  %32 = mul nsw i64 %30, %31
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %32, %33
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load %struct.gl_texture_object*, %struct.gl_texture_object** %9, align 8
  %38 = load i32, i32* %19, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @palette_sample(%struct.gl_texture_object* %37, i32 %38, i32* %39, i32* %40, i32* %41, i32* %42)
  br label %139

44:                                               ; preds = %8
  %45 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %46 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %12, align 8
  %50 = mul nsw i64 %48, %49
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %50, %51
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %16, align 8
  store i32 %54, i32* %55, align 4
  br label %139

56:                                               ; preds = %8, %8
  %57 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %58 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %12, align 8
  %62 = mul nsw i64 %60, %61
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %62, %63
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %139

68:                                               ; preds = %8
  %69 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %70 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %12, align 8
  %74 = mul nsw i64 %72, %73
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %74, %75
  %77 = mul nsw i64 %76, 2
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  store i32* %78, i32** %18, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %18, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %16, align 8
  store i32 %85, i32* %86, align 4
  br label %139

87:                                               ; preds = %8
  %88 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %89 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %12, align 8
  %93 = mul nsw i64 %91, %92
  %94 = load i64, i64* %11, align 8
  %95 = add nsw i64 %93, %94
  %96 = mul nsw i64 %95, 3
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  store i32* %97, i32** %18, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %13, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %18, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %14, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %15, align 8
  store i32 %108, i32* %109, align 4
  br label %139

110:                                              ; preds = %8
  %111 = load %struct.gl_texture_image*, %struct.gl_texture_image** %10, align 8
  %112 = getelementptr inbounds %struct.gl_texture_image, %struct.gl_texture_image* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %12, align 8
  %116 = mul nsw i64 %114, %115
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %116, %117
  %119 = mul nsw i64 %118, 4
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  store i32* %120, i32** %18, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %14, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %18, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %15, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %18, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %16, align 8
  store i32 %135, i32* %136, align 4
  br label %139

137:                                              ; preds = %8
  %138 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %26, %44, %56, %68, %87, %110, %137
  ret void
}

declare dso_local i32 @palette_sample(%struct.gl_texture_object*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gl_problem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
