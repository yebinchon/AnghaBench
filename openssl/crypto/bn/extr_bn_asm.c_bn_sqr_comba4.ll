; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_asm.c_bn_sqr_comba4.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_asm.c_bn_sqr_comba4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_sqr_comba4(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @sqr_add_c(i64* %8, i32 0, i64 %9, i64 %10, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 %13, i64* %15, align 8
  store i64 0, i64* %5, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @sqr_add_c2(i64* %16, i32 1, i32 0, i64 %17, i64 %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %21, i64* %23, align 8
  store i64 0, i64* %6, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @sqr_add_c(i64* %24, i32 1, i64 %25, i64 %26, i64 %27)
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @sqr_add_c2(i64* %29, i32 2, i32 0, i64 %30, i64 %31, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  store i64 %34, i64* %36, align 8
  store i64 0, i64* %7, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @sqr_add_c2(i64* %37, i32 3, i32 0, i64 %38, i64 %39, i64 %40)
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @sqr_add_c2(i64* %42, i32 2, i32 1, i64 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  store i64 %47, i64* %49, align 8
  store i64 0, i64* %5, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @sqr_add_c(i64* %50, i32 2, i64 %51, i64 %52, i64 %53)
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @sqr_add_c2(i64* %55, i32 3, i32 1, i64 %56, i64 %57, i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  store i64 %60, i64* %62, align 8
  store i64 0, i64* %6, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @sqr_add_c2(i64* %63, i32 3, i32 2, i64 %64, i64 %65, i64 %66)
  %68 = load i64, i64* %7, align 8
  %69 = load i64*, i64** %3, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 5
  store i64 %68, i64* %70, align 8
  store i64 0, i64* %7, align 8
  %71 = load i64*, i64** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @sqr_add_c(i64* %71, i32 3, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %5, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 6
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64*, i64** %3, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 7
  store i64 %79, i64* %81, align 8
  ret void
}

declare dso_local i32 @sqr_add_c(i64*, i32, i64, i64, i64) #1

declare dso_local i32 @sqr_add_c2(i64*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
