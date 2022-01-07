; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_enginetest.c_get_test_pkey.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_enginetest.c_get_test_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_test_pkey.n = internal global [66 x i8] c"\00\AA6\AB\CE\88\AC\FD\FFUR<\7F\C4R?\90\EF\A0\0D\F3wJ%\9F.b\B4\C5\D9\9C\B5\AD\B3\00\A0(^S\01\93\0E\0Cp\FBhv\93\9C\E6\16\CEbJ\11\E0\08m4\1E\BC\AC\A0\A1\F5\00", align 16
@get_test_pkey.e = internal global [2 x i8] c"\11\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_test_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_test_pkey() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @RSA_new()
  store i32* %4, i32** %2, align 8
  %5 = call i32* (...) @EVP_PKEY_new()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %0
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @EVP_PKEY_assign_RSA(i32* %12, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11, %8, %0
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @RSA_free(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @EVP_PKEY_free(i32* %19)
  store i32* null, i32** %1, align 8
  br label %32

21:                                               ; preds = %11
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @BN_bin2bn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @get_test_pkey.n, i64 0, i64 0), i32 65, i32* null)
  %24 = call i32 @BN_bin2bn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_test_pkey.e, i64 0, i64 0), i32 1, i32* null)
  %25 = call i32 @RSA_set0_key(i32* %22, i32 %23, i32 %24, i32* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @EVP_PKEY_free(i32* %28)
  store i32* null, i32** %1, align 8
  br label %32

30:                                               ; preds = %21
  %31 = load i32*, i32** %3, align 8
  store i32* %31, i32** %1, align 8
  br label %32

32:                                               ; preds = %30, %27, %16
  %33 = load i32*, i32** %1, align 8
  ret i32* %33
}

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_assign_RSA(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @RSA_set0_key(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
