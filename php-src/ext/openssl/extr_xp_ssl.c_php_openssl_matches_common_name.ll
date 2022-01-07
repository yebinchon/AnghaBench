; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_matches_common_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_matches_common_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_commonName = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to locate peer certificate CN\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Peer certificate CN=`%.*s' is malformed\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Peer certificate CN=`%.*s' did not match expected CN=`%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @php_openssl_matches_common_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_matches_common_name(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @X509_get_subject_name(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @NID_commonName, align 4
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %14 = call i32 @X509_NAME_get_text_by_NID(i32* %11, i32 %12, i8* %13, i32 1024)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @E_WARNING, align 4
  %19 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %24 = call i64 @strlen(i8* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @E_WARNING, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %30 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29)
  br label %44

31:                                               ; preds = %20
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %34 = call i64 @php_openssl_matches_wildcard_name(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @E_WARNING, align 4
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %36
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_get_text_by_NID(i32*, i32, i8*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @php_openssl_matches_wildcard_name(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
