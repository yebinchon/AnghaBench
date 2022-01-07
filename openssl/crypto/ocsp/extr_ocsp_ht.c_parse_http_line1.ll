; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ht.c_parse_http_line1.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ht.c_parse_http_line1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCSP_F_PARSE_HTTP_LINE1 = common dso_local global i32 0, align 4
@OCSP_R_SERVER_RESPONSE_PARSE_ERROR = common dso_local global i32 0, align 4
@OCSP_R_SERVER_RESPONSE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Code=\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c",Reason=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_http_line1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_http_line1(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @ossl_isspace(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %9

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %33 = load i32, i32* @OCSP_R_SERVER_RESPONSE_PARSE_ERROR, align 4
  %34 = call i32 @OCSPerr(i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %155

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ossl_isspace(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %36

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %58 = load i32, i32* @OCSP_R_SERVER_RESPONSE_PARSE_ERROR, align 4
  %59 = call i32 @OCSPerr(i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %155

60:                                               ; preds = %51
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %76, %60
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @ossl_isspace(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %67, %62
  %74 = phi i1 [ false, %62 ], [ %72, %67 ]
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  br label %62

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %86 = load i32, i32* @OCSP_R_SERVER_RESPONSE_PARSE_ERROR, align 4
  %87 = call i32 @OCSPerr(i32 %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %155

88:                                               ; preds = %79
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  store i8 0, i8* %89, align 1
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strtoul(i8* %91, i8** %7, i32 10)
  store i32 %92, i32* %4, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %155

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %110, %97
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @ossl_isspace(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %103, %98
  %109 = phi i1 [ false, %98 ], [ %107, %103 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  br label %98

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = getelementptr inbounds i8, i8* %122, i64 -1
  store i8* %123, i8** %7, align 8
  br label %124

124:                                              ; preds = %131, %117
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @ossl_isspace(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %7, align 8
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %129
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %133, i8** %7, align 8
  br label %124

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %113
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 200
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i32, i32* @OCSP_F_PARSE_HTTP_LINE1, align 4
  %140 = load i32, i32* @OCSP_R_SERVER_RESPONSE_ERROR, align 4
  %141 = call i32 @OCSPerr(i32 %139, i32 %140)
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %147)
  br label %153

149:                                              ; preds = %138
  %150 = load i8*, i8** %5, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %149, %146
  store i32 0, i32* %2, align 4
  br label %155

154:                                              ; preds = %135
  store i32 1, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %153, %96, %84, %56, %31
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @ossl_isspace(i8 signext) #1

declare dso_local i32 @OCSPerr(i32, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
