; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_div_pow2.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_div_pow2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_int_div_pow2(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %16, %17
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = phi i1 [ false, %12 ], [ false, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @MP_OK, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @mp_int_copy(i32* %27, i32* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* @MP_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @s_qdiv(i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %26, %19
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @MP_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @mp_int_copy(i32* %45, i32* %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* @MP_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @s_qmod(i32* %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %44, %41, %37
  %56 = load i64, i64* %9, align 8
  ret i64 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_int_copy(i32*, i32*) #1

declare dso_local i32 @s_qdiv(i32*, i32) #1

declare dso_local i32 @s_qmod(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
