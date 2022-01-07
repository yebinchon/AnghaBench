; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_generate_osd.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_generate_osd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osdpart = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.osdpart**, i32* }
%struct.sub_bitmaps = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.osdpart* (%struct.TYPE_4__*, %struct.sub_bitmaps*)* @generate_osd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.osdpart* @generate_osd(%struct.TYPE_4__* %0, %struct.sub_bitmaps* %1) #0 {
  %3 = alloca %struct.osdpart*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.sub_bitmaps*, align 8
  %6 = alloca %struct.osdpart*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.sub_bitmaps* %1, %struct.sub_bitmaps** %5, align 8
  %7 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %8 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %16 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11, %2
  store %struct.osdpart* null, %struct.osdpart** %3, align 8
  br label %53

22:                                               ; preds = %11
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.osdpart**, %struct.osdpart*** %24, align 8
  %26 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %27 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.osdpart*, %struct.osdpart** %25, i64 %28
  %30 = load %struct.osdpart*, %struct.osdpart** %29, align 8
  store %struct.osdpart* %30, %struct.osdpart** %6, align 8
  %31 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %32 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %35 = getelementptr inbounds %struct.osdpart, %struct.osdpart* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %41 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %42 = call i32 @upload_osd(%struct.TYPE_4__* %39, %struct.osdpart* %40, %struct.sub_bitmaps* %41)
  br label %43

43:                                               ; preds = %38, %22
  %44 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  %45 = getelementptr inbounds %struct.osdpart, %struct.osdpart* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load %struct.osdpart*, %struct.osdpart** %6, align 8
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi %struct.osdpart* [ %49, %48 ], [ null, %50 ]
  store %struct.osdpart* %52, %struct.osdpart** %3, align 8
  br label %53

53:                                               ; preds = %51, %21
  %54 = load %struct.osdpart*, %struct.osdpart** %3, align 8
  ret %struct.osdpart* %54
}

declare dso_local i32 @upload_osd(%struct.TYPE_4__*, %struct.osdpart*, %struct.sub_bitmaps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
