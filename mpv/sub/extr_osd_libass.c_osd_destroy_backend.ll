; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_destroy_backend.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_destroy_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { %struct.osd_object** }
%struct.osd_object = type { i32, i32*, i32 }

@MAX_OSD_PARTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_destroy_backend(%struct.osd_state* %0) #0 {
  %2 = alloca %struct.osd_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.osd_object*, align 8
  %5 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_OSD_PARTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  %11 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %12 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %11, i32 0, i32 0
  %13 = load %struct.osd_object**, %struct.osd_object*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.osd_object*, %struct.osd_object** %13, i64 %15
  %17 = load %struct.osd_object*, %struct.osd_object** %16, align 8
  store %struct.osd_object* %17, %struct.osd_object** %4, align 8
  %18 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %19 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %18, i32 0, i32 2
  %20 = call i32 @destroy_ass_renderer(i32* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %10
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %24 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %29 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @destroy_external(i32* %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %40 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @destroy_ass_renderer(i32*) #1

declare dso_local i32 @destroy_external(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
