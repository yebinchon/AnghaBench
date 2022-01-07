; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_shared_group.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_shared_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_256 = common dso_local global i32 0, align 4
@TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_384 = common dso_local global i32 0, align 4
@SSL_OP_CIPHER_SERVER_PREFERENCE = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_shared_group(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -2
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = call i64 @tls1_suiteb(%struct.TYPE_13__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @TLSEXT_curve_P_256, align 4
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %26
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TLSEXT_curve_P_384, align 4
  store i32 %44, i32* %3, align 4
  br label %104

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %104

46:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SSL_OP_CIPHER_SERVER_PREFERENCE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %55, i32** %6, i64* %8)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %57, i32** %7, i64* %9)
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %60, i32** %6, i64* %8)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %62, i32** %7, i64* %9)
  br label %64

64:                                               ; preds = %59, %54
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %95, %64
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @tls1_in_list(i32 %74, i32* %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @SSL_SECOP_CURVE_SHARED, align 4
  %83 = call i32 @tls_group_allowed(%struct.TYPE_13__* %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79, %69
  br label %95

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %3, align 4
  br label %104

92:                                               ; preds = %86
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %10, align 8
  br label %65

98:                                               ; preds = %65
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %101, %90, %45, %43, %37, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @tls1_suiteb(%struct.TYPE_13__*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_13__*, i32**, i64*) #1

declare dso_local i32 @tls1_in_list(i32, i32*, i64) #1

declare dso_local i32 @tls_group_allowed(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
