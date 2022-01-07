; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_REGPROC_export_string.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_REGPROC_export_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*, i64*, i32*, i64)* @REGPROC_export_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REGPROC_export_string(i32** %0, i64* %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %18, %19
  %21 = add i64 %20, 10
  %22 = call i32 @REGPROC_resize_char_buffer(i32** %15, i64* %16, i64 %21)
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %82, %5
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  switch i32 %34, label %74 [
    i32 10, label %35
    i32 92, label %57
    i32 34, label %57
  ]

35:                                               ; preds = %29
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %13, align 8
  %38 = load i32**, i32*** %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @REGPROC_resize_char_buffer(i32** %38, i64* %39, i64 %45)
  %47 = load i32**, i32*** %6, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 92, i32* %51, align 4
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 110, i32* %56, align 4
  br label %81

57:                                               ; preds = %29, %29
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  %60 = load i32**, i32*** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %65, %66
  %68 = call i32 @REGPROC_resize_char_buffer(i32** %60, i64* %61, i64 %67)
  %69 = load i32**, i32*** %6, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %12, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 92, i32* %73, align 4
  br label %74

74:                                               ; preds = %29, %57
  %75 = load i32, i32* %14, align 4
  %76 = load i32**, i32*** %6, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %35
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %25

85:                                               ; preds = %25
  %86 = load i32**, i32*** %6, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 0, i32* %89, align 4
  %90 = load i64, i64* %12, align 8
  %91 = load i64*, i64** %8, align 8
  store i64 %90, i64* %91, align 8
  ret void
}

declare dso_local i32 @REGPROC_resize_char_buffer(i32**, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
