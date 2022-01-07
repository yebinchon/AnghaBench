; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vb.c_gl_alloc_vb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vb.c_gl_alloc_vb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vertex_buffer = type { float**, float**, i32, i32, i64, i8*, i8*, i8*, i32, i64*, i64* }

@VB_SIZE = common dso_local global i64 0, align 8
@VERTEX3_BIT = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i8* null, align 8
@CLIP_ALL_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vertex_buffer* @gl_alloc_vb() #0 {
  %1 = alloca %struct.vertex_buffer*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @calloc(i32 80, i32 1)
  %4 = inttoptr i64 %3 to %struct.vertex_buffer*
  store %struct.vertex_buffer* %4, %struct.vertex_buffer** %1, align 8
  %5 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %6 = icmp ne %struct.vertex_buffer* %5, null
  br i1 %6, label %7, label %67

7:                                                ; preds = %0
  store i64 0, i64* %2, align 8
  br label %8

8:                                                ; preds = %44, %7
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @VB_SIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %14 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %13, i32 0, i32 10
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 0, i64* %17, align 8
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 9
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %24 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %23, i32 0, i32 0
  %25 = load float**, float*** %24, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds float*, float** %25, i64 %26
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 3
  store float 1.000000e+00, float* %29, align 4
  %30 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %31 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %30, i32 0, i32 1
  %32 = load float**, float*** %31, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds float*, float** %32, i64 %33
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  store float 0.000000e+00, float* %36, align 4
  %37 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %38 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %37, i32 0, i32 1
  %39 = load float**, float*** %38, align 8
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds float*, float** %39, i64 %40
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 3
  store float 1.000000e+00, float* %43, align 4
  br label %44

44:                                               ; preds = %12
  %45 = load i64, i64* %2, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %2, align 8
  br label %8

47:                                               ; preds = %8
  %48 = load i32, i32* @VERTEX3_BIT, align 4
  %49 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %50 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %52 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %51, i32 0, i32 2
  store i32 2, i32* %52, align 8
  %53 = load i8*, i8** @GL_TRUE, align 8
  %54 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %55 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @GL_TRUE, align 8
  %57 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %58 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @GL_TRUE, align 8
  %60 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %61 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %63 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @CLIP_ALL_BITS, align 4
  %65 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  %66 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %47, %0
  %68 = load %struct.vertex_buffer*, %struct.vertex_buffer** %1, align 8
  ret %struct.vertex_buffer* %68
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
