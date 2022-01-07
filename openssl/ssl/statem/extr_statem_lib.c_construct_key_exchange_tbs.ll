; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_construct_key_exchange_tbs.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_construct_key_exchange_tbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }

@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_CONSTRUCT_KEY_EXCHANGE_TBS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @construct_key_exchange_tbs(%struct.TYPE_6__* %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %13 = mul nsw i32 2, %12
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @OPENSSL_malloc(i64 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %24 = load i32, i32* @SSL_F_CONSTRUCT_KEY_EXCHANGE_TBS, align 4
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %26 = call i32 @SSLfatal(%struct.TYPE_6__* %22, i32 %23, i32 %24, i32 %25)
  store i64 0, i64* %5, align 8
  br label %58

27:                                               ; preds = %4
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @memcpy(i8* %28, i8* %32, i64 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 @memcpy(i8* %39, i8* %43, i64 %45)
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i8*, i8** %11, align 8
  %56 = load i8**, i8*** %7, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %27, %21
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
