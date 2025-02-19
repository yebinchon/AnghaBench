; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_set_cert_stuff.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_set_cert_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to get certificate from '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to get private key from '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Private key does not match the certificate public key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cert_stuff(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %14 = call i64 @SSL_CTX_use_certificate_file(i32* %11, i8* %12, i32 %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @bio_err, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i32, i8*, ...) @BIO_printf(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @bio_err, align 4
  %21 = call i32 @ERR_print_errors(i32 %20)
  store i32 0, i32* %4, align 4
  br label %48

22:                                               ; preds = %10
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %31 = call i64 @SSL_CTX_use_PrivateKey_file(i32* %28, i8* %29, i32 %30)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @bio_err, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i32, i8*, ...) @BIO_printf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @ERR_print_errors(i32 %37)
  store i32 0, i32* %4, align 4
  br label %48

39:                                               ; preds = %27
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @SSL_CTX_check_private_key(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @bio_err, align 4
  %45 = call i32 (i32, i8*, ...) @BIO_printf(i32 %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %3
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %43, %33, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @SSL_CTX_use_certificate_file(i32*, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i64 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
