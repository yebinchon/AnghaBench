; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hmac.c_drbg_hmac_update.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hmac.c_drbg_hmac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8*, i64, i8*, i64)* @drbg_hmac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbg_hmac_update(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @do_hmac(i32* %20, i32 0, i8* %21, i64 %22, i8* %23, i64 %24, i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %49

30:                                               ; preds = %7
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* %15, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  br label %49

40:                                               ; preds = %36, %33, %30
  %41 = load i32*, i32** %16, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = call i32 @do_hmac(i32* %41, i32 1, i8* %42, i64 %43, i8* %44, i64 %45, i8* %46, i64 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %40, %39, %29
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @do_hmac(i32*, i32, i8*, i64, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
