; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_longfelem_diff.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp256.c_longfelem_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@longfelem_diff.two70m8p6 = internal constant i32 2147483456, align 4
@longfelem_diff.two70p40 = internal constant i32 0, align 4
@longfelem_diff.two70 = internal constant i32 -2147483648, align 4
@longfelem_diff.two70m40m38p6 = internal constant i32 -2147483584, align 4
@longfelem_diff.two70m6 = internal constant i32 2147483584, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @longfelem_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @longfelem_diff(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 2147483456
  store i64 %8, i64* %6, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 0
  store i64 %12, i64* %10, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -2147483648
  store i64 %16, i64* %14, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -2147483584
  store i64 %20, i64* %18, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2147483584
  store i64 %24, i64* %22, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 5
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2147483584
  store i64 %28, i64* %26, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 6
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 2147483584
  store i64 %32, i64* %30, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 7
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 2147483584
  store i64 %36, i64* %34, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64*, i64** %4, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %3, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64*, i64** %4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 4
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 4
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 5
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %3, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 5
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 6
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %3, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 6
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64*, i64** %4, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 7
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %3, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 7
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
