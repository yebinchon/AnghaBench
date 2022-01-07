; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_win32.c__tiffWriteProc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_win32.c__tiffWriteProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @_tiffWriteProc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_tiffWriteProc(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %12, align 8
  br label %16

16:                                               ; preds = %52, %3
  %17 = load i64, i64* %9, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  store i32 -2147483648, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @WriteFile(i32 %28, i32 %30, i32 %31, i32* %11, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  br label %55

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %53

52:                                               ; preds = %35
  br label %16

53:                                               ; preds = %51, %16
  %54 = load i64, i64* %12, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @WriteFile(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
