; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_gl_transform_vb_part1.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_gl_transform_vb_part1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i64, %struct.vertex_buffer* }
%struct.TYPE_7__ = type { i32 }
%struct.vertex_buffer = type { i64, i64, i64, i64, i64, i64 }

@VERTEX4_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_transform_vb_part1(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vertex_buffer*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %8 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  store %struct.vertex_buffer* %8, %struct.vertex_buffer** %5, align 8
  %9 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VERTEX4_BIT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @transform_points4(%struct.TYPE_8__* %21, i64 %28, i64 %35, i64 %42)
  br label %68

44:                                               ; preds = %2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %64 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i32 @transform_points3(%struct.TYPE_8__* %45, i64 %52, i64 %59, i64 %66)
  br label %68

68:                                               ; preds = %44, %20
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %92 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.vertex_buffer*, %struct.vertex_buffer** %5, align 8
  %95 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gl_xform_normals_3fv(i64 %80, i64 %87, i32 %90, i64 %97, i32 %101)
  br label %103

103:                                              ; preds = %73, %68
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @gl_transform_vb_part2(%struct.TYPE_8__* %104, i32 %105)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @transform_points4(%struct.TYPE_8__*, i64, i64, i64) #1

declare dso_local i32 @transform_points3(%struct.TYPE_8__*, i64, i64, i64) #1

declare dso_local i32 @gl_xform_normals_3fv(i64, i64, i32, i64, i32) #1

declare dso_local i32 @gl_transform_vb_part2(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
