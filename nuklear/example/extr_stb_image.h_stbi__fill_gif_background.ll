; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__fill_gif_background.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__fill_gif_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64*, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32)* @stbi__fill_gif_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__fill_gif_background(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i64**, i64*** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64*, i64** %17, i64 %20
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %13, align 8
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %64, %5
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %60, %28
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  store i64* %42, i64** %14, align 8
  %43 = load i64*, i64** %13, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %14, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %45, i64* %47, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %50, i64* %52, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  store i64 %55, i64* %57, align 8
  %58 = load i64*, i64** %14, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %34
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %11, align 4
  br label %30

63:                                               ; preds = %30
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 4, %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %24

71:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
