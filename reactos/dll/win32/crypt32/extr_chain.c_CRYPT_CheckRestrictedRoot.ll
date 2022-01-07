; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_CheckRestrictedRoot.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_CheckRestrictedRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@rootW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @CRYPT_CheckRestrictedRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_CheckRestrictedRoot(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* @TRUE, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = load i32, i32* @rootW, align 4
  %12 = call i64 @CertOpenSystemStoreW(i32 0, i32 %11)
  store i64 %12, i64* %4, align 8
  store i32* null, i32** %5, align 8
  br label %13

13:                                               ; preds = %37, %10
  %14 = load i64, i64* %2, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @CertEnumCertificatesInStore(i64 %14, i32* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @CRYPT_FindCertInStore(i64 %20, i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %3, align 8
  br label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @CertFreeCertificateContext(i32* %27)
  br label %29

29:                                               ; preds = %26, %24
  br label %30

30:                                               ; preds = %29, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ false, %31 ], [ %36, %34 ]
  br i1 %38, label %13, label %39

39:                                               ; preds = %37
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @CertFreeCertificateContext(i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @CertCloseStore(i64 %46, i32 0)
  br label %48

48:                                               ; preds = %45, %1
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @CertOpenSystemStoreW(i32, i32) #1

declare dso_local i32* @CertEnumCertificatesInStore(i64, i32*) #1

declare dso_local i32* @CRYPT_FindCertInStore(i64, i32*) #1

declare dso_local i32 @CertFreeCertificateContext(i32*) #1

declare dso_local i32 @CertCloseStore(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
