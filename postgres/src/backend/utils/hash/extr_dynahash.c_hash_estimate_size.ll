; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_hash_estimate_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_hash_estimate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEF_FFACTOR = common dso_local global i64 0, align 8
@DEF_SEGSIZE = common dso_local global i64 0, align 8
@DEF_DIRSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_estimate_size(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %12, 1
  %14 = load i64, i64* @DEF_FFACTOR, align 8
  %15 = sdiv i64 %13, %14
  %16 = add nsw i64 %15, 1
  %17 = call i64 @next_pow2_long(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load i64, i64* @DEF_SEGSIZE, align 8
  %21 = sdiv i64 %19, %20
  %22 = add nsw i64 %21, 1
  %23 = call i64 @next_pow2_long(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @DEF_DIRSIZE, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %29, %2
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = shl i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %25

32:                                               ; preds = %25
  %33 = call i64 @MAXALIGN(i32 4)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @mul_size(i64 %36, i64 4)
  %38 = call i32 @add_size(i32 %35, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @DEF_SEGSIZE, align 8
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i64 @MAXALIGN(i32 %43)
  %45 = call i64 @mul_size(i64 %40, i64 %44)
  %46 = call i32 @add_size(i32 %39, i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @choose_nelem_alloc(i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %3, align 8
  %50 = sub nsw i64 %49, 1
  %51 = load i64, i64* %11, align 8
  %52 = sdiv i64 %50, %51
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %9, align 8
  %54 = call i64 @MAXALIGN(i32 4)
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @MAXALIGN(i32 %55)
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* %10, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @mul_size(i64 %60, i64 %61)
  %63 = call i64 @mul_size(i64 %59, i64 %62)
  %64 = call i32 @add_size(i32 %58, i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @next_pow2_long(i64) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @add_size(i32, i64) #1

declare dso_local i64 @mul_size(i64, i64) #1

declare dso_local i64 @choose_nelem_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
