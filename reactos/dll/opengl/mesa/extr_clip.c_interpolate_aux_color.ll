; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_interpolate_aux_color.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_interpolate_aux_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.vertex_buffer* }
%struct.vertex_buffer = type { i8*** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpolate_aux_color(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vertex_buffer*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.vertex_buffer*, %struct.vertex_buffer** %15, align 8
  store %struct.vertex_buffer* %16, %struct.vertex_buffer** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 0
  %20 = load i8***, i8**** %19, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i8**, i8*** %20, i64 %21
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %27 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %26, i32 0, i32 0
  %28 = load i8***, i8**** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds i8**, i8*** %28, i64 %29
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @LINTERP(i32 %17, i8* %25, i8* %33)
  %35 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %36 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %35, i32 0, i32 0
  %37 = load i8***, i8**** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i8**, i8*** %37, i64 %38
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %34, i8** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %44 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %43, i32 0, i32 0
  %45 = load i8***, i8**** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i8**, i8*** %45, i64 %46
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %52 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %51, i32 0, i32 0
  %53 = load i8***, i8**** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8**, i8*** %53, i64 %54
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @LINTERP(i32 %42, i8* %50, i8* %58)
  %60 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %61 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %60, i32 0, i32 0
  %62 = load i8***, i8**** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8**, i8*** %62, i64 %63
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %59, i8** %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %69 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %68, i32 0, i32 0
  %70 = load i8***, i8**** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i8**, i8*** %70, i64 %71
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %77 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %76, i32 0, i32 0
  %78 = load i8***, i8**** %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds i8**, i8*** %78, i64 %79
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @LINTERP(i32 %67, i8* %75, i8* %83)
  %85 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %86 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %85, i32 0, i32 0
  %87 = load i8***, i8**** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i8**, i8*** %87, i64 %88
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  store i8* %84, i8** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %94 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %93, i32 0, i32 0
  %95 = load i8***, i8**** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8**, i8*** %95, i64 %96
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %102 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %101, i32 0, i32 0
  %103 = load i8***, i8**** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i8**, i8*** %103, i64 %104
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @LINTERP(i32 %92, i8* %100, i8* %108)
  %110 = load %struct.vertex_buffer*, %struct.vertex_buffer** %13, align 8
  %111 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %110, i32 0, i32 0
  %112 = load i8***, i8**** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8**, i8*** %112, i64 %113
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 3
  store i8* %109, i8** %116, align 8
  ret void
}

declare dso_local i8* @LINTERP(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
