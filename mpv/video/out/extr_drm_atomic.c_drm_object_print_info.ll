; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_print_info.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.drm_object = type { %struct.TYPE_4__*, %struct.TYPE_3__**, i32, i32 }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Object ID = %d (type = %x) has %d properties\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"    Property '%s' = %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_object_print_info(%struct.mp_log* %0, %struct.drm_object* %1) #0 {
  %3 = alloca %struct.mp_log*, align 8
  %4 = alloca %struct.drm_object*, align 8
  %5 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %3, align 8
  store %struct.drm_object* %1, %struct.drm_object** %4, align 8
  %6 = load %struct.mp_log*, %struct.mp_log** %3, align 8
  %7 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %8 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %11 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %15 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.mp_log*, i8*, i32, i64, ...) @mp_err(%struct.mp_log* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %13, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %49, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %23 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = load %struct.mp_log*, %struct.mp_log** %3, align 8
  %30 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %31 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %40 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.mp_log*, i8*, i32, i64, ...) @mp_err(%struct.mp_log* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %47)
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %20

52:                                               ; preds = %20
  ret void
}

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
