; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_to_int.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_ZPOS = common dso_local global i64 0, align 8
@MP_SMALL_MAX = common dso_local global i32 0, align 4
@MP_SMALL_MIN = common dso_local global i32 0, align 4
@MP_RANGE = common dso_local global i32 0, align 4
@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i64 0, align 8
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_to_int(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @MP_SIGN(i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MP_ZPOS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @MP_SMALL_MAX, align 4
  %22 = call i64 @mp_int_compare_value(i32* %20, i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @MP_SMALL_MIN, align 4
  %27 = call i64 @mp_int_compare_value(i32* %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @MP_RANGE, align 4
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @MP_USED(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @MP_DIGITS(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 -1
  store i32* %39, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %43, %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i32, i32* @MP_DIGIT_BIT, align 4
  %45 = sdiv i32 %44, 2
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MP_DIGIT_BIT, align 4
  %50 = sdiv i32 %49, 2
  %51 = shl i32 %48, %50
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 -1
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %52, align 4
  %55 = or i32 %51, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @MP_NEG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 0, %66
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %67, %65 ], [ %69, %68 ]
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i32, i32* @MP_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %29
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MP_SIGN(i32*) #1

declare dso_local i64 @mp_int_compare_value(i32*, i32) #1

declare dso_local i32 @MP_USED(i32*) #1

declare dso_local i32* @MP_DIGITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
