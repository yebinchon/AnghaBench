; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_colorspace_merge.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_colorspace_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_colorspace = type { i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_colorspace_merge(%struct.mp_colorspace* %0, %struct.mp_colorspace* %1) #0 {
  %3 = alloca %struct.mp_colorspace*, align 8
  %4 = alloca %struct.mp_colorspace*, align 8
  store %struct.mp_colorspace* %0, %struct.mp_colorspace** %3, align 8
  store %struct.mp_colorspace* %1, %struct.mp_colorspace** %4, align 8
  %5 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %6 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.mp_colorspace*, %struct.mp_colorspace** %4, align 8
  %11 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %14 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %13, i32 0, i32 5
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %17 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.mp_colorspace*, %struct.mp_colorspace** %4, align 8
  %22 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %25 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %28 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.mp_colorspace*, %struct.mp_colorspace** %4, align 8
  %33 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %36 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %39 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.mp_colorspace*, %struct.mp_colorspace** %4, align 8
  %44 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %47 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %50 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.mp_colorspace*, %struct.mp_colorspace** %4, align 8
  %55 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %58 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %61 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.mp_colorspace*, %struct.mp_colorspace** %4, align 8
  %66 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.mp_colorspace*, %struct.mp_colorspace** %3, align 8
  %69 = getelementptr inbounds %struct.mp_colorspace, %struct.mp_colorspace* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
