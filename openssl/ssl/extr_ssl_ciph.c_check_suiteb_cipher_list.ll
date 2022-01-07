; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_ciph.c_check_suiteb_cipher_list.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_ciph.c_check_suiteb_cipher_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"SUITEB128ONLY\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SUITEB128C2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SUITEB128\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SUITEB192\00", align 1
@SSL_ENC_FLAG_TLS1_2_CIPHERS = common dso_local global i32 0, align 4
@SSL_F_CHECK_SUITEB_CIPHER_LIST = common dso_local global i32 0, align 4
@SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES128-GCM-SHA256\00", align 1
@SSL_R_ECDH_REQUIRED_FOR_SUITEB_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i8**)* @check_suiteb_cipher_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_suiteb_cipher_list(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8**, i8*** %7, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 129, i32* %8, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  store i32 130, i32* %8, align 4
  br label %35

21:                                               ; preds = %15
  %22 = load i8**, i8*** %7, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 130, i32* %8, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 128, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %27
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, -131
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %54

49:                                               ; preds = %36
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 130
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %86

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SSL_ENC_FLAG_TLS1_2_CIPHERS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @SSL_F_CHECK_SUITEB_CIPHER_LIST, align 4
  %69 = load i32, i32* @SSL_R_AT_LEAST_TLS_1_2_NEEDED_IN_SUITEB_MODE, align 4
  %70 = call i32 @SSLerr(i32 %68, i32 %69)
  store i32 0, i32* %4, align 4
  br label %86

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %85 [
    i32 130, label %73
    i32 129, label %81
    i32 128, label %83
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %77, align 8
  br label %80

78:                                               ; preds = %73
  %79 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8** %79, align 8
  br label %80

80:                                               ; preds = %78, %76
  br label %85

81:                                               ; preds = %71
  %82 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8** %82, align 8
  br label %85

83:                                               ; preds = %71
  %84 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %84, align 8
  br label %85

85:                                               ; preds = %71, %83, %81, %80
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %67, %57
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
