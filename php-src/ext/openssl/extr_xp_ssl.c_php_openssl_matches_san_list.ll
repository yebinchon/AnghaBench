; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_matches_san_list.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_matches_san_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@NID_subject_alt_name = common dso_local global i32 0, align 4
@GEN_DNS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GENERAL_NAME_free = common dso_local global i32 0, align 4
@GEN_IPADD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @php_openssl_matches_san_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_matches_san_list(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @NID_subject_alt_name, align 4
  %15 = call i32* @X509_get_ext_d2i(i32* %13, i32 %14, i32 0, i32 0)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @sk_GENERAL_NAME_num(i32* %16)
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %143, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %146

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.TYPE_7__* @sk_GENERAL_NAME_value(i32* %23, i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %12, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GEN_DNS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ASN1_STRING_to_UTF8(i8** %8, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ASN1_STRING_length(i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @OPENSSL_free(i8* %46)
  br label %143

48:                                               ; preds = %31
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %62, %54, %48
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @php_openssl_matches_wildcard_name(i8* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @OPENSSL_free(i8* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @GENERAL_NAME_free, align 4
  %78 = call i32 @sk_GENERAL_NAME_pop_free(i32* %76, i32 %77)
  store i32 1, i32* %3, align 4
  br label %150

79:                                               ; preds = %68
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @OPENSSL_free(i8* %80)
  br label %142

82:                                               ; preds = %22
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @GEN_IPADD, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %141

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %140

96:                                               ; preds = %88
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @sprintf(i8* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %113, i32 %121, i32 %129)
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %133 = call i64 @strcasecmp(i8* %131, i8* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %96
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* @GENERAL_NAME_free, align 4
  %138 = call i32 @sk_GENERAL_NAME_pop_free(i32* %136, i32 %137)
  store i32 1, i32* %3, align 4
  br label %150

139:                                              ; preds = %96
  br label %140

140:                                              ; preds = %139, %88
  br label %141

141:                                              ; preds = %140, %82
  br label %142

142:                                              ; preds = %141, %79
  br label %143

143:                                              ; preds = %142, %45
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %18

146:                                              ; preds = %18
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* @GENERAL_NAME_free, align 4
  %149 = call i32 @sk_GENERAL_NAME_pop_free(i32* %147, i32 %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %135, %73
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32* @X509_get_ext_d2i(i32*, i32, i32, i32) #1

declare dso_local i32 @sk_GENERAL_NAME_num(i32*) #1

declare dso_local %struct.TYPE_7__* @sk_GENERAL_NAME_value(i32*, i32) #1

declare dso_local i32 @ASN1_STRING_to_UTF8(i8**, i32) #1

declare dso_local i64 @ASN1_STRING_length(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @php_openssl_matches_wildcard_name(i8*, i8*) #1

declare dso_local i32 @sk_GENERAL_NAME_pop_free(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
