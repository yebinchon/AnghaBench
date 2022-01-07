; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_verify.c_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_verify.c_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%serror %d at %d depth lookup: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[CRL path] \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@X509_V_OK = common dso_local global i32 0, align 4
@v_verbose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @X509_STORE_CTX_get_error(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @X509_STORE_CTX_get_current_cert(i32* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* @bio_err, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @X509_get_subject_name(i32* %19)
  %21 = call i32 (...) @get_nameopt()
  %22 = call i32 @X509_NAME_print_ex(i32 %18, i32 %20, i32 0, i32 %21)
  %23 = load i32, i32* @bio_err, align 4
  %24 = call i32 (i32, i8*, ...) @BIO_printf(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @X509_STORE_CTX_get0_parent_ctx(i32* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @X509_STORE_CTX_get_error_depth(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @X509_verify_cert_error_string(i32 %35)
  %37 = call i32 (i32, i8*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32, i32 %34, i32 %36)
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %43 [
    i32 130, label %39
    i32 137, label %42
    i32 134, label %42
    i32 133, label %42
    i32 132, label %42
    i32 129, label %42
    i32 131, label %42
    i32 136, label %42
    i32 135, label %42
    i32 128, label %42
  ]

39:                                               ; preds = %25
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @policies_print(i32* %40)
  br label %42

42:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %39
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @X509_V_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @policies_print(i32* %53)
  br label %55

55:                                               ; preds = %52, %49, %45
  %56 = load i32, i32* @v_verbose, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 (...) @ERR_clear_error()
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i32* @X509_STORE_CTX_get_current_cert(i32*) #1

declare dso_local i32 @X509_NAME_print_ex(i32, i32, i32, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @get_nameopt(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i64 @X509_STORE_CTX_get0_parent_ctx(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32 @X509_verify_cert_error_string(i32) #1

declare dso_local i32 @policies_print(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
