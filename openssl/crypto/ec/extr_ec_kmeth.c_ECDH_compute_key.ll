; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_kmeth.c_ECDH_compute_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_kmeth.c_ECDH_compute_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8**, i64*, i32*, %struct.TYPE_6__*)* }

@EC_F_ECDH_COMPUTE_KEY = common dso_local global i32 0, align 4
@EC_R_OPERATION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EC_R_INVALID_OUTPUT_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECDH_compute_key(i8* %0, i64 %1, i32* %2, %struct.TYPE_6__* %3, i8* (i8*, i64, i8*, i64*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8* (i8*, i64, i8*, i64*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i8* (i8*, i64, i8*, i64*)* %4, i8* (i8*, i64, i8*, i64*)** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (i8**, i64*, i32*, %struct.TYPE_6__*)*, i32 (i8**, i64*, i32*, %struct.TYPE_6__*)** %17, align 8
  %19 = icmp eq i32 (i8**, i64*, i32*, %struct.TYPE_6__*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @EC_F_ECDH_COMPUTE_KEY, align 4
  %22 = load i32, i32* @EC_R_OPERATION_NOT_SUPPORTED, align 4
  %23 = call i32 @ECerr(i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  br label %69

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @INT_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @EC_F_ECDH_COMPUTE_KEY, align 4
  %30 = load i32, i32* @EC_R_INVALID_OUTPUT_LENGTH, align 4
  %31 = call i32 @ECerr(i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %69

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (i8**, i64*, i32*, %struct.TYPE_6__*)*, i32 (i8**, i64*, i32*, %struct.TYPE_6__*)** %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = call i32 %37(i8** %12, i64* %13, i32* %38, %struct.TYPE_6__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %69

43:                                               ; preds = %32
  %44 = load i8* (i8*, i64, i8*, i64*)*, i8* (i8*, i64, i8*, i64*)** %11, align 8
  %45 = icmp ne i8* (i8*, i64, i8*, i64*)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i8* (i8*, i64, i8*, i64*)*, i8* (i8*, i64, i8*, i64*)** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* %47(i8* %48, i64 %49, i8* %50, i64* %8)
  br label %63

52:                                               ; preds = %43
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %46
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @OPENSSL_clear_free(i8* %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %42, %28, %20
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
