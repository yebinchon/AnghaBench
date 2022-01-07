; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_gl_transform_trans.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_gl_transform_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_transform = type { i32**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_transform_trans(i32** %0, i32* %1, %struct.gl_transform* %2) #0 {
  %4 = alloca %struct.gl_transform, align 8
  %5 = alloca %struct.gl_transform*, align 8
  %6 = alloca %struct.gl_transform, align 8
  %7 = bitcast %struct.gl_transform* %4 to { i32**, i32* }*
  %8 = getelementptr inbounds { i32**, i32* }, { i32**, i32* }* %7, i32 0, i32 0
  store i32** %0, i32*** %8, align 8
  %9 = getelementptr inbounds { i32**, i32* }, { i32**, i32* }* %7, i32 0, i32 1
  store i32* %1, i32** %9, align 8
  store %struct.gl_transform* %2, %struct.gl_transform** %5, align 8
  %10 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %11 = bitcast %struct.gl_transform* %6 to i8*
  %12 = bitcast %struct.gl_transform* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %18, %24
  %26 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %31, %37
  %39 = add nsw i32 %25, %38
  %40 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %41 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %39, i32* %45, align 4
  %46 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %51, %57
  %59 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %64, %70
  %72 = add nsw i32 %58, %71
  %73 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %74 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %72, i32* %78, align 4
  %79 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %84, %90
  %92 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %97, %103
  %105 = add nsw i32 %91, %104
  %106 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %107 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %105, i32* %111, align 4
  %112 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %117, %123
  %125 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %4, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %130, %136
  %138 = add nsw i32 %124, %137
  %139 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %140 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %138, i32* %144, align 4
  %145 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %146 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load %struct.gl_transform*, %struct.gl_transform** %5, align 8
  %150 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = bitcast %struct.gl_transform* %4 to { i32**, i32* }*
  %154 = getelementptr inbounds { i32**, i32* }, { i32**, i32* }* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds { i32**, i32* }, { i32**, i32* }* %153, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @gl_transform_vec(i32** %155, i32* %157, i32* %148, i32* %152)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gl_transform_vec(i32**, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
