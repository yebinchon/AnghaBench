; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-report.c_readscan_report.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-report.c_readscan_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CertDecode = type { i32, i32 }
%struct.BannerOutput = type { i32 }

@PROTO_X509_CERT = common dso_local global i32 0, align 4
@PROTO_SSL3 = common dso_local global i32 0, align 4
@PROTO_VULN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SSL[heartbeat] \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SSL[heartbeat] SSL[HEARTBLEED] \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readscan_report(i32 %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.CertDecode, align 4
  %13 = alloca i64, align 8
  %14 = alloca [1 x %struct.BannerOutput], align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PROTO_X509_CERT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @MALLOC(i64 %26)
  store i8* %27, i8** %11, align 8
  %28 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %14, i64 0, i64 0
  %29 = call i32 @banout_init(%struct.BannerOutput* %28)
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @base64_decode(i8* %30, i64 %31, i8* %32, i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @x509_decode_init(%struct.CertDecode* %12, i64 %35)
  %37 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %12, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.CertDecode, %struct.CertDecode* %12, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %14, i64 0, i64 0
  %42 = call i32 @x509_decode(%struct.CertDecode* %12, i8* %39, i64 %40, %struct.BannerOutput* %41)
  %43 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %14, i64 0, i64 0
  %44 = load i32, i32* @PROTO_SSL3, align 4
  %45 = call i8* @banout_string(%struct.BannerOutput* %43, i32 %44)
  store i8* %45, i8** %15, align 8
  %46 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %14, i64 0, i64 0
  %47 = load i32, i32* @PROTO_SSL3, align 4
  %48 = call i64 @banout_string_length(%struct.BannerOutput* %46, i32 %47)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %25
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @found_type(i8* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i8*, i8** %15, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @cndb_add(i32 %57, i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %25
  %63 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %14, i64 0, i64 0
  %64 = call i32 @banout_release(%struct.BannerOutput* %63)
  br label %115

65:                                               ; preds = %4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @PROTO_VULN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = call i8* @cndb_lookup(i32 %70)
  store i8* %71, i8** %17, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp eq i64 %72, 15
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = call i64 @memcmp(i8* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %115

79:                                               ; preds = %74, %69
  %80 = load i8*, i8** %17, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = icmp slt i32 %84, 300
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 32, i8* %89, align 1
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8*, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = add nsw i32 %96, 1
  %98 = call i32 @memcpy(i8* %93, i8* %94, i32 %97)
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %9, align 8
  br label %105

105:                                              ; preds = %86, %82, %79
  %106 = load i64, i64* %9, align 8
  %107 = icmp eq i64 %106, 31
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @memcmp(i8* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 31)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %115

113:                                              ; preds = %108, %105
  br label %114

114:                                              ; preds = %113, %65
  br label %115

115:                                              ; preds = %78, %112, %114, %62
  ret void
}

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i64 @base64_decode(i8*, i64, i8*, i64) #1

declare dso_local i32 @x509_decode_init(%struct.CertDecode*, i64) #1

declare dso_local i32 @x509_decode(%struct.CertDecode*, i8*, i64, %struct.BannerOutput*) #1

declare dso_local i8* @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i64 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i32 @found_type(i8*, i64) #1

declare dso_local i32 @cndb_add(i32, i8*, i64) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

declare dso_local i8* @cndb_lookup(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
