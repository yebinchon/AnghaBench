; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CRYPT_GenKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CRYPT_GenKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CRYPT_GenKey.set = internal global i32* null, align 8
@CMSG_OID_GEN_CONTENT_ENCRYPT_KEY_FUNC = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @CRYPT_GenKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_GenKey(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.TYPE_6__*, i32, i32*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 (%struct.TYPE_6__*, i32, i32*)* null, i32 (%struct.TYPE_6__*, i32, i32*)** %5, align 8
  %8 = load i32*, i32** @CRYPT_GenKey.set, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @CMSG_OID_GEN_CONTENT_ENCRYPT_KEY_FUNC, align 4
  %12 = call i32* @CryptInitOIDFunctionSet(i32 %11, i32 0)
  store i32* %12, i32** @CRYPT_GenKey.set, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32*, i32** @CRYPT_GenKey.set, align 8
  %15 = load i32, i32* @X509_ASN_ENCODING, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = bitcast i32 (%struct.TYPE_6__*, i32, i32*)** %5 to i8**
  %21 = call i32 @CryptGetOIDFunctionAddress(i32* %14, i32 %15, i32 %19, i32 0, i8** %20, i32* %6)
  %22 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %5, align 8
  %23 = icmp ne i32 (%struct.TYPE_6__*, i32, i32*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 %25(%struct.TYPE_6__* %26, i32 0, i32* null)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @CryptFreeOIDFunctionAddress(i32 %28, i32 0)
  br label %39

30:                                               ; preds = %13
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @CryptGenKey(i32 %33, i32 %34, i32 %35, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %24
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32* @CryptInitOIDFunctionSet(i32, i32) #1

declare dso_local i32 @CryptGetOIDFunctionAddress(i32*, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @CryptFreeOIDFunctionAddress(i32, i32) #1

declare dso_local i32 @CryptGenKey(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
