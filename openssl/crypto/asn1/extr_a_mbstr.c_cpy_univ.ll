; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_mbstr.c_cpy_univ.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_mbstr.c_cpy_univ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @cpy_univ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpy_univ(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i8**
  store i8** %8, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i64, i64* %3, align 8
  %12 = lshr i64 %11, 24
  %13 = and i64 %12, 255
  %14 = trunc i64 %13 to i8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  store i8 %14, i8* %15, align 1
  %17 = load i64, i64* %3, align 8
  %18 = lshr i64 %17, 16
  %19 = and i64 %18, 255
  %20 = trunc i64 %19 to i8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i64, i64* %3, align 8
  %24 = lshr i64 %23, 8
  %25 = and i64 %24, 255
  %26 = trunc i64 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 %26, i8* %27, align 1
  %29 = load i64, i64* %3, align 8
  %30 = and i64 %29, 255
  %31 = trunc i64 %30 to i8
  %32 = load i8*, i8** %6, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %33, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
