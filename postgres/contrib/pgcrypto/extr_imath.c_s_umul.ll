; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_umul.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_umul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64, i64)* @s_umul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_umul(i64* %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %62, %5
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load i64*, i64** %8, align 8
  store i64* %21, i64** %14, align 8
  %22 = load i64*, i64** %7, align 8
  store i64* %22, i64** %15, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %62

27:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64*, i64** %15, align 8
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i64*, i64** %14, align 8
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @LOWER_HALF(i32 %46)
  %48 = load i64*, i64** %14, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @UPPER_HALF(i32 %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %12, align 8
  %54 = load i64*, i64** %15, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %15, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %14, align 8
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %14, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %26
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %11, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %8, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %6, align 8
  br label %16

69:                                               ; preds = %16
  ret void
}

declare dso_local i64 @LOWER_HALF(i32) #1

declare dso_local i32 @UPPER_HALF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
