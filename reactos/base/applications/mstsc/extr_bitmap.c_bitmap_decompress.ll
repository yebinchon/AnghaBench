; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bitmap.c_bitmap_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bitmap.c_bitmap_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Bpp %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_decompress(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @False, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %12, align 4
  switch i32 %15, label %44 [
    i32 1, label %16
    i32 2, label %23
    i32 3, label %30
    i32 4, label %37
  ]

16:                                               ; preds = %6
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @bitmap_decompress1(i32* %17, i32 %18, i32 %19, i32* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  br label %47

23:                                               ; preds = %6
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bitmap_decompress2(i32* %24, i32 %25, i32 %26, i32* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  br label %47

30:                                               ; preds = %6
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @bitmap_decompress3(i32* %31, i32 %32, i32 %33, i32* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  br label %47

37:                                               ; preds = %6
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @bitmap_decompress4(i32* %38, i32 %39, i32 %40, i32* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  br label %47

44:                                               ; preds = %6
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @unimpl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %37, %30, %23, %16
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @bitmap_decompress1(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @bitmap_decompress2(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @bitmap_decompress3(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @bitmap_decompress4(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
