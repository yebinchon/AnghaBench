; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_fci_get_checksum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_fci_get_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @fci_get_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fci_get_checksum(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 4
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  br label %16

16:                                               ; preds = %20, %3
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* %24, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %30, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  %38 = load i32, i32* %36, align 4
  %39 = shl i32 %38, 24
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %16

45:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 4
  switch i32 %47, label %67 [
    i32 3, label %48
    i32 2, label %55
    i32 1, label %62
  ]

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %10, align 8
  %51 = load i32, i32* %49, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %45, %48
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %10, align 8
  %58 = load i32, i32* %56, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %45, %55
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %45, %62
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
