; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_transpose.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix3_transpose(%struct.matrix3* %0, %struct.matrix3* %1) #0 {
  %3 = alloca %struct.matrix3*, align 8
  %4 = alloca %struct.matrix3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.matrix3* %0, %struct.matrix3** %3, align 8
  store %struct.matrix3* %1, %struct.matrix3** %4, align 8
  %7 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %8 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 3
  %9 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %10 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %9, i32 0, i32 3
  %11 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %12 = call i32 @vec3_rotate(i32* %8, i32* %10, %struct.matrix3* %11)
  %13 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %14 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %13, i32 0, i32 3
  %15 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %16 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %15, i32 0, i32 3
  %17 = call i32 @vec3_neg(i32* %14, i32* %16)
  %18 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %19 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %23 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @_mm_movelh_ps(i8* %21, i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %28 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %32 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @_mm_movehl_ps(i8* %30, i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %38 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @_MM_SHUFFLE(i32 3, i32 0, i32 2, i32 0)
  %42 = call i8* @_mm_shuffle_ps(i32 %36, i8* %40, i32 %41)
  %43 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %44 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %48 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @_MM_SHUFFLE(i32 3, i32 1, i32 3, i32 1)
  %52 = call i8* @_mm_shuffle_ps(i32 %46, i8* %50, i32 %51)
  %53 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %54 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %58 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @_MM_SHUFFLE(i32 3, i32 2, i32 2, i32 0)
  %62 = call i8* @_mm_shuffle_ps(i32 %56, i8* %60, i32 %61)
  %63 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %64 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  ret void
}

declare dso_local i32 @vec3_rotate(i32*, i32*, %struct.matrix3*) #1

declare dso_local i32 @vec3_neg(i32*, i32*) #1

declare dso_local i32 @_mm_movelh_ps(i8*, i8*) #1

declare dso_local i32 @_mm_movehl_ps(i8*, i8*) #1

declare dso_local i8* @_mm_shuffle_ps(i32, i8*, i32) #1

declare dso_local i32 @_MM_SHUFFLE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
