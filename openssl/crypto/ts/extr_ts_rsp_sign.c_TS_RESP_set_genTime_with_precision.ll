; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_set_genTime_with_precision.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_TS_RESP_set_genTime_with_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@TS_MAX_CLOCK_PRECISION_DIGITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%04d%02d%02d%02d%02d%02d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".%06ld\00", align 1
@TS_F_TS_RESP_SET_GENTIME_WITH_PRECISION = common dso_local global i32 0, align 4
@TS_R_COULD_NOT_SET_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i64, i32)* @TS_RESP_set_genTime_with_precision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TS_RESP_set_genTime_with_precision(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  store %struct.tm* null, %struct.tm** %11, align 8
  %20 = load i32, i32* @TS_MAX_CLOCK_PRECISION_DIGITS, align 4
  %21 = add nsw i32 17, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i8* %24, i8** %15, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %22
  store i8* %25, i8** %16, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @TS_MAX_CLOCK_PRECISION_DIGITS, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %115

30:                                               ; preds = %4
  %31 = call %struct.tm* @OPENSSL_gmtime(i32* %10, %struct.tm* %12)
  store %struct.tm* %31, %struct.tm** %11, align 8
  %32 = icmp eq %struct.tm* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %115

34:                                               ; preds = %30
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load %struct.tm*, %struct.tm** %11, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1900
  %46 = load %struct.tm*, %struct.tm** %11, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = load %struct.tm*, %struct.tm** %11, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tm*, %struct.tm** %11, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tm*, %struct.tm** %11, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tm*, %struct.tm** %11, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, i8*, i64, ...) @BIO_snprintf(i8* %35, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %49, i32 %52, i32 %55, i32 %58, i32 %61)
  %63 = load i8*, i8** %15, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %15, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ugt i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %34
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add i32 2, %70
  %72 = load i64, i64* %8, align 8
  %73 = call i32 (i8*, i32, i8*, i64, ...) @BIO_snprintf(i8* %69, i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = load i8*, i8** %15, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %15, align 8
  br label %79

79:                                               ; preds = %85, %68
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %81, i8** %15, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 48
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %79

86:                                               ; preds = %79
  %87 = load i8*, i8** %15, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 46
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %15, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %15, align 8
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %34
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %15, align 8
  store i8 90, i8* %96, align 1
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %15, align 8
  store i8 0, i8* %98, align 1
  %100 = load i32*, i32** %6, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = call i32* (...) @ASN1_GENERALIZEDTIME_new()
  store i32* %103, i32** %6, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %115

106:                                              ; preds = %102, %95
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @ASN1_GENERALIZEDTIME_set_string(i32* %107, i8* %24)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @ASN1_GENERALIZEDTIME_free(i32* %111)
  br label %115

113:                                              ; preds = %106
  %114 = load i32*, i32** %6, align 8
  store i32* %114, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %119

115:                                              ; preds = %110, %105, %33, %29
  %116 = load i32, i32* @TS_F_TS_RESP_SET_GENTIME_WITH_PRECISION, align 4
  %117 = load i32, i32* @TS_R_COULD_NOT_SET_TIME, align 4
  %118 = call i32 @TSerr(i32 %116, i32 %117)
  store i32* null, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %119

119:                                              ; preds = %115, %113
  %120 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32*, i32** %5, align 8
  ret i32* %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tm* @OPENSSL_gmtime(i32*, %struct.tm*) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i64, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @ASN1_GENERALIZEDTIME_new(...) #2

declare dso_local i32 @ASN1_GENERALIZEDTIME_set_string(i32*, i8*) #2

declare dso_local i32 @ASN1_GENERALIZEDTIME_free(i32*) #2

declare dso_local i32 @TSerr(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
