; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_get_legacy_sigalg.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_get_legacy_sigalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_13__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@SSL_PKEY_NUM = common dso_local global i64 0, align 8
@SSL_PKEY_GOST01 = common dso_local global i32 0, align 4
@SSL_aGOST01 = common dso_local global i64 0, align 8
@SSL_PKEY_GOST12_512 = common dso_local global i32 0, align 4
@tls_default_sigalg = common dso_local global i32* null, align 8
@SSL_PKEY_RSA = common dso_local global i32 0, align 4
@legacy_rsa_sigalg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32)* @tls1_get_legacy_sigalg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tls1_get_legacy_sigalg(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %102

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @SSL_PKEY_NUM, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_16__* @ssl_cert_lookup_by_idx(i64 %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %7, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %27, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %18

44:                                               ; preds = %37, %18
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SSL_PKEY_GOST01, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %44
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @SSL_aGOST01, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %48
  %60 = load i32, i32* @SSL_PKEY_GOST12_512, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %80, %59
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SSL_PKEY_GOST01, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %5, align 4
  br label %83

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %61

83:                                               ; preds = %77, %61
  br label %84

84:                                               ; preds = %83, %48, %44
  br label %101

85:                                               ; preds = %12
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = ptrtoint %struct.TYPE_14__* %90 to i64
  %97 = ptrtoint %struct.TYPE_14__* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %85, %84
  br label %102

102:                                              ; preds = %101, %2
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = load i32*, i32** @tls_default_sigalg, align 8
  %108 = call i64 @OSSL_NELEM(i32* %107)
  %109 = trunc i64 %108 to i32
  %110 = icmp sge i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %102
  store i32* null, i32** %3, align 8
  br label %134

112:                                              ; preds = %105
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_17__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @SSL_PKEY_RSA, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %116, %112
  %121 = load i32*, i32** @tls_default_sigalg, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @tls1_lookup_sigalg(i32 %125)
  store i32* %126, i32** %9, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @tls1_lookup_md(i32* %127, i32* null)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  store i32* null, i32** %3, align 8
  br label %134

131:                                              ; preds = %120
  %132 = load i32*, i32** %9, align 8
  store i32* %132, i32** %3, align 8
  br label %134

133:                                              ; preds = %116
  store i32* @legacy_rsa_sigalg, i32** %3, align 8
  br label %134

134:                                              ; preds = %133, %131, %130, %111
  %135 = load i32*, i32** %3, align 8
  ret i32* %135
}

declare dso_local %struct.TYPE_16__* @ssl_cert_lookup_by_idx(i64) #1

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_17__*) #1

declare dso_local i32* @tls1_lookup_sigalg(i32) #1

declare dso_local i32 @tls1_lookup_md(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
