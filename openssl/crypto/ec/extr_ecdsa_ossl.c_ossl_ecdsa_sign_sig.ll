; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_sign_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_sign_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

@EC_F_OSSL_ECDSA_SIGN_SIG = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ossl_ecdsa_sign_sig(i8* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)**
  %19 = load i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)*, i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)** %18, align 8
  %20 = icmp eq i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SIG, align 4
  %23 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA, align 4
  %24 = call i32 @ECerr(i32 %22, i32 %23)
  store i32* null, i32** %6, align 8
  br label %40

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)**
  %33 = load i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)*, i32* (i8*, i32, i32*, i32*, %struct.TYPE_8__*)** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = call i32* %33(i8* %34, i32 %35, i32* %36, i32* %37, %struct.TYPE_8__* %38)
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %25, %21
  %41 = load i32*, i32** %6, align 8
  ret i32* %41
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
