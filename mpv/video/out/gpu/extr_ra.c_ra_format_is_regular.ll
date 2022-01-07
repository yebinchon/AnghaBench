; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_format_is_regular.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_format_is_regular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_format = type { i32, i32, i64*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_format*)* @ra_format_is_regular to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_format_is_regular(%struct.ra_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_format*, align 8
  %4 = alloca i32, align 4
  store %struct.ra_format* %0, %struct.ra_format** %3, align 8
  %5 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %6 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %11 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %16 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %9, %1
  store i32 0, i32* %2, align 4
  br label %79

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %57, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %24 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %29 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %36 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %55, label %41

41:                                               ; preds = %27
  %42 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %43 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %50 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41, %27
  store i32 0, i32* %2, align 4
  br label %79

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %62 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %67 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %65, %69
  %71 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %72 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %79

78:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77, %55, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
