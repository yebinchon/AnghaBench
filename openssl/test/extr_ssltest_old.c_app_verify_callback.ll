; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_app_verify_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_app_verify_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.app_verify_arg = type { i8*, i64 }

@.str = private unnamed_addr constant [40 x i8] c"In app_verify_callback, allowing cert. \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Arg is: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Finished printing do we have a context? 0x%p a cert? 0x%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cert depth=%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @app_verify_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_verify_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.app_verify_arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.app_verify_arg*
  store %struct.app_verify_arg* %12, %struct.app_verify_arg** %7, align 8
  %13 = load %struct.app_verify_arg*, %struct.app_verify_arg** %7, align 8
  %14 = getelementptr inbounds %struct.app_verify_arg, %struct.app_verify_arg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @X509_STORE_CTX_get0_cert(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.app_verify_arg*, %struct.app_verify_arg** %7, align 8
  %22 = getelementptr inbounds %struct.app_verify_arg, %struct.app_verify_arg* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %28)
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @X509_get_subject_name(i32* %33)
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %36 = call i8* @X509_NAME_oneline(i32 %34, i8* %35, i32 256)
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %32, %17
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @X509_STORE_CTX_get_error_depth(i32* %41)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %40, %37
  store i32 1, i32* %3, align 4
  br label %50

46:                                               ; preds = %2
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @X509_verify_cert(i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @X509_STORE_CTX_get0_cert(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @X509_NAME_oneline(i32, i8*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_error_depth(i32*) #1

declare dso_local i32 @X509_verify_cert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
