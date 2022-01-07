; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_fog_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_fog_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.vertex_buffer* }
%struct.TYPE_6__ = type { i64 }
%struct.vertex_buffer = type { i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @fog_vertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fog_vertices(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.vertex_buffer*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %6 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  store %struct.vertex_buffer* %6, %struct.vertex_buffer** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @gl_fog_color_vertices(%struct.TYPE_7__* %14, i64 %21, i64 %28, i64 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %13
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %47 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %54 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %61 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @gl_fog_color_vertices(%struct.TYPE_7__* %42, i64 %49, i64 %56, i64 %63)
  br label %65

65:                                               ; preds = %41, %13
  br label %119

66:                                               ; preds = %1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %69 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %72 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %79 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %83 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %86 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @gl_fog_index_vertices(%struct.TYPE_7__* %67, i64 %74, i64 %81, i64 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %66
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %97 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %100 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %104 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %107 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %111 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.vertex_buffer*, %struct.vertex_buffer** %3, align 8
  %114 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = call i32 @gl_fog_index_vertices(%struct.TYPE_7__* %95, i64 %102, i64 %109, i64 %116)
  br label %118

118:                                              ; preds = %94, %66
  br label %119

119:                                              ; preds = %118, %65
  ret void
}

declare dso_local i32 @gl_fog_color_vertices(%struct.TYPE_7__*, i64, i64, i64) #1

declare dso_local i32 @gl_fog_index_vertices(%struct.TYPE_7__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
