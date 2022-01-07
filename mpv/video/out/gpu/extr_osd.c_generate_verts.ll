; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_generate_verts.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_generate_verts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpgl_osd_part = type { i32, i32, i32, i32, %struct.vertex*, %struct.sub_bitmap* }
%struct.vertex = type { i32 }
%struct.sub_bitmap = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gl_transform = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpgl_osd_part*, i32)* @generate_verts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_verts(%struct.mpgl_osd_part* %0, i32 %1) #0 {
  %3 = alloca %struct.gl_transform, align 4
  %4 = alloca %struct.mpgl_osd_part*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sub_bitmap*, align 8
  %7 = alloca %struct.vertex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %3, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.mpgl_osd_part* %0, %struct.mpgl_osd_part** %4, align 8
  %11 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %12 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %13 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %12, i32 0, i32 4
  %14 = load %struct.vertex*, %struct.vertex** %13, align 8
  %15 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %16 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %19 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 6
  %22 = add nsw i32 %17, %21
  %23 = call i32 @MP_TARRAY_GROW(%struct.mpgl_osd_part* %11, %struct.vertex* %14, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %119, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %27 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %122

30:                                               ; preds = %24
  %31 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %32 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %31, i32 0, i32 5
  %33 = load %struct.sub_bitmap*, %struct.sub_bitmap** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %33, i64 %35
  store %struct.sub_bitmap* %36, %struct.sub_bitmap** %6, align 8
  %37 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %38 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %37, i32 0, i32 4
  %39 = load %struct.vertex*, %struct.vertex** %38, align 8
  %40 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %41 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vertex, %struct.vertex* %39, i64 %43
  store %struct.vertex* %44, %struct.vertex** %7, align 8
  %45 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %46 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 24
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds i32, i32* %49, i64 1
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 255
  store i32 %55, i32* %52, align 4
  %56 = getelementptr inbounds i32, i32* %52, i64 1
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds i32, i32* %56, i64 1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  %63 = sub nsw i32 255, %62
  store i32 %63, i32* %60, align 4
  %64 = load %struct.vertex*, %struct.vertex** %7, align 8
  %65 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %66 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %69 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %72 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %75 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %79 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %82 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %86 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %89 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %92 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %95 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %99 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sub_bitmap*, %struct.sub_bitmap** %6, align 8
  %102 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %106 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %109 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %112 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %3, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @write_quad(%struct.vertex* %64, i32 %113, i64 %67, i64 %70, i64 %77, i64 %84, i64 %87, i64 %90, i64 %97, i64 %104, i32 %107, i32 %110, i32* %111)
  %115 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %4, align 8
  %116 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 6
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %30
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %24

122:                                              ; preds = %24
  ret void
}

declare dso_local i32 @MP_TARRAY_GROW(%struct.mpgl_osd_part*, %struct.vertex*, i32) #1

declare dso_local i32 @write_quad(%struct.vertex*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
