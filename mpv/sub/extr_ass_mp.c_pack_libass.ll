; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_pack_libass.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_pack_libass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ass_packer = type { i32 }
%struct.sub_bitmaps = type { i32, %struct.TYPE_2__*, %struct.sub_bitmap* }
%struct.TYPE_2__ = type { i32*, i64* }
%struct.sub_bitmap = type { i32, i32, i32, i8*, i32, i32 }

@IMGFMT_Y8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_ass_packer*, %struct.sub_bitmaps*)* @pack_libass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_libass(%struct.mp_ass_packer* %0, %struct.sub_bitmaps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_ass_packer*, align 8
  %5 = alloca %struct.sub_bitmaps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sub_bitmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mp_ass_packer* %0, %struct.mp_ass_packer** %4, align 8
  store %struct.sub_bitmaps* %1, %struct.sub_bitmaps** %5, align 8
  %10 = load %struct.mp_ass_packer*, %struct.mp_ass_packer** %4, align 8
  %11 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %12 = load i32, i32* @IMGFMT_Y8, align 4
  %13 = call i32 @pack(%struct.mp_ass_packer* %10, %struct.sub_bitmaps* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %79, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %20 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  %24 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %25 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %24, i32 0, i32 2
  %26 = load %struct.sub_bitmap*, %struct.sub_bitmap** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %26, i64 %28
  store %struct.sub_bitmap* %29, %struct.sub_bitmap** %7, align 8
  %30 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %31 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %38 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %46 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %44, i64 %50
  %52 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %53 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %60 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %63 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %66 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %70 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memcpy_pic(i8* %58, i8* %61, i32 %64, i32 %67, i32 %68, i32 %71)
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %75 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.sub_bitmap*, %struct.sub_bitmap** %7, align 8
  %78 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %23
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %17

82:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pack(%struct.mp_ass_packer*, %struct.sub_bitmaps*, i32) #1

declare dso_local i32 @memcpy_pic(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
