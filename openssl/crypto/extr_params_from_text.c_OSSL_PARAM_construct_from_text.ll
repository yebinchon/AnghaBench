; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_params_from_text.c_OSSL_PARAM_construct_from_text.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_params_from_text.c_OSSL_PARAM_construct_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_PARAM_construct_from_text(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %7
  store i32 0, i32* %8, align 4
  br label %53

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = call i32 @prepare_from_text(i32* %27, i8* %28, i8* %29, i64 %30, i32** %16, i32* %17, i64* %31, i32** %18)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %53

35:                                               ; preds = %26
  %36 = load i8*, i8** %14, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %53

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i64*, i64** %15, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = call i32 @construct_from_text(i32* %40, i32* %41, i8* %42, i64 %43, i32 %44, i8* %45, i64 %47, i32* %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32*, i32** %18, align 8
  %51 = call i32 @BN_free(i32* %50)
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %39, %38, %34, %25
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @prepare_from_text(i32*, i8*, i8*, i64, i32**, i32*, i64*, i32**) #1

declare dso_local i32 @construct_from_text(i32*, i32*, i8*, i64, i32, i8*, i64, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
