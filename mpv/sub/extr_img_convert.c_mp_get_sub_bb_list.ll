; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_img_convert.c_mp_get_sub_bb_list.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_img_convert.c_mp_get_sub_bb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_bitmaps = type { i32, %struct.sub_bitmap* }
%struct.sub_bitmap = type { i64, i64, i64, i64 }
%struct.mp_rect = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@MERGE_RC_PIXELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_get_sub_bb_list(%struct.sub_bitmaps* %0, %struct.mp_rect* %1, i32 %2) #0 {
  %4 = alloca %struct.sub_bitmaps*, align 8
  %5 = alloca %struct.mp_rect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sub_bitmap*, align 8
  %11 = alloca %struct.mp_rect, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mp_rect*, align 8
  store %struct.sub_bitmaps* %0, %struct.sub_bitmaps** %4, align 8
  store %struct.mp_rect* %1, %struct.mp_rect** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @MERGE_RC_PIXELS, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %130, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %4, align 8
  %19 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %133

22:                                               ; preds = %16
  %23 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %4, align 8
  %24 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %23, i32 0, i32 1
  %25 = load %struct.sub_bitmap*, %struct.sub_bitmap** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %25, i64 %27
  store %struct.sub_bitmap* %28, %struct.sub_bitmap** %10, align 8
  %29 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 0
  %30 = load %struct.sub_bitmap*, %struct.sub_bitmap** %10, align 8
  %31 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 1
  %35 = load %struct.sub_bitmap*, %struct.sub_bitmap** %10, align 8
  %36 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 2
  %40 = load %struct.sub_bitmap*, %struct.sub_bitmap** %10, align 8
  %41 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sub_bitmap*, %struct.sub_bitmap** %10, align 8
  %44 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %39, align 8
  %48 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 3
  %49 = load %struct.sub_bitmap*, %struct.sub_bitmap** %10, align 8
  %50 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sub_bitmap*, %struct.sub_bitmap** %10, align 8
  %53 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %48, align 4
  %57 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 7
  store i64 0, i64* %60, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %113, %22
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %61
  %66 = load %struct.mp_rect*, %struct.mp_rect** %5, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %66, i64 %68
  store %struct.mp_rect* %69, %struct.mp_rect** %14, align 8
  %70 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.mp_rect*, %struct.mp_rect** %14, align 8
  %75 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %73, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.mp_rect*, %struct.mp_rect** %14, align 8
  %84 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.mp_rect*, %struct.mp_rect** %14, align 8
  %93 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %11, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %98, %99
  %101 = load %struct.mp_rect*, %struct.mp_rect** %14, align 8
  %102 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %96, %87, %78, %65
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %96
  %110 = load %struct.mp_rect*, %struct.mp_rect** %14, align 8
  %111 = call i32 @mp_rect_union(%struct.mp_rect* %110, %struct.mp_rect* %11)
  store i32 1, i32* %12, align 4
  br label %116

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %61

116:                                              ; preds = %109, %61
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load %struct.mp_rect*, %struct.mp_rect** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %120, i64 %123
  %125 = bitcast %struct.mp_rect* %124 to i8*
  %126 = bitcast %struct.mp_rect* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 48, i1 false)
  %127 = load %struct.mp_rect*, %struct.mp_rect** %5, align 8
  %128 = call i32 @remove_intersecting_rcs(%struct.mp_rect* %127, i32* %8)
  br label %129

129:                                              ; preds = %119, %116
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %16

133:                                              ; preds = %16
  %134 = load %struct.mp_rect*, %struct.mp_rect** %5, align 8
  %135 = call i32 @remove_intersecting_rcs(%struct.mp_rect* %134, i32* %8)
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @mp_rect_union(%struct.mp_rect*, %struct.mp_rect*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @remove_intersecting_rcs(%struct.mp_rect*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
