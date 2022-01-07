; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_purp.c_check_purpose_timestamp_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_purp.c_check_purpose_timestamp_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }

@EXFLAG_KUSAGE = common dso_local global i32 0, align 4
@KU_NON_REPUDIATION = common dso_local global i32 0, align 4
@KU_DIGITAL_SIGNATURE = common dso_local global i32 0, align 4
@EXFLAG_XKUSAGE = common dso_local global i32 0, align 4
@XKU_TIMESTAMP = common dso_local global i64 0, align 8
@NID_ext_key_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32)* @check_purpose_timestamp_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_purpose_timestamp_sign(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @check_ca(%struct.TYPE_6__* %13)
  store i32 %14, i32* %4, align 4
  br label %72

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EXFLAG_KUSAGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KU_NON_REPUDIATION, align 4
  %27 = load i32, i32* @KU_DIGITAL_SIGNATURE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KU_NON_REPUDIATION, align 4
  %37 = load i32, i32* @KU_DIGITAL_SIGNATURE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32, %22
  store i32 0, i32* %4, align 4
  br label %72

42:                                               ; preds = %32, %15
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EXFLAG_XKUSAGE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XKU_TIMESTAMP, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %42
  store i32 0, i32* %4, align 4
  br label %72

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = load i32, i32* @NID_ext_key_usage, align 4
  %59 = call i32 @X509_get_ext_by_NID(%struct.TYPE_6__* %57, i32 %58, i32 -1)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32* @X509_get_ext(%struct.TYPE_6__* %63, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @X509_EXTENSION_get_critical(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %72

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %56
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %69, %55, %41, %12
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @check_ca(%struct.TYPE_6__*) #1

declare dso_local i32 @X509_get_ext_by_NID(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @X509_get_ext(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @X509_EXTENSION_get_critical(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
