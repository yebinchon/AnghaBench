; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.h_gl_transform_eq.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.h_gl_transform_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_transform = type { i64**, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64*, i64**, i64*)* @gl_transform_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_transform_eq(i64** %0, i64* %1, i64** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gl_transform, align 8
  %7 = alloca %struct.gl_transform, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.gl_transform* %6 to { i64**, i64* }*
  %11 = getelementptr inbounds { i64**, i64* }, { i64**, i64* }* %10, i32 0, i32 0
  store i64** %0, i64*** %11, align 8
  %12 = getelementptr inbounds { i64**, i64* }, { i64**, i64* }* %10, i32 0, i32 1
  store i64* %1, i64** %12, align 8
  %13 = bitcast %struct.gl_transform* %7 to { i64**, i64* }*
  %14 = getelementptr inbounds { i64**, i64* }, { i64**, i64* }* %13, i32 0, i32 0
  store i64** %2, i64*** %14, align 8
  %15 = getelementptr inbounds { i64**, i64* }, { i64**, i64* }* %13, i32 0, i32 1
  store i64* %3, i64** %15, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %51, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 0
  %25 = load i64**, i64*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64*, i64** %25, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %7, i32 0, i32 0
  %35 = load i64**, i64*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %33, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %77

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %20

50:                                               ; preds = %20
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %16

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %7, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %6, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %7, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %68, %72
  br label %74

74:                                               ; preds = %64, %54
  %75 = phi i1 [ false, %54 ], [ %73, %64 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %45
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
