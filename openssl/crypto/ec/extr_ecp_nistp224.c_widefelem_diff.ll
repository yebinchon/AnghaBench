; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_widefelem_diff.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_widefelem_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@widefelem_diff.two120 = internal constant i32 -2147483648, align 4
@widefelem_diff.two120m64 = internal constant i32 0, align 4
@widefelem_diff.two120m104m64 = internal constant i32 -2147483648, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @widefelem_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @widefelem_diff(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -2147483648
  store i64 %8, i64* %6, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 0
  store i64 %12, i64* %10, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 0
  store i64 %16, i64* %14, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -2147483648
  store i64 %20, i64* %18, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -2147483648
  store i64 %24, i64* %22, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 5
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 0
  store i64 %28, i64* %26, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 6
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 0
  store i64 %32, i64* %30, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %3, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 4
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 5
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i64*, i64** %4, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 6
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %3, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 6
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
