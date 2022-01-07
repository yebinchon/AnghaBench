; ModuleID = '/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_first_significant_code.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/src/extr_pcre_compile.c_first_significant_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_ALT = common dso_local global i64 0, align 8
@OP_lengths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32)* @first_significant_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @first_significant_code(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %55, %2
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  switch i32 %9, label %53 [
    i32 136, label %10
    i32 138, label %10
    i32 137, label %10
    i32 128, label %37
    i32 130, label %37
    i32 135, label %43
    i32 134, label %43
    i32 132, label %43
    i32 129, label %43
    i32 131, label %43
    i32 133, label %43
  ]

10:                                               ; preds = %6, %6, %6
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %56

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %22, %15
  %17 = load i64*, i64** %4, align 8
  %18 = call i32 @GET(i64* %17, i32 1)
  %19 = load i64*, i64** %4, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64* %21, i64** %4, align 8
  br label %22

22:                                               ; preds = %16
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OP_ALT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %16, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @OP_lengths, align 4
  %29 = call i32* @PRIV(i32 %28)
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i64*, i64** %4, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64* %36, i64** %4, align 8
  br label %55

37:                                               ; preds = %6, %6
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i64*, i64** %4, align 8
  store i64* %41, i64** %3, align 8
  br label %56

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %6, %6, %6, %6, %6, %6, %42
  %44 = load i32, i32* @OP_lengths, align 4
  %45 = call i32* @PRIV(i32 %44)
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i64*, i64** %4, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64* %52, i64** %4, align 8
  br label %55

53:                                               ; preds = %6
  %54 = load i64*, i64** %4, align 8
  store i64* %54, i64** %3, align 8
  br label %56

55:                                               ; preds = %43, %27
  br label %6

56:                                               ; preds = %53, %40, %13
  %57 = load i64*, i64** %3, align 8
  ret i64* %57
}

declare dso_local i32 @GET(i64*, i32) #1

declare dso_local i32* @PRIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
