; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_cn2dnsid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_cn2dnsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_V_ERR_OUT_OF_MEM = common dso_local global i32 0, align 4
@X509_V_ERR_UNSUPPORTED_NAME_SYNTAX = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*)* @cn2dnsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn2dnsid(i32* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8**, i8*** %6, align 8
  store i8* null, i8** %13, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ASN1_STRING_to_UTF8(i8** %9, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @X509_V_ERR_OUT_OF_MEM, align 4
  store i32 %19, i32* %4, align 4
  br label %151

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %24, %21
  %34 = phi i1 [ false, %21 ], [ %32, %24 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %8, align 4
  br label %21

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @OPENSSL_free(i8* %45)
  %47 = load i32, i32* @X509_V_ERR_UNSUPPORTED_NAME_SYNTAX, align 4
  store i32 %47, i32* %4, align 4
  br label %151

48:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %134, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %12, align 1
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sge i32 %60, 97
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i8, i8* %12, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %64, 122
  br i1 %65, label %86, label %66

66:                                               ; preds = %62, %53
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sge i32 %68, 65
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sle i32 %72, 90
  br i1 %73, label %86, label %74

74:                                               ; preds = %70, %66
  %75 = load i8, i8* %12, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sge i32 %76, 48
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sle i32 %80, 57
  br i1 %81, label %86, label %82

82:                                               ; preds = %78, %74
  %83 = load i8, i8* %12, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 95
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78, %70, %62
  br label %134

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %133

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %133

95:                                               ; preds = %90
  %96 = load i8, i8* %12, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 45
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %134

100:                                              ; preds = %95
  %101 = load i8, i8* %12, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %104, label %132

104:                                              ; preds = %100
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 46
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 45
  br i1 %121, label %122, label %132

122:                                              ; preds = %113
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 45
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 1, i32* %11, align 4
  br label %134

132:                                              ; preds = %122, %113, %104, %100
  br label %133

133:                                              ; preds = %132, %90, %87
  store i32 0, i32* %11, align 4
  br label %137

134:                                              ; preds = %131, %99, %86
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %49

137:                                              ; preds = %133, %49
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i8*, i8** %9, align 8
  %142 = load i8**, i8*** %6, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64*, i64** %7, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* @X509_V_OK, align 4
  store i32 %146, i32* %4, align 4
  br label %151

147:                                              ; preds = %137
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @OPENSSL_free(i8* %148)
  %150 = load i32, i32* @X509_V_OK, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %147, %140, %44, %18
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @ASN1_STRING_to_UTF8(i8**, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
