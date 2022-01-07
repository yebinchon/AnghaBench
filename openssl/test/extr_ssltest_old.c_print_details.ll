; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_print_details.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_print_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s%s, cipher %s %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", temp key: \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c", digest=%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @print_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_details(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @SSL_get_current_cipher(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @bio_stdout, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @SSL_get_version(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @SSL_CIPHER_get_version(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @SSL_CIPHER_get_name(i32* %18)
  %20 = call i32 (i32, i8*, ...) @BIO_printf(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15, i32 %17, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @SSL_get_peer_certificate(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @X509_get0_pubkey(i32* %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @bio_stdout, align 4
  %32 = call i32 @BIO_puts(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @bio_stdout, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @print_key_details(i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @X509_free(i32* %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @SSL_get_peer_tmp_key(i32* %40, i32** %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @bio_stdout, align 4
  %45 = call i32 @BIO_puts(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @bio_stdout, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @print_key_details(i32 %46, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @EVP_PKEY_free(i32* %49)
  br label %51

51:                                               ; preds = %43, %39
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @SSL_get_peer_signature_nid(i32* %52, i32* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @bio_stdout, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @OBJ_nid2sn(i32 %57)
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @bio_stdout, align 4
  %62 = call i32 (i32, i8*, ...) @BIO_printf(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32* @SSL_get_current_cipher(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @SSL_get_version(i32*) #1

declare dso_local i32 @SSL_CIPHER_get_version(i32*) #1

declare dso_local i32 @SSL_CIPHER_get_name(i32*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32 @print_key_details(i32, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i64 @SSL_get_peer_tmp_key(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i64 @SSL_get_peer_signature_nid(i32*, i32*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
