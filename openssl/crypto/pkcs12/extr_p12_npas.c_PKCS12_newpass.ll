; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_npas.c_PKCS12_newpass.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_npas.c_PKCS12_newpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS12_F_PKCS12_NEWPASS = common dso_local global i32 0, align 4
@PKCS12_R_INVALID_NULL_PKCS12_POINTER = common dso_local global i32 0, align 4
@PKCS12_R_MAC_VERIFY_FAILURE = common dso_local global i32 0, align 4
@PKCS12_R_PARSE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS12_newpass(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @PKCS12_F_PKCS12_NEWPASS, align 4
  %12 = load i32, i32* @PKCS12_R_INVALID_NULL_PKCS12_POINTER, align 4
  %13 = call i32 @PKCS12err(i32 %11, i32 %12)
  store i32 0, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @PKCS12_verify_mac(i32* %15, i8* %16, i32 -1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @PKCS12_F_PKCS12_NEWPASS, align 4
  %21 = load i32, i32* @PKCS12_R_MAC_VERIFY_FAILURE, align 4
  %22 = call i32 @PKCS12err(i32 %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %34

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @newpass_p12(i32* %24, i8* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @PKCS12_F_PKCS12_NEWPASS, align 4
  %31 = load i32, i32* @PKCS12_R_PARSE_ERROR, align 4
  %32 = call i32 @PKCS12err(i32 %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %29, %19, %10
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @PKCS12_verify_mac(i32*, i8*, i32) #1

declare dso_local i32 @newpass_p12(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
