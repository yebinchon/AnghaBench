; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_tls1_prf_alg.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_tls1_prf_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i8*, i64, i8*, i64)* @tls1_prf_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_prf_alg(i32* %0, i32* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %91

24:                                               ; preds = %8
  %25 = load i64, i64* %13, align 8
  %26 = add i64 %25, 1
  %27 = udiv i64 %26, 2
  store i64 %27, i64* %20, align 8
  %28 = load i64, i64* %20, align 8
  store i64 %28, i64* %21, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i64, i64* %20, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @tls1_prf_P_hash(i32* %29, i8* %30, i64 %31, i8* %32, i64 %33, i8* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %103

39:                                               ; preds = %24
  %40 = load i64, i64* %17, align 8
  %41 = call i8* @OPENSSL_malloc(i64 %40)
  store i8* %41, i8** %19, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @ERR_LIB_PROV, align 4
  %45 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %46 = call i32 @ERR_raise(i32 %44, i32 %45)
  store i32 0, i32* %9, align 4
  br label %103

47:                                               ; preds = %39
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %21, align 8
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i64, i64* %21, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = load i64, i64* %17, align 8
  %60 = call i32 @tls1_prf_P_hash(i32* %48, i8* %54, i64 %55, i8* %56, i64 %57, i8* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = load i8*, i8** %19, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @OPENSSL_clear_free(i8* %63, i64 %64)
  store i32 0, i32* %9, align 4
  br label %103

66:                                               ; preds = %47
  store i64 0, i64* %18, align 8
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %17, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i8*, i8** %19, align 8
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8*, i8** %16, align 8
  %78 = load i64, i64* %18, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = xor i32 %81, %76
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  br label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %18, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %18, align 8
  br label %67

87:                                               ; preds = %67
  %88 = load i8*, i8** %19, align 8
  %89 = load i64, i64* %17, align 8
  %90 = call i32 @OPENSSL_clear_free(i8* %88, i64 %89)
  store i32 1, i32* %9, align 4
  br label %103

91:                                               ; preds = %8
  %92 = load i32*, i32** %10, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i64, i64* %17, align 8
  %99 = call i32 @tls1_prf_P_hash(i32* %92, i8* %93, i64 %94, i8* %95, i64 %96, i8* %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %103

102:                                              ; preds = %91
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %101, %87, %62, %43, %38
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @tls1_prf_P_hash(i32*, i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
