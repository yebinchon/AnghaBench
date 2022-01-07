; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_lib.c_OCSP_parse_url.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_lib.c_OCSP_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@OCSP_F_OCSP_PARSE_URL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@OCSP_R_ERROR_PARSING_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_parse_url(i8* %0, i8** %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8**, i8*** %8, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8**, i8*** %9, align 8
  store i8* null, i8** %17, align 8
  %18 = load i8**, i8*** %10, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @OPENSSL_strdup(i8* %19)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %126

24:                                               ; preds = %5
  %25 = load i8*, i8** %13, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 58)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %130

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %12, align 8
  store i8 0, i8* %31, align 1
  %33 = load i8*, i8** %13, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  store i32 0, i32* %37, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %46

38:                                               ; preds = %30
  %39 = load i8*, i8** %13, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %11, align 8
  store i32 1, i32* %43, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %45

44:                                               ; preds = %38
  br label %130

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 47
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  br label %130

59:                                               ; preds = %52
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  store i8* %62, i8** %14, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 47)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = call i8* @OPENSSL_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i8**, i8*** %10, align 8
  store i8* %68, i8** %69, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load i8*, i8** %12, align 8
  %72 = call i8* @OPENSSL_strdup(i8* %71)
  %73 = load i8**, i8*** %10, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** %12, align 8
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i8**, i8*** %10, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %126

80:                                               ; preds = %75
  %81 = load i8*, i8** %14, align 8
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 91
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 93)
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %130

95:                                               ; preds = %87
  %96 = load i8*, i8** %12, align 8
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %12, align 8
  br label %99

99:                                               ; preds = %95, %80
  %100 = load i8*, i8** %12, align 8
  %101 = call i8* @strchr(i8* %100, i8 signext 58)
  store i8* %101, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %12, align 8
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %15, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i8*, i8** %15, align 8
  %109 = call i8* @OPENSSL_strdup(i8* %108)
  %110 = load i8**, i8*** %9, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i8**, i8*** %9, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %126

115:                                              ; preds = %107
  %116 = load i8*, i8** %14, align 8
  %117 = call i8* @OPENSSL_strdup(i8* %116)
  %118 = load i8**, i8*** %8, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i8**, i8*** %8, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %126

123:                                              ; preds = %115
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 @OPENSSL_free(i8* %124)
  store i32 1, i32* %6, align 4
  br label %149

126:                                              ; preds = %122, %114, %79, %23
  %127 = load i32, i32* @OCSP_F_OCSP_PARSE_URL, align 4
  %128 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %129 = call i32 @OCSPerr(i32 %127, i32 %128)
  br label %134

130:                                              ; preds = %94, %58, %44, %29
  %131 = load i32, i32* @OCSP_F_OCSP_PARSE_URL, align 4
  %132 = load i32, i32* @OCSP_R_ERROR_PARSING_URL, align 4
  %133 = call i32 @OCSPerr(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @OPENSSL_free(i8* %135)
  %137 = load i8**, i8*** %10, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @OPENSSL_free(i8* %138)
  %140 = load i8**, i8*** %10, align 8
  store i8* null, i8** %140, align 8
  %141 = load i8**, i8*** %9, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @OPENSSL_free(i8* %142)
  %144 = load i8**, i8*** %9, align 8
  store i8* null, i8** %144, align 8
  %145 = load i8**, i8*** %8, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @OPENSSL_free(i8* %146)
  %148 = load i8**, i8*** %8, align 8
  store i8* null, i8** %148, align 8
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %134, %123
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OCSPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
