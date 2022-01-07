; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_a2i_IPADDRESS_NC.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_a2i_IPADDRESS_NC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @a2i_IPADDRESS_NC(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 47)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %74

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @OPENSSL_strdup(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %74

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  store i8 0, i8* %29, align 1
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @a2i_ipadd(i8* %31, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  br label %69

37:                                               ; preds = %21
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @a2i_ipadd(i8* %41, i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @OPENSSL_free(i8* %44)
  store i8* null, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %37
  br label %69

53:                                               ; preds = %48
  %54 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %69

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @ASN1_OCTET_STRING_set(i32* %59, i8* %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %69

67:                                               ; preds = %58
  %68 = load i32*, i32** %4, align 8
  store i32* %68, i32** %2, align 8
  br label %74

69:                                               ; preds = %66, %57, %52, %36
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @OPENSSL_free(i8* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @ASN1_OCTET_STRING_free(i32* %72)
  store i32* null, i32** %2, align 8
  br label %74

74:                                               ; preds = %69, %67, %20, %14
  %75 = load i32*, i32** %2, align 8
  ret i32* %75
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @a2i_ipadd(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
