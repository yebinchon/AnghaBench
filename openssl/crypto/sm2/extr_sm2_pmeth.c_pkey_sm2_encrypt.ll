; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64*, i8*, i64)* @pkey_sm2_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_sm2_encrypt(%struct.TYPE_9__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %13, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32* (...) @EVP_sm3()
  br label %34

30:                                               ; preds = %5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i32* [ %29, %28 ], [ %33, %30 ]
  store i32* %35, i32** %14, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = call i32 @sm2_ciphertext_size(i32* %39, i32* %40, i64 %41, i64* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %55

46:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %55

47:                                               ; preds = %34
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = call i32 @sm2_encrypt(i32* %48, i32* %49, i8* %50, i64 %51, i8* %52, i64* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %46, %45
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32* @EVP_sm3(...) #1

declare dso_local i32 @sm2_ciphertext_size(i32*, i32*, i64, i64*) #1

declare dso_local i32 @sm2_encrypt(i32*, i32*, i8*, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
