; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_pre_work.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_pre_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, i32, %struct.TYPE_19__*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_21__*)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@WORK_FINISHED_CONTINUE = common dso_local global i32 0, align 4
@WORK_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTING = common dso_local global i32 0, align 4
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_pre_work(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 6
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %6, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 131, label %13
    i32 135, label %23
    i32 128, label %35
    i32 129, label %43
    i32 130, label %57
    i32 132, label %78
    i32 134, label %114
    i32 133, label %131
  ]

12:                                               ; preds = %2
  br label %135

13:                                               ; preds = %2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = call i32 @dtls1_clear_sent_buffer(%struct.TYPE_21__* %20)
  br label %22

22:                                               ; preds = %19, %13
  br label %135

23:                                               ; preds = %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = call i32 @dtls1_clear_sent_buffer(%struct.TYPE_21__* %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %23
  br label %135

35:                                               ; preds = %2
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %135

43:                                               ; preds = %2
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = call i32 @SSL_get_wbio(%struct.TYPE_21__* %48)
  %50 = call i32 @BIO_dgram_is_sctp(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = call i32 @dtls_wait_for_dry(%struct.TYPE_21__* %53)
  store i32 %54, i32* %3, align 4
  br label %137

55:                                               ; preds = %47, %43
  %56 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %56, i32* %3, align 4
  br label %137

57:                                               ; preds = %2
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = call i32 @SSL_IS_TLS13(%struct.TYPE_21__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @tls_finish_handshake(%struct.TYPE_21__* %67, i32 %68, i32 0, i32 0)
  store i32 %69, i32* %3, align 4
  br label %137

70:                                               ; preds = %61, %57
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %135

78:                                               ; preds = %2
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = call i32 @SSL_IS_TLS13(%struct.TYPE_21__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %135

83:                                               ; preds = %78
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = call i32 %99(%struct.TYPE_21__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %83
  %104 = load i32, i32* @WORK_ERROR, align 4
  store i32 %104, i32* %3, align 4
  br label %137

105:                                              ; preds = %83
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %107 = call i32 @SSL_IS_DTLS(%struct.TYPE_21__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %113, i32* %3, align 4
  br label %137

114:                                              ; preds = %2
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SSL_EARLY_DATA_ACCEPTING, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %129, i32* %3, align 4
  br label %137

130:                                              ; preds = %120, %114
  br label %131

131:                                              ; preds = %2, %130
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @tls_finish_handshake(%struct.TYPE_21__* %132, i32 %133, i32 1, i32 1)
  store i32 %134, i32* %3, align 4
  br label %137

135:                                              ; preds = %82, %77, %42, %34, %22, %12
  %136 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %131, %128, %112, %103, %66, %55, %52
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_21__*) #1

declare dso_local i32 @dtls1_clear_sent_buffer(%struct.TYPE_21__*) #1

declare dso_local i32 @BIO_dgram_is_sctp(i32) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_21__*) #1

declare dso_local i32 @dtls_wait_for_dry(%struct.TYPE_21__*) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_21__*) #1

declare dso_local i32 @tls_finish_handshake(%struct.TYPE_21__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
