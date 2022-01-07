; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_finish_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_finish_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_FINISH_MAC = common dso_local global i32 0, align 4
@SSL_R_OVERFLOW_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_finish_mac(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %21 = load i32, i32* @SSL_F_SSL3_FINISH_MAC, align 4
  %22 = load i32, i32* @SSL_R_OVERFLOW_ERROR, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_6__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %65

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @BIO_write(i32 %28, i8* %29, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %24
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %43 = load i32, i32* @SSL_F_SSL3_FINISH_MAC, align 4
  %44 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_6__* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %65

46:                                               ; preds = %35
  br label %64

47:                                               ; preds = %3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @EVP_DigestUpdate(i32* %51, i8* %52, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %60 = load i32, i32* @SSL_F_SSL3_FINISH_MAC, align 4
  %61 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_6__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %65

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %46
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %57, %40, %18
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @BIO_write(i32, i8*, i32) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
