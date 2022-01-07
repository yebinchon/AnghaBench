; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpShortDiv.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_mpShortDiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIBITMASK = common dso_local global i32 0, align 4
@BITS_PER_DIGIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @mpShortDiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpShortDiv(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %79

24:                                               ; preds = %20
  %25 = load i32, i32* @HIBITMASK, align 4
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %39, %24
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @BITS_PER_DIGIT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %14, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %14, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %26

42:                                               ; preds = %35, %26
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mpShiftLeft(i32* %46, i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32*, i32** %6, align 8
  store i32* %51, i32** %16, align 8
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %58, %42
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %10, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @spDivide(i32* %70, i32* %13, i32* %71, i32 %72)
  store i32 %73, i32* %15, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = ashr i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %23, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mpShiftLeft(i32*, i32*, i32, i32) #1

declare dso_local i32 @spDivide(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
