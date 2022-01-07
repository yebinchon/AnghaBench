; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_verify_extra_test.c_test_sm2_id.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_verify_extra_test.c_test_sm2_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"this is an ID\00", align 1
@bad_f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_sm2_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sm2_id() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @bad_f, align 4
  %8 = call i32* @BIO_new_file(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %51

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @PEM_read_bio_X509(i32* %13, i32* null, i32 0, i32* null)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %51

18:                                               ; preds = %12
  %19 = call i32* (...) @ASN1_OCTET_STRING_new()
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %51

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ASN1_OCTET_STRING_set(i32* %24, i8* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ASN1_OCTET_STRING_free(i32* %32)
  br label %51

34:                                               ; preds = %23
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @X509_set0_sm2_id(i32* %35, i32* %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32* @X509_get0_sm2_id(i32* %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @TEST_ptr(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @ASN1_OCTET_STRING_cmp(i32* %44, i32* %45)
  %47 = call i32 @TEST_int_eq(i32 %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %34
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %31, %22, %17, %11
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @X509_free(i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @BIO_free(i32* %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32, i32*) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

declare dso_local i32 @X509_set0_sm2_id(i32*, i32*) #1

declare dso_local i32* @X509_get0_sm2_id(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_cmp(i32*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
