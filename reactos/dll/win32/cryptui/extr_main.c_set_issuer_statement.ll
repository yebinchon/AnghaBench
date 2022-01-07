; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_issuer_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_issuer_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.IssuerStatement = type { i8*, i8* }

@CRYPTUI_DISABLE_ISSUERSTATEMENT = common dso_local global i32 0, align 4
@szOID_CERT_POLICIES = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@szOID_PKIX_POLICY_QUALIFIER_CPS = common dso_local global i32 0, align 4
@szOID_PKIX_POLICY_QUALIFIER_USERNOTICE = common dso_local global i32 0, align 4
@IDC_ISSUERSTATEMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DWLP_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @set_issuer_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_issuer_statement(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.IssuerStatement*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CRYPTUI_DISABLE_ISSUERSTATEMENT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %101, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @szOID_CERT_POLICIES, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_11__* @CertFindExtension(i32 %19, i32 %26, i32 %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %5, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %101

36:                                               ; preds = %18
  %37 = load i32, i32* @X509_ASN_ENCODING, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %50 = call i64 @CryptDecodeObjectEx(i32 %37, i32 %40, i32 %44, i32 %48, i32 %49, i32* null, i32** %6, i32* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %100

52:                                               ; preds = %36
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @szOID_PKIX_POLICY_QUALIFIER_CPS, align 4
  %55 = call i32* @find_policy_qualifier(i32* %53, i32 %54)
  store i32* %55, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = call i8* @get_cps_str_from_qualifier(i32* %58)
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @szOID_PKIX_POLICY_QUALIFIER_USERNOTICE, align 4
  %63 = call i32* @find_policy_qualifier(i32* %61, i32 %62)
  store i32* %63, i32** %8, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32*, i32** %8, align 8
  %67 = call i8* @get_user_notice_from_qualifier(i32* %66)
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %71, %68
  %75 = call i32 (...) @GetProcessHeap()
  %76 = call %struct.IssuerStatement* @HeapAlloc(i32 %75, i32 0, i32 16)
  store %struct.IssuerStatement* %76, %struct.IssuerStatement** %11, align 8
  %77 = load %struct.IssuerStatement*, %struct.IssuerStatement** %11, align 8
  %78 = icmp ne %struct.IssuerStatement* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.IssuerStatement*, %struct.IssuerStatement** %11, align 8
  %82 = getelementptr inbounds %struct.IssuerStatement, %struct.IssuerStatement* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.IssuerStatement*, %struct.IssuerStatement** %11, align 8
  %85 = getelementptr inbounds %struct.IssuerStatement, %struct.IssuerStatement* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @IDC_ISSUERSTATEMENT, align 4
  %88 = call i32 @GetDlgItem(i32 %86, i32 %87)
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @EnableWindow(i32 %88, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @DWLP_USER, align 4
  %93 = load %struct.IssuerStatement*, %struct.IssuerStatement** %11, align 8
  %94 = ptrtoint %struct.IssuerStatement* %93 to i32
  %95 = call i32 @SetWindowLongPtrW(i32 %91, i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %79, %74
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @LocalFree(i32* %98)
  br label %100

100:                                              ; preds = %97, %36
  br label %101

101:                                              ; preds = %100, %18, %2
  ret void
}

declare dso_local %struct.TYPE_11__* @CertFindExtension(i32, i32, i32) #1

declare dso_local i64 @CryptDecodeObjectEx(i32, i32, i32, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32* @find_policy_qualifier(i32*, i32) #1

declare dso_local i8* @get_cps_str_from_qualifier(i32*) #1

declare dso_local i8* @get_user_notice_from_qualifier(i32*) #1

declare dso_local %struct.IssuerStatement* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
