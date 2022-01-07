; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_PKCSOpenStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_PKCSOpenStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@CERT_STORE_NO_CRYPT_RELEASE_FLAG = common dso_local global i32 0, align 4
@CMSG_CRYPT_RELEASE_CONTEXT_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %p)\0A\00", align 1
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@CMSG_SIGNED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CMSG_TYPE_PARAM = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i8*)* @CRYPT_PKCSOpenStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CRYPT_PKCSOpenStore(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CERT_STORE_NO_CRYPT_RELEASE_FLAG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @CMSG_CRYPT_RELEASE_CONTEXT_FLAG, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %28, i8* %29)
  %31 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @CMSG_SIGNED, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @CryptMsgOpenToDecode(i32 %31, i32 %32, i32 %33, i32 %34, i32* null, i32* null)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i64 @CryptMsgUpdate(i32 %36, i32 %39, i32 %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @CryptMsgClose(i32 %48)
  %50 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @CryptMsgOpenToDecode(i32 %50, i32 %51, i32 0, i32 %52, i32* null, i32* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i64 @CryptMsgUpdate(i32 %54, i32 %57, i32 %60, i32 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %47
  store i32 4, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CMSG_TYPE_PARAM, align 4
  %68 = call i64 @CryptMsgGetParam(i32 %66, i32 %67, i32 0, i32* %12, i32* %13)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @CMSG_SIGNED, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %77 = call i32 @SetLastError(i32 %76)
  %78 = load i64, i64* @FALSE, align 8
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %75, %71, %65
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32* @CRYPT_MsgOpenStore(i32 0, i32 %85, i32 %86)
  store i32* %87, i32** %8, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @CryptMsgClose(i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %8, align 8
  ret i32* %93
}

declare dso_local i32 @TRACE(i8*, i32*, ...) #1

declare dso_local i32 @CryptMsgOpenToDecode(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @CryptMsgUpdate(i32, i32, i32, i32) #1

declare dso_local i32 @CryptMsgClose(i32) #1

declare dso_local i64 @CryptMsgGetParam(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CRYPT_MsgOpenStore(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
