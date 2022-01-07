; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_key.c_PKCS12_key_gen_asc.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_key.c_PKCS12_key_gen_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS12_F_PKCS12_KEY_GEN_ASC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS12_key_gen_asc(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  br label %36

26:                                               ; preds = %9
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @OPENSSL_asc2uni(i8* %27, i32 %28, i8** %21, i32* %22)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @PKCS12_F_PKCS12_KEY_GEN_ASC, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @PKCS12err(i32 %32, i32 %33)
  store i32 0, i32* %10, align 4
  br label %55

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %21, align 8
  %38 = load i32, i32* %22, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i8*, i8** %18, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @PKCS12_key_gen_uni(i8* %37, i32 %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, i8* %44, i32* %45)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %55

50:                                               ; preds = %36
  %51 = load i8*, i8** %21, align 8
  %52 = load i32, i32* %22, align 4
  %53 = call i32 @OPENSSL_clear_free(i8* %51, i32 %52)
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %49, %31
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @OPENSSL_asc2uni(i8*, i32, i8**, i32*) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @PKCS12_key_gen_uni(i8*, i32, i8*, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
