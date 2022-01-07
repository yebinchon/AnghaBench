; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_print_ssl_summary.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_print_ssl_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Protocol version: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Ciphersuite: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Peer certificate: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Hash used: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Signature type: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"No peer certificate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ssl_summary(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @bio_err, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @SSL_get_version(i32* %7)
  %9 = call i32 @BIO_printf(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @print_raw_cipherlist(i32* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @SSL_get_current_cipher(i32* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* @bio_err, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @SSL_CIPHER_get_name(i32* %15)
  %17 = call i32 @BIO_printf(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @bio_err, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @do_print_sigalgs(i32 %18, i32* %19, i32 0)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32* @SSL_get_peer_certificate(i32* %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %1
  %26 = load i32, i32* @bio_err, align 4
  %27 = call i32 @BIO_puts(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @bio_err, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @X509_get_subject_name(i32* %29)
  %31 = call i32 (...) @get_nameopt()
  %32 = call i32 @X509_NAME_print_ex(i32 %28, i32 %30, i32 0, i32 %31)
  %33 = load i32, i32* @bio_err, align 4
  %34 = call i32 @BIO_puts(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @SSL_get_peer_signature_nid(i32* %35, i32* %5)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32, i32* @bio_err, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @OBJ_nid2sn(i32 %40)
  %42 = call i32 @BIO_printf(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32*, i32** %2, align 8
  %45 = call i64 @SSL_get_peer_signature_type_nid(i32* %44, i32* %5)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @bio_err, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @get_sigtype(i32 %49)
  %51 = call i32 @BIO_printf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @bio_err, align 4
  %55 = call i32 @print_verify_detail(i32* %53, i32 %54)
  br label %59

56:                                               ; preds = %1
  %57 = load i32, i32* @bio_err, align 4
  %58 = call i32 @BIO_puts(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @X509_free(i32* %60)
  %62 = load i32, i32* @bio_err, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @ssl_print_point_formats(i32 %62, i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @SSL_is_server(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @bio_err, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @ssl_print_groups(i32 %69, i32* %70, i32 1)
  br label %76

72:                                               ; preds = %59
  %73 = load i32, i32* @bio_err, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @ssl_print_tmp_key(i32 %73, i32* %74)
  br label %76

76:                                               ; preds = %72, %68
  ret void
}

declare dso_local i32 @BIO_printf(i32, i8*, i32) #1

declare dso_local i32 @SSL_get_version(i32*) #1

declare dso_local i32 @print_raw_cipherlist(i32*) #1

declare dso_local i32* @SSL_get_current_cipher(i32*) #1

declare dso_local i32 @SSL_CIPHER_get_name(i32*) #1

declare dso_local i32 @do_print_sigalgs(i32, i32*, i32) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32 @BIO_puts(i32, i8*) #1

declare dso_local i32 @X509_NAME_print_ex(i32, i32, i32, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @get_nameopt(...) #1

declare dso_local i64 @SSL_get_peer_signature_nid(i32*, i32*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i64 @SSL_get_peer_signature_type_nid(i32*, i32*) #1

declare dso_local i32 @get_sigtype(i32) #1

declare dso_local i32 @print_verify_detail(i32*, i32) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @ssl_print_point_formats(i32, i32*) #1

declare dso_local i64 @SSL_is_server(i32*) #1

declare dso_local i32 @ssl_print_groups(i32, i32*, i32) #1

declare dso_local i32 @ssl_print_tmp_key(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
