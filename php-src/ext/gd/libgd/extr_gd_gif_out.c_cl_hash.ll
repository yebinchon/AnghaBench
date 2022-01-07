; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_out.c_cl_hash.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_out.c_cl_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @cl_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cl_hash(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %5, align 8
  store i64 -1, i64* %7, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 16
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %84, %2
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -16
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 -15
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 -14
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -13
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -12
  store i32 %35, i32* %37, align 4
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -11
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 -10
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 -9
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -8
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -7
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -6
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 -5
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -4
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 -3
  store i32 %71, i32* %73, align 4
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 -2
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -1
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 -16
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %17
  %85 = load i64, i64* %6, align 8
  %86 = sub nsw i64 %85, 16
  store i64 %86, i64* %6, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %17, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = add nsw i64 %89, 16
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %99, %88
  %92 = load i64, i64* %6, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i64, i64* %7, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %98, i32** %5, align 8
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %6, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %6, align 8
  br label %91

102:                                              ; preds = %91
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
