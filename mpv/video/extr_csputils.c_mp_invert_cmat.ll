; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_invert_cmat.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_invert_cmat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmat = type { i32**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_invert_cmat(%struct.mp_cmat* %0, %struct.mp_cmat* %1) #0 {
  %3 = alloca %struct.mp_cmat*, align 8
  %4 = alloca %struct.mp_cmat*, align 8
  store %struct.mp_cmat* %0, %struct.mp_cmat** %3, align 8
  store %struct.mp_cmat* %1, %struct.mp_cmat** %4, align 8
  %5 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %6 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %7 = bitcast %struct.mp_cmat* %5 to i8*
  %8 = bitcast %struct.mp_cmat* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %10 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = call i32 @mp_invert_matrix3x3(i32** %11)
  %13 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %21 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %19, %24
  %26 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %27 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %34 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = add nsw i32 %25, %38
  %40 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %41 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %48 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %46, %51
  %53 = add nsw i32 %39, %52
  %54 = sub nsw i32 0, %53
  %55 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %56 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %60 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %67 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %73 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %80 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = add nsw i32 %71, %84
  %86 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %87 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %94 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %92, %97
  %99 = add nsw i32 %85, %98
  %100 = sub nsw i32 0, %99
  %101 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %102 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %106 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %113 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %111, %116
  %118 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %119 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %126 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %124, %129
  %131 = add nsw i32 %117, %130
  %132 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %133 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %132, i32 0, i32 0
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mp_cmat*, %struct.mp_cmat** %4, align 8
  %140 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %138, %143
  %145 = add nsw i32 %131, %144
  %146 = sub nsw i32 0, %145
  %147 = load %struct.mp_cmat*, %struct.mp_cmat** %3, align 8
  %148 = getelementptr inbounds %struct.mp_cmat, %struct.mp_cmat* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %146, i32* %150, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_invert_matrix3x3(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
