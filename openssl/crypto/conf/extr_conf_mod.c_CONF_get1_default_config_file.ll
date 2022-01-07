; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_CONF_get1_default_config_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_CONF_get1_default_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OPENSSL_CONF\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@OPENSSL_CONF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CONF_get1_default_config_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = call i8* @ossl_safe_getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %5, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @OPENSSL_strdup(i8* %8)
  store i8* %9, i8** %1, align 8
  br label %34

10:                                               ; preds = %0
  %11 = call i32 (...) @X509_get_default_cert_area()
  %12 = call i32 @strlen(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %15 = load i32, i32* @OPENSSL_CONF, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i8* @OPENSSL_malloc(i32 %20)
  store i8* %21, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  store i8* null, i8** %1, align 8
  br label %34

25:                                               ; preds = %10
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 (...) @X509_get_default_cert_area()
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @OPENSSL_CONF, align 4
  %32 = call i32 @BIO_snprintf(i8* %26, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %29, i8* %30, i32 %31)
  %33 = load i8*, i8** %2, align 8
  store i8* %33, i8** %1, align 8
  br label %34

34:                                               ; preds = %25, %24, %7
  %35 = load i8*, i8** %1, align 8
  ret i8* %35
}

declare dso_local i8* @ossl_safe_getenv(i8*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @X509_get_default_cert_area(...) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
