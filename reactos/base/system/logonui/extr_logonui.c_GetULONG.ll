; ModuleID = '/home/carl/AnghaBench/reactos/base/system/logonui/extr_logonui.c_GetULONG.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/logonui/extr_logonui.c_GetULONG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @GetULONG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetULONG(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @wcslen(i32* %8)
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 48
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 57
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ true, %14 ], [ %25, %20 ]
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi i1 [ false, %10 ], [ %27, %26 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %10

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 48
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 57
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37, %33
  store i32 -1, i32* %2, align 4
  br label %56

50:                                               ; preds = %43
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @wcstoul(i32* %53, i32** %7, i32 10)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @wcstoul(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
