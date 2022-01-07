; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_kms_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_kms_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kms = type { i32, i64, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kms_destroy(%struct.kms* %0) #0 {
  %2 = alloca %struct.kms*, align 8
  store %struct.kms* %0, %struct.kms** %2, align 8
  %3 = load %struct.kms*, %struct.kms** %2, align 8
  %4 = icmp ne %struct.kms* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %53

6:                                                ; preds = %1
  %7 = load %struct.kms*, %struct.kms** %2, align 8
  %8 = getelementptr inbounds %struct.kms, %struct.kms* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.kms*, %struct.kms** %2, align 8
  %11 = getelementptr inbounds %struct.kms, %struct.kms* %10, i32 0, i32 4
  %12 = call i32 @drm_mode_destroy_blob(i32 %9, i32* %11)
  %13 = load %struct.kms*, %struct.kms** %2, align 8
  %14 = getelementptr inbounds %struct.kms, %struct.kms* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.kms*, %struct.kms** %2, align 8
  %19 = getelementptr inbounds %struct.kms, %struct.kms* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @drmModeFreeConnector(i32* %20)
  %22 = load %struct.kms*, %struct.kms** %2, align 8
  %23 = getelementptr inbounds %struct.kms, %struct.kms* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %6
  %25 = load %struct.kms*, %struct.kms** %2, align 8
  %26 = getelementptr inbounds %struct.kms, %struct.kms* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.kms*, %struct.kms** %2, align 8
  %31 = getelementptr inbounds %struct.kms, %struct.kms* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @drmModeFreeEncoder(i32* %32)
  %34 = load %struct.kms*, %struct.kms** %2, align 8
  %35 = getelementptr inbounds %struct.kms, %struct.kms* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.kms*, %struct.kms** %2, align 8
  %38 = getelementptr inbounds %struct.kms, %struct.kms* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.kms*, %struct.kms** %2, align 8
  %43 = getelementptr inbounds %struct.kms, %struct.kms* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @drm_atomic_destroy_context(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.kms*, %struct.kms** %2, align 8
  %48 = getelementptr inbounds %struct.kms, %struct.kms* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @close(i32 %49)
  %51 = load %struct.kms*, %struct.kms** %2, align 8
  %52 = call i32 @talloc_free(%struct.kms* %51)
  br label %53

53:                                               ; preds = %46, %5
  ret void
}

declare dso_local i32 @drm_mode_destroy_blob(i32, i32*) #1

declare dso_local i32 @drmModeFreeConnector(i32*) #1

declare dso_local i32 @drmModeFreeEncoder(i32*) #1

declare dso_local i32 @drm_atomic_destroy_context(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @talloc_free(%struct.kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
