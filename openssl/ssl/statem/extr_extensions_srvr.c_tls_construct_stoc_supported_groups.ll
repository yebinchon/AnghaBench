; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_supported_groups.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_supported_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@TLSEXT_TYPE_supported_groups = common dso_local global i64 0, align 8
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_supported_groups(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 1, i64* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %23, i32* %6, align 4
  br label %125

24:                                               ; preds = %5
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = call i32 @tls1_get_supported_groups(%struct.TYPE_10__* %25, i64** %12, i64* %13)
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %32 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %33 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %34 = call i32 @SSLfatal(%struct.TYPE_10__* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %35, i32* %6, align 4
  br label %125

36:                                               ; preds = %24
  store i64 0, i64* %14, align 8
  br label %37

37:                                               ; preds = %105, %36
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %37
  %42 = load i64*, i64** %12, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %16, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = call i32 @SSL_version(%struct.TYPE_10__* %48)
  %50 = call i64 @tls_valid_group(%struct.TYPE_10__* %46, i64 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %104

52:                                               ; preds = %41
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %56 = call i64 @tls_group_allowed(%struct.TYPE_10__* %53, i64 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %52
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %69, i32* %6, align 4
  br label %125

70:                                               ; preds = %61
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* @TLSEXT_TYPE_supported_groups, align 8
  %73 = call i32 @WPACKET_put_bytes_u16(i32* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @WPACKET_start_sub_packet_u16(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @WPACKET_start_sub_packet_u16(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79, %75, %70
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %86 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %87 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %88 = call i32 @SSLfatal(%struct.TYPE_10__* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %89, i32* %6, align 4
  br label %125

90:                                               ; preds = %79
  store i64 0, i64* %15, align 8
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i32*, i32** %8, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @WPACKET_put_bytes_u16(i32* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %99 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %100 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %101 = call i32 @SSLfatal(%struct.TYPE_10__* %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %102, i32* %6, align 4
  br label %125

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %52, %41
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %14, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %14, align 8
  br label %37

108:                                              ; preds = %37
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @WPACKET_close(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @WPACKET_close(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %112, %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %119 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, align 4
  %120 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %121 = call i32 @SSLfatal(%struct.TYPE_10__* %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %122, i32* %6, align 4
  br label %125

123:                                              ; preds = %112
  %124 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %116, %96, %83, %68, %29, %22
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_10__*, i64**, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @tls_valid_group(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @SSL_version(%struct.TYPE_10__*) #1

declare dso_local i64 @tls_group_allowed(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
