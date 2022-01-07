; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_usub.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_usub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_DIGIT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64, i64)* @s_usub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_usub(i64* %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp sge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %43, %5
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i64, i64* @MP_DIGIT_MAX, align 8
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 %25, %28
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @LOWER_HALF(i32 %36)
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @UPPER_HALF(i32 %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %22
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %11, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %6, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %7, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %8, align 8
  br label %18

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load i64, i64* @MP_DIGIT_MAX, align 8
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %59, 1
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = add nsw i32 %60, %63
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @LOWER_HALF(i32 %67)
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @UPPER_HALF(i32 %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %57
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %11, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %6, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %8, align 8
  br label %53

81:                                               ; preds = %53
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @LOWER_HALF(i32) #1

declare dso_local i64 @UPPER_HALF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
