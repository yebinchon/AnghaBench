; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_verify_alpn.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_verify_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alpn_selected = common dso_local global i32* null, align 8
@bio_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ALPN selected protocols differ!\0A\00", align 1
@alpn_expected = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"ALPN unexpectedly negotiated\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ALPN selected protocols not equal to expected protocol: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ALPN results: client: '\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"', server: '\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"ALPN configured: client: '%s', server: '\00", align 1
@alpn_client = common dso_local global i8* null, align 8
@s_ctx2 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"%s'\0A\00", align 1
@alpn_server2 = common dso_local global i8* null, align 8
@alpn_server = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @verify_alpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_alpn(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @SSL_get0_alpn_selected(i32* %10, i8** %6, i32* %8)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @SSL_get0_alpn_selected(i32* %12, i8** %7, i32* %9)
  %14 = load i32*, i32** @alpn_selected, align 8
  %15 = call i32 @OPENSSL_free(i32* %14)
  store i32* null, i32** @alpn_selected, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @bio_stdout, align 4
  %21 = call i32 (i32, i8*, ...) @BIO_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %62

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @memcmp(i8* %26, i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @bio_stdout, align 4
  %33 = call i32 (i32, i8*, ...) @BIO_printf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %62

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %8, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** @alpn_expected, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @bio_stdout, align 4
  %42 = call i32 (i32, i8*, ...) @BIO_printf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %62

43:                                               ; preds = %37, %34
  %44 = load i8*, i8** @alpn_expected, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** @alpn_expected, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** @alpn_expected, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @memcmp(i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %46
  %58 = load i32, i32* @bio_stdout, align 4
  %59 = load i8*, i8** @alpn_expected, align 8
  %60 = call i32 (i32, i8*, ...) @BIO_printf(i32 %58, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %62

61:                                               ; preds = %51, %43
  store i32 0, i32* %3, align 4
  br label %93

62:                                               ; preds = %57, %40, %31, %19
  %63 = load i32, i32* @bio_stdout, align 4
  %64 = call i32 (i32, i8*, ...) @BIO_printf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @bio_stdout, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @BIO_write(i32 %65, i8* %66, i32 %67)
  %69 = load i32, i32* @bio_stdout, align 4
  %70 = call i32 (i32, i8*, ...) @BIO_printf(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @bio_stdout, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @BIO_write(i32 %71, i8* %72, i32 %73)
  %75 = load i32, i32* @bio_stdout, align 4
  %76 = call i32 (i32, i8*, ...) @BIO_printf(i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @bio_stdout, align 4
  %78 = load i8*, i8** @alpn_client, align 8
  %79 = call i32 (i32, i8*, ...) @BIO_printf(i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @SSL_get_SSL_CTX(i32* %80)
  %82 = load i64, i64* @s_ctx2, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %62
  %85 = load i32, i32* @bio_stdout, align 4
  %86 = load i8*, i8** @alpn_server2, align 8
  %87 = call i32 (i32, i8*, ...) @BIO_printf(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  br label %92

88:                                               ; preds = %62
  %89 = load i32, i32* @bio_stdout, align 4
  %90 = load i8*, i8** @alpn_server, align 8
  %91 = call i32 (i32, i8*, ...) @BIO_printf(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %84
  store i32 -1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @SSL_get0_alpn_selected(i32*, i8**, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BIO_write(i32, i8*, i32) #1

declare dso_local i64 @SSL_get_SSL_CTX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
