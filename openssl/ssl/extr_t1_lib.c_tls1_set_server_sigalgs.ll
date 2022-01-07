; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_server_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_set_server_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, i32*, i32* }
%struct.TYPE_14__ = type { i64 }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@CERT_PKEY_SIGN = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS1_SET_SERVER_SIGALGS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_set_server_sigalgs(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @OPENSSL_free(i32* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SSL_PKEY_NUM, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %92

39:                                               ; preds = %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %92

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = call i64 @tls12_get_psigalgs(%struct.TYPE_13__* %47, i32 1, i64** %5)
  store i64 %48, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %88, %46
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @SSL_PKEY_NUM, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call %struct.TYPE_14__* @tls1_get_legacy_sigalg(%struct.TYPE_13__* %54, i64 %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = icmp eq %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %88

60:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %84, %60
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load i64, i64* @CERT_PKEY_SIGN, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %75, i64* %82, align 8
  br label %87

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %61

87:                                               ; preds = %74, %61
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %49

91:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %114

92:                                               ; preds = %39, %32
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = call i32 @tls1_process_sigalgs(%struct.TYPE_13__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %99 = load i32, i32* @SSL_F_TLS1_SET_SERVER_SIGALGS, align 4
  %100 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %101 = call i32 @SSLfatal(%struct.TYPE_13__* %97, i32 %98, i32 %99, i32 %100)
  store i32 0, i32* %2, align 4
  br label %114

102:                                              ; preds = %92
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %114

108:                                              ; preds = %102
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %111 = load i32, i32* @SSL_F_TLS1_SET_SERVER_SIGALGS, align 4
  %112 = load i32, i32* @SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS, align 4
  %113 = call i32 @SSLfatal(%struct.TYPE_13__* %109, i32 %110, i32 %111, i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %108, %107, %96, %91
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_13__*, i32, i64**) #1

declare dso_local %struct.TYPE_14__* @tls1_get_legacy_sigalg(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @tls1_process_sigalgs(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
