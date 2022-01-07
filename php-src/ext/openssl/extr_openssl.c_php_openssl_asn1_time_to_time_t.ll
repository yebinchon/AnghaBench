; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_asn1_time_to_time_t.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_asn1_time_to_time_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@V_ASN1_UTCTIME = common dso_local global i64 0, align 8
@V_ASN1_GENERALIZEDTIME = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"illegal ASN1 data type for timestamp\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"illegal length in timestamp\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to parse time string %s correctly\00", align 1
@timezone = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @php_openssl_asn1_time_to_time_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_openssl_asn1_time_to_time_t(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i64 @ASN1_STRING_type(%struct.TYPE_6__* %10)
  %12 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i64 @ASN1_STRING_type(%struct.TYPE_6__* %15)
  %17 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @E_WARNING, align 4
  %21 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %2, align 8
  br label %156

22:                                               ; preds = %14, %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i64 @ASN1_STRING_length(%struct.TYPE_6__* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i64 @ASN1_STRING_get0_data(%struct.TYPE_6__* %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @E_WARNING, align 4
  %33 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %2, align 8
  br label %156

34:                                               ; preds = %22
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %35, 13
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 11
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @E_WARNING, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i64 -1, i64* %2, align 8
  br label %156

46:                                               ; preds = %37, %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call i64 @ASN1_STRING_type(%struct.TYPE_6__* %47)
  %49 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %52, 15
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @E_WARNING, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i64 -1, i64* %2, align 8
  br label %156

60:                                               ; preds = %51, %46
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = call i64 @ASN1_STRING_get0_data(%struct.TYPE_6__* %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = call i8* @estrdup(i8* %63)
  store i8* %64, i8** %6, align 8
  %65 = call i32 @memset(%struct.tm* %5, i32 0, i32 40)
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -3
  store i8* %69, i8** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %70, 11
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %81

74:                                               ; preds = %60
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @atoi(i8* %75)
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i8*, i8** %7, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -2
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %74, %72
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @atoi(i8* %82)
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %7, align 8
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -2
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @atoi(i8* %88)
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = load i8*, i8** %7, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -2
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @atoi(i8* %94)
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load i8*, i8** %7, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -2
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @atoi(i8* %100)
  %102 = sub nsw i32 %101, 1
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = load i8*, i8** %7, align 8
  store i8 0, i8* %104, align 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = call i64 @ASN1_STRING_type(%struct.TYPE_6__* %105)
  %107 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %81
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -2
  store i8* %111, i8** %7, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @atoi(i8* %112)
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 68
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 100
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %118, %109
  br label %136

123:                                              ; preds = %81
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = call i64 @ASN1_STRING_type(%struct.TYPE_6__* %124)
  %126 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 -4
  store i8* %130, i8** %7, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @atoi(i8* %131)
  %133 = sub nsw i32 %132, 1900
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %123
  br label %136

136:                                              ; preds = %135, %122
  %137 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i32 -1, i32* %137, align 8
  %138 = call i64 @mktime(%struct.tm* %5)
  store i64 %138, i64* %4, align 8
  %139 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i64, i64* @timezone, align 8
  %144 = sub nsw i64 %143, 3600
  br label %147

145:                                              ; preds = %136
  %146 = load i64, i64* @timezone, align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = phi i64 [ %144, %142 ], [ %146, %145 ]
  %149 = sub nsw i64 0, %148
  store i64 %149, i64* %8, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %4, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %4, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @efree(i8* %153)
  %155 = load i64, i64* %4, align 8
  store i64 %155, i64* %2, align 8
  br label %156

156:                                              ; preds = %147, %54, %40, %31, %19
  %157 = load i64, i64* %2, align 8
  ret i64 %157
}

declare dso_local i64 @ASN1_STRING_type(%struct.TYPE_6__*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i64 @ASN1_STRING_length(%struct.TYPE_6__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ASN1_STRING_get0_data(%struct.TYPE_6__*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
