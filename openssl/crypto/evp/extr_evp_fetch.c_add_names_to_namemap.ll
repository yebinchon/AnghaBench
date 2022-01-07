; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_fetch.c_add_names_to_namemap.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_fetch.c_add_names_to_namemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_LIB_EVP = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@NAME_SEPARATOR = common dso_local global i8 0, align 1
@EVP_R_BAD_ALGORITHM_NAME = common dso_local global i32 0, align 4
@EVP_R_CONFLICTING_ALGORITHM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"\22%.*s\22 has an existing different identity %d (from \22%s\22)\00", align 1
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Got id %d when expecting %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @add_names_to_namemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_names_to_namemap(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @ERR_LIB_EVP, align 4
  %16 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %17 = call i32 @ERR_raise(i32 %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %151

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %92, %18
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* @NAME_SEPARATOR, align 1
  %28 = call i8* @strchr(i8* %26, i8 signext %27)
  store i8* %28, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %8, align 8
  br label %39

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ossl_namemap_name2num_n(i32* %40, i8* %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @NAME_SEPARATOR, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48, %39
  %56 = load i32, i32* @ERR_LIB_EVP, align 4
  %57 = load i32, i32* @EVP_R_BAD_ALGORITHM_NAME, align 4
  %58 = call i32 @ERR_raise(i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %151

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %9, align 4
  br label %81

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* @ERR_LIB_EVP, align 4
  %73 = load i32, i32* @EVP_R_CONFLICTING_ALGORITHM_NAME, align 4
  %74 = load i64, i64* %8, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 (i32, i32, i8*, i32, ...) @ERR_raise_data(i32 %72, i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %76, i32 %77, i8* %78)
  store i32 0, i32* %3, align 4
  br label %151

80:                                               ; preds = %67, %64
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %7, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  br label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i8* [ %88, %85 ], [ %91, %89 ]
  store i8* %93, i8** %6, align 8
  br label %20

94:                                               ; preds = %20
  %95 = load i8*, i8** %5, align 8
  store i8* %95, i8** %6, align 8
  br label %96

96:                                               ; preds = %147, %94
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %149

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* @NAME_SEPARATOR, align 1
  %104 = call i8* @strchr(i8* %102, i8 signext %103)
  store i8* %104, i8** %7, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @strlen(i8* %107)
  store i64 %108, i64* %8, align 8
  br label %115

109:                                              ; preds = %101
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @ossl_namemap_add_n(i32* %116, i32 %117, i8* %118, i64 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %9, align 4
  br label %136

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* @ERR_LIB_EVP, align 4
  %131 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i32, i32, i8*, i32, ...) @ERR_raise_data(i32 %130, i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %133)
  store i32 0, i32* %3, align 4
  br label %151

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %123
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %7, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  br label %147

144:                                              ; preds = %137
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi i8* [ %143, %140 ], [ %146, %144 ]
  store i8* %148, i8** %6, align 8
  br label %96

149:                                              ; preds = %96
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %129, %71, %55, %14
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ossl_namemap_name2num_n(i32*, i8*, i64) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ossl_namemap_add_n(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
