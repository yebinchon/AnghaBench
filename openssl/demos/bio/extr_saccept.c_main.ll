; ModuleID = '/home/carl/AnghaBench/openssl/demos/bio/extr_saccept.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/bio/extr_saccept.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"*:4433\00", align 1
@CERT_FILE = common dso_local global i32 0, align 4
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = call i32 (...) @TLS_server_method()
  %24 = call i32* @SSL_CTX_new(i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @CERT_FILE, align 4
  %27 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %89

30:                                               ; preds = %22
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @CERT_FILE, align 4
  %33 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %34 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %89

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @SSL_CTX_check_private_key(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %89

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @BIO_new_ssl(i32* %43, i32 0)
  store i32* %44, i32** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32* @BIO_new_accept(i8* %45)
  store i32* %46, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %89

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @BIO_set_accept_bios(i32* %50, i32* %51)
  %53 = call i32 (...) @sigsetup()
  br label %54

54:                                               ; preds = %70, %49
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @BIO_do_accept(i32* %55)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %89

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* @done, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %67 = call i32 @BIO_read(i32* %65, i8* %66, i32 512)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @BIO_pop(i32* %72)
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @BIO_free_all(i32* %74)
  br label %54

76:                                               ; preds = %64
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %89

80:                                               ; preds = %76
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fwrite(i8* %81, i32 1, i32 %82, i32 %83)
  %85 = load i32, i32* @stdout, align 4
  %86 = call i32 @fflush(i32 %85)
  br label %60

87:                                               ; preds = %60
  %88 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %79, %58, %48, %41, %36, %29
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @EXIT_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @ERR_print_errors_fp(i32 %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @BIO_free(i32* %97)
  %99 = load i32, i32* %12, align 4
  ret i32 %99
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i32) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i32, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32*) #1

declare dso_local i32* @BIO_new_ssl(i32*, i32) #1

declare dso_local i32* @BIO_new_accept(i8*) #1

declare dso_local i32 @BIO_set_accept_bios(i32*, i32*) #1

declare dso_local i32 @sigsetup(...) #1

declare dso_local i64 @BIO_do_accept(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @BIO_pop(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
