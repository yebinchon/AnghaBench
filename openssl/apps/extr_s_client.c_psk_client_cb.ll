; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_psk_client_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_psk_client_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_debug = common dso_local global i64 0, align 8
@bio_c_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"psk_client_cb\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"NULL received PSK identity hint, continuing anyway\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Received PSK identity hint '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@psk_identity = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"created identity '%s' len=%d\0A\00", align 1
@psk_key = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to buffer\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"psk buffer of callback is too small (%d) for key (%ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"created PSK len=%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Error in PSK client callback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32, i8*, i32)* @psk_client_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_client_cb(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* @c_debug, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @bio_c_out, align 4
  %21 = call i32 (i32, i8*, ...) @BIO_printf(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %6
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @c_debug, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @bio_c_out, align 4
  %30 = call i32 (i32, i8*, ...) @BIO_printf(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  br label %40

32:                                               ; preds = %22
  %33 = load i64, i64* @c_debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @bio_c_out, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i32, i8*, ...) @BIO_printf(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @psk_identity, align 4
  %44 = call i32 @BIO_snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %40
  br label %101

52:                                               ; preds = %47
  %53 = load i64, i64* @c_debug, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @bio_c_out, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* @psk_key, align 4
  %62 = call i8* @OPENSSL_hexstr2buf(i32 %61, i64* %15)
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @bio_err, align 4
  %67 = load i32, i32* @psk_key, align 4
  %68 = call i32 (i32, i8*, ...) @BIO_printf(i32 %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  store i32 0, i32* %7, align 4
  br label %108

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @INT_MAX, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %15, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73, %69
  %79 = load i32, i32* @bio_err, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i64, i64* %15, align 8
  %82 = call i32 (i32, i8*, ...) @BIO_printf(i32 %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %80, i64 %81)
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @OPENSSL_free(i8* %83)
  store i32 0, i32* %7, align 4
  br label %108

85:                                               ; preds = %73
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @memcpy(i8* %86, i8* %87, i64 %88)
  %90 = load i8*, i8** %16, align 8
  %91 = call i32 @OPENSSL_free(i8* %90)
  %92 = load i64, i64* @c_debug, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i32, i32* @bio_c_out, align 4
  %96 = load i64, i64* %15, align 8
  %97 = call i32 (i32, i8*, ...) @BIO_printf(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %94, %85
  %99 = load i64, i64* %15, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  br label %108

101:                                              ; preds = %51
  %102 = load i64, i64* @c_debug, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @bio_err, align 4
  %106 = call i32 (i32, i8*, ...) @BIO_printf(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %98, %78, %65
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i32, i64*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
