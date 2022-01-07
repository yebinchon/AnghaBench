; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_sign_setup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ossl_ecdsa_sign_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

@EC_F_OSSL_ECDSA_SIGN_SETUP = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_ecdsa_sign_setup(%struct.TYPE_8__* %0, i32* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_8__*, i32*, i32**, i32**)**
  %17 = load i32 (%struct.TYPE_8__*, i32*, i32**, i32**)*, i32 (%struct.TYPE_8__*, i32*, i32**, i32**)** %16, align 8
  %18 = icmp eq i32 (%struct.TYPE_8__*, i32*, i32**, i32**)* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @EC_F_OSSL_ECDSA_SIGN_SETUP, align 4
  %21 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_ECDSA, align 4
  %22 = call i32 @ECerr(i32 %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %37

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.TYPE_8__*, i32*, i32**, i32**)**
  %31 = load i32 (%struct.TYPE_8__*, i32*, i32**, i32**)*, i32 (%struct.TYPE_8__*, i32*, i32**, i32**)** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32**, i32*** %8, align 8
  %35 = load i32**, i32*** %9, align 8
  %36 = call i32 %31(%struct.TYPE_8__* %32, i32* %33, i32** %34, i32** %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %23, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
