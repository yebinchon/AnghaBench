; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_verify_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_verify_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"depth=%d %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"depth=%d error=%d %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Error string: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @verify_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_callback(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @X509_STORE_CTX_get_current_cert(i32* %8)
  %10 = call i32 @X509_get_subject_name(i32 %9)
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %12 = call i8* @X509_NAME_oneline(i32 %10, i8* %11, i32 256)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @X509_STORE_CTX_get_error_depth(i32* %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %22 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  br label %31

23:                                               ; preds = %15
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @X509_STORE_CTX_get_error_depth(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @X509_STORE_CTX_get_error(i32* %27)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @X509_STORE_CTX_get_error(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %39 [
    i32 129, label %44
    i32 130, label %44
    i32 128, label %44
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @X509_verify_cert_error_string(i32 %41)
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %45

44:                                               ; preds = %35, %35, %35
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i8* @X509_NAME_oneline(i32, i8*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32) #1

declare dso_local i32 @X509_STORE_CTX_get_current_cert(i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i8* @X509_verify_cert_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
