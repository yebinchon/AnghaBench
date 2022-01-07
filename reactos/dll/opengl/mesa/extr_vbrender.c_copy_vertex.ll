; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbrender.c_copy_vertex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbrender.c_copy_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vertex_buffer = type { i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vertex_buffer*, i64, i64)* @copy_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vertex(%struct.vertex_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vertex_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vertex_buffer* %0, %struct.vertex_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %7, i32 0, i32 11
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %13, i32 0, i32 11
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @COPY_4V(i32 %12, i32 %18)
  %20 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %26, i32 0, i32 10
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @COPY_4V(i32 %25, i32 %31)
  %33 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %39, i32 0, i32 9
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @COPY_3V(i32 %38, i32 %44)
  %46 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @COPY_4V(i32 %51, i32 %57)
  %59 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @COPY_4V(i32 %64, i32 %70)
  %72 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %73 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @COPY_4V(i32 %77, i32 %83)
  %85 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %92 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %103 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %108 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %114 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %119 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %125 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %130 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %136 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %141 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %140, i32 0, i32 0
  %142 = load i32**, i32*** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds i32*, i32** %142, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %149 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %147, i32* %154, align 4
  %155 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %156 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %155, i32 0, i32 0
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.vertex_buffer*, %struct.vertex_buffer** %4, align 8
  %164 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %163, i32 0, i32 0
  %165 = load i32**, i32*** %164, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 %162, i32* %169, align 4
  ret void
}

declare dso_local i32 @COPY_4V(i32, i32) #1

declare dso_local i32 @COPY_3V(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
