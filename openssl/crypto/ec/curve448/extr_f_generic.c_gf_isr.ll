; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_f_generic.c_gf_isr.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_f_generic.c_gf_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf_isr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @gf_sqr(i32 %8, i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @gf_mul(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @gf_sqr(i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @gf_mul(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @gf_sqrn(i32 %22, i32 %23, i32 3)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @gf_mul(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gf_sqrn(i32 %29, i32 %30, i32 3)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gf_mul(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @gf_sqrn(i32 %36, i32 %37, i32 9)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @gf_mul(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @gf_sqr(i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @gf_mul(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @gf_sqrn(i32 %50, i32 %51, i32 18)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @gf_mul(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gf_sqrn(i32 %57, i32 %58, i32 37)
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @gf_mul(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @gf_sqrn(i32 %64, i32 %65, i32 37)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @gf_mul(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @gf_sqrn(i32 %71, i32 %72, i32 111)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @gf_mul(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @gf_sqr(i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @gf_mul(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @gf_sqrn(i32 %85, i32 %86, i32 223)
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @gf_mul(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @gf_sqr(i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @gf_mul(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @gf_copy(i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @ONE, align 4
  %104 = call i32 @gf_eq(i32 %102, i32 %103)
  ret i32 %104
}

declare dso_local i32 @gf_sqr(i32, i32) #1

declare dso_local i32 @gf_mul(i32, i32, i32) #1

declare dso_local i32 @gf_sqrn(i32, i32, i32) #1

declare dso_local i32 @gf_copy(i32, i32) #1

declare dso_local i32 @gf_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
