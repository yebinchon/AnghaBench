; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_object_get_bitmaps.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_object_get_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }
%struct.osd_object = type { i64, i32, i32, i32*, i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sub_bitmaps = type { i32 }

@OSDTYPE_OSD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_object_get_bitmaps(%struct.osd_state* %0, %struct.osd_object* %1, i32 %2, %struct.sub_bitmaps* %3) #0 {
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca %struct.osd_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sub_bitmaps*, align 8
  %9 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store %struct.osd_object* %1, %struct.osd_object** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sub_bitmaps* %3, %struct.sub_bitmaps** %8, align 8
  %10 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %11 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OSDTYPE_OSD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %17 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %22 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %23 = call i32 @update_osd(%struct.osd_state* %21, %struct.osd_object* %22)
  br label %24

24:                                               ; preds = %20, %15, %4
  %25 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %26 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %31 = call i64 @mp_ass_packer_alloc(%struct.osd_object* %30)
  %32 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %33 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %36 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %37 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %40 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = call i32 @MP_TARRAY_GROW(%struct.osd_object* %35, i32* %38, i32 %42)
  %44 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %45 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %44, i32 0, i32 7
  %46 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %47 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %46, i32 0, i32 5
  %48 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %49 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %53 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %52, i32 0, i32 2
  %54 = call i32 @append_ass(i32* %45, i32* %47, i32* %51, i32* %53)
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %81, %34
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %58 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %63 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %70 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %69, i32 0, i32 5
  %71 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %72 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %79 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %78, i32 0, i32 2
  %80 = call i32 @append_ass(i32* %68, i32* %70, i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %55

84:                                               ; preds = %55
  %85 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %86 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %89 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %92 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  %95 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %96 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %8, align 8
  %100 = call i32 @mp_ass_packer_pack(i64 %87, i32* %90, i32 %94, i32 %97, i32 %98, %struct.sub_bitmaps* %99)
  %101 = load %struct.osd_object*, %struct.osd_object** %6, align 8
  %102 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %101, i32 0, i32 2
  store i32 0, i32* %102, align 4
  ret void
}

declare dso_local i32 @update_osd(%struct.osd_state*, %struct.osd_object*) #1

declare dso_local i64 @mp_ass_packer_alloc(%struct.osd_object*) #1

declare dso_local i32 @MP_TARRAY_GROW(%struct.osd_object*, i32*, i32) #1

declare dso_local i32 @append_ass(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_ass_packer_pack(i64, i32*, i32, i32, i32, %struct.sub_bitmaps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
