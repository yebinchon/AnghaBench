; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_apply_peer_verification_policy.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_apply_peer_verification_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"verify_peer\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"verify_peer_name\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"peer_fingerprint\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not get peer certificate\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"allow_self_signed\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Could not verify peer: code:%d %s\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"peer_fingerprint match failure\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Expected peer fingerprint must be a string or an array\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"peer_name\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*)* @php_openssl_apply_peer_verification_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_apply_peer_verification_policy(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %15, align 8
  %20 = call i32 @GET_VER_OPT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @zend_is_true(i32* %23)
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  store i32 %30, i32* %12, align 4
  %31 = call i32 @GET_VER_OPT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @zend_is_true(i32* %34)
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %39, %36 ]
  store i32 %41, i32* %13, align 4
  %42 = call i32 @GET_VER_OPT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %8, align 8
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49, %46, %40
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @E_WARNING, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @FAILURE, align 4
  store i32 %58, i32* %4, align 4
  br label %152

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @SSL_get_verify_result(i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %76 [
    i32 128, label %66
    i32 129, label %67
  ]

66:                                               ; preds = %62
  br label %83

67:                                               ; preds = %62
  %68 = call i32 @GET_VER_OPT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @zend_is_true(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %83

75:                                               ; preds = %70, %67
  br label %76

76:                                               ; preds = %62, %75
  %77 = load i32, i32* @E_WARNING, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @X509_verify_cert_error_string(i32 %79)
  %81 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32, i32* @FAILURE, align 4
  store i32 %82, i32* %4, align 4
  br label %152

83:                                               ; preds = %74, %66
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load i32*, i32** %9, align 8
  %89 = call i64 @Z_TYPE_P(i32* %88)
  %90 = load i64, i64* @IS_STRING, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @Z_TYPE_P(i32* %93)
  %95 = load i64, i64* @IS_ARRAY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %92, %87
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @php_openssl_x509_fingerprint_match(i32* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @E_WARNING, align 4
  %104 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @FAILURE, align 4
  store i32 %105, i32* %4, align 4
  br label %152

106:                                              ; preds = %97
  br label %111

107:                                              ; preds = %92
  %108 = load i32, i32* @E_WARNING, align 4
  %109 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32, i32* @FAILURE, align 4
  store i32 %110, i32* %4, align 4
  br label %152

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %150

115:                                              ; preds = %112
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @GET_VER_OPT_STRING(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** %10, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %10, align 8
  br label %129

129:                                              ; preds = %125, %120, %115
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32*, i32** %6, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i64 @php_openssl_matches_san_list(i32* %133, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* @SUCCESS, align 4
  store i32 %138, i32* %4, align 4
  br label %152

139:                                              ; preds = %132
  %140 = load i32*, i32** %6, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i64 @php_openssl_matches_common_name(i32* %140, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @SUCCESS, align 4
  store i32 %145, i32* %4, align 4
  br label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @FAILURE, align 4
  store i32 %147, i32* %4, align 4
  br label %152

148:                                              ; preds = %129
  %149 = load i32, i32* @FAILURE, align 4
  store i32 %149, i32* %4, align 4
  br label %152

150:                                              ; preds = %112
  %151 = load i32, i32* @SUCCESS, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %148, %146, %144, %137, %107, %102, %76, %55
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @GET_VER_OPT(i8*) #1

declare dso_local i32 @zend_is_true(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @SSL_get_verify_result(i32*) #1

declare dso_local i32 @X509_verify_cert_error_string(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_openssl_x509_fingerprint_match(i32*, i32*) #1

declare dso_local i32 @GET_VER_OPT_STRING(i8*, i8*) #1

declare dso_local i64 @php_openssl_matches_san_list(i32*, i8*) #1

declare dso_local i64 @php_openssl_matches_common_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
