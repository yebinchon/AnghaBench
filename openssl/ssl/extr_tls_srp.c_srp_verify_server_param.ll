; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_srp_verify_server_param.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_srp_verify_server_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 (%struct.TYPE_6__*, i32)*, i32, i32, i32, i32 }

@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_SRP_VERIFY_SERVER_PARAM = common dso_local global i32 0, align 4
@SSL_R_BAD_DATA = common dso_local global i32 0, align 4
@SSL_AD_INSUFFICIENT_SECURITY = common dso_local global i32 0, align 4
@SSL_R_INSUFFICIENT_SECURITY = common dso_local global i32 0, align 4
@SSL_R_CALLBACK_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_verify_server_param(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @BN_ucmp(i32 %9, i32 %12)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @BN_ucmp(i32 %18, i32 %21)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @BN_is_zero(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %15, %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %33 = load i32, i32* @SSL_F_SRP_VERIFY_SERVER_PARAM, align 4
  %34 = load i32, i32* @SSL_R_BAD_DATA, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_6__* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %90

36:                                               ; preds = %24
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @BN_num_bits(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load i32, i32* @SSL_AD_INSUFFICIENT_SECURITY, align 4
  %48 = load i32, i32* @SSL_F_SRP_VERIFY_SERVER_PARAM, align 4
  %49 = load i32, i32* @SSL_R_INSUFFICIENT_SECURITY, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_6__* %46, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %90

51:                                               ; preds = %36
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64 (%struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_6__*, i32)** %53, align 8
  %55 = icmp ne i64 (%struct.TYPE_6__*, i32)* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64 (%struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_6__*, i32)** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i64 %59(%struct.TYPE_6__* %60, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i32, i32* @SSL_AD_INSUFFICIENT_SECURITY, align 4
  %69 = load i32, i32* @SSL_F_SRP_VERIFY_SERVER_PARAM, align 4
  %70 = load i32, i32* @SSL_R_CALLBACK_FAILED, align 4
  %71 = call i32 @SSLfatal(%struct.TYPE_6__* %67, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %90

72:                                               ; preds = %56
  br label %89

73:                                               ; preds = %51
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SRP_check_known_gN_param(i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = load i32, i32* @SSL_AD_INSUFFICIENT_SECURITY, align 4
  %85 = load i32, i32* @SSL_F_SRP_VERIFY_SERVER_PARAM, align 4
  %86 = load i32, i32* @SSL_R_INSUFFICIENT_SECURITY, align 4
  %87 = call i32 @SSLfatal(%struct.TYPE_6__* %83, i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %90

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %72
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %82, %66, %45, %30
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @BN_ucmp(i32, i32) #1

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @BN_num_bits(i32) #1

declare dso_local i32 @SRP_check_known_gN_param(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
