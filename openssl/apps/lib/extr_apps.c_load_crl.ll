; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_crl.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_HTTP = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_PEM = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bad input format specified for input crl\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unable to load CRL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_crl(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FORMAT_HTTP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @load_cert_crl_http(i8* %12, i32* null, i32** %6)
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %3, align 8
  br label %53

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @bio_open_default(i8* %16, i8 signext 114, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %49

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FORMAT_ASN1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @d2i_X509_CRL_bio(i32* %27, i32* null)
  store i32* %28, i32** %6, align 8
  br label %40

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FORMAT_PEM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @PEM_read_bio_X509_CRL(i32* %34, i32* null, i32* null, i32* null)
  store i32* %35, i32** %6, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @BIO_printf(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %49

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32*, i32** %6, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @bio_err, align 4
  %45 = call i32 @BIO_printf(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @bio_err, align 4
  %47 = call i32 @ERR_print_errors(i32 %46)
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %43, %36, %21
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @BIO_free(i32* %50)
  %52 = load i32*, i32** %6, align 8
  store i32* %52, i32** %3, align 8
  br label %53

53:                                               ; preds = %49, %11
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

declare dso_local i32 @load_cert_crl_http(i8*, i32*, i32**) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_X509_CRL_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_X509_CRL(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
