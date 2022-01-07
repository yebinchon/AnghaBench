; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_check_group_id.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_check_group_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_256 = common dso_local global i64 0, align 8
@TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = common dso_local global i64 0, align 8
@TLSEXT_curve_P_384 = common dso_local global i64 0, align 8
@SSL_SECOP_CURVE_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_check_group_id(%struct.TYPE_13__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

14:                                               ; preds = %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i64 @tls1_suiteb(%struct.TYPE_13__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @TLSEXT_curve_P_256, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %92

41:                                               ; preds = %36
  br label %54

42:                                               ; preds = %25
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @TLSEXT_curve_P_384, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %92

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %92

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %18, %14
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call i32 @tls1_get_supported_groups(%struct.TYPE_13__* %59, i64** %8, i64* %9)
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @tls1_in_list(i64 %61, i64* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %92

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @SSL_SECOP_CURVE_CHECK, align 4
  %72 = call i32 @tls_group_allowed(%struct.TYPE_13__* %69, i64 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %92

75:                                               ; preds = %68
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %92

81:                                               ; preds = %75
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = call i32 @tls1_get_peer_groups(%struct.TYPE_13__* %82, i64** %8, i64* %9)
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %92

87:                                               ; preds = %81
  %88 = load i64, i64* %6, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @tls1_in_list(i64 %88, i64* %89, i64 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %86, %80, %74, %66, %52, %50, %40, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @tls1_suiteb(%struct.TYPE_13__*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_13__*, i64**, i64*) #1

declare dso_local i32 @tls1_in_list(i64, i64*, i64) #1

declare dso_local i32 @tls_group_allowed(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_13__*, i64**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
