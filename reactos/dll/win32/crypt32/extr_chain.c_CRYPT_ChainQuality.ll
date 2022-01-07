; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_ChainQuality.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_ChainQuality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CHAIN_QUALITY_HIGHEST = common dso_local global i32 0, align 4
@CERT_TRUST_IS_UNTRUSTED_ROOT = common dso_local global i32 0, align 4
@CHAIN_QUALITY_TRUSTED_ROOT = common dso_local global i32 0, align 4
@CERT_TRUST_INVALID_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4
@CHAIN_QUALITY_BASIC_CONSTRAINTS = common dso_local global i32 0, align 4
@CERT_TRUST_IS_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@CHAIN_QUALITY_COMPLETE_CHAIN = common dso_local global i32 0, align 4
@CERT_TRUST_IS_NOT_TIME_VALID = common dso_local global i32 0, align 4
@CERT_TRUST_IS_NOT_TIME_NESTED = common dso_local global i32 0, align 4
@CHAIN_QUALITY_TIME_VALID = common dso_local global i32 0, align 4
@CERT_TRUST_IS_NOT_SIGNATURE_VALID = common dso_local global i32 0, align 4
@CHAIN_QUALITY_SIGNATURE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @CRYPT_ChainQuality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_ChainQuality(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @CHAIN_QUALITY_HIGHEST, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* @CERT_TRUST_IS_UNTRUSTED_ROOT, align 4
  %9 = call i64 @IS_TRUST_ERROR_SET(i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @CHAIN_QUALITY_TRUSTED_ROOT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @CERT_TRUST_INVALID_BASIC_CONSTRAINTS, align 4
  %21 = call i64 @IS_TRUST_ERROR_SET(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @CHAIN_QUALITY_BASIC_CONSTRAINTS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* @CERT_TRUST_IS_PARTIAL_CHAIN, align 4
  %33 = call i64 @IS_TRUST_ERROR_SET(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @CHAIN_QUALITY_COMPLETE_CHAIN, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* @CERT_TRUST_IS_NOT_TIME_VALID, align 4
  %45 = load i32, i32* @CERT_TRUST_IS_NOT_TIME_NESTED, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @IS_TRUST_ERROR_SET(i32* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32, i32* @CHAIN_QUALITY_TIME_VALID, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* @CERT_TRUST_IS_NOT_SIGNATURE_VALID, align 4
  %59 = call i64 @IS_TRUST_ERROR_SET(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @CHAIN_QUALITY_SIGNATURE_VALID, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @IS_TRUST_ERROR_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
