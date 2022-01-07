; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_dtls1_process_buffered_records.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_dtls1_process_buffered_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_process_buffered_records(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @pqueue_peek(i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %117

20:                                               ; preds = %1
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %143

36:                                               ; preds = %20
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = call %struct.TYPE_24__* @RECORD_LAYER_get_rrec(%struct.TYPE_21__* %38)
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %6, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = call i32* @RECORD_LAYER_get_rbuf(%struct.TYPE_21__* %41)
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @SSL3_BUFFER_get_left(i32* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %143

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %115, %94, %47
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @pqueue_peek(i32 %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %116

58:                                               ; preds = %48
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = call i32 @dtls1_get_unprocessed_record(%struct.TYPE_25__* %59)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = call i32* @dtls1_get_bitmap(%struct.TYPE_25__* %61, %struct.TYPE_24__* %62, i32* %8)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %68 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %69 = load i32, i32* @SSL_F_DTLS1_PROCESS_BUFFERED_RECORDS, align 4
  %70 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %71 = call i32 @SSLfatal(%struct.TYPE_25__* %67, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %143

72:                                               ; preds = %58
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %74 = call i32 @SSL_get_rbio(%struct.TYPE_25__* %73)
  %75 = call i32 @BIO_dgram_is_sctp(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @dtls1_record_replay_check(%struct.TYPE_25__* %78, i32* %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @dtls1_process_record(%struct.TYPE_25__* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %91 = call i64 @ossl_statem_in_error(%struct.TYPE_25__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 -1, i32* %2, align 4
  br label %143

94:                                               ; preds = %89
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = call i32 @RECORD_LAYER_reset_packet_length(%struct.TYPE_21__* %98)
  br label %48

100:                                              ; preds = %84
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @SSL3_RECORD_get_seq_num(i32 %110)
  %112 = call i64 @dtls1_buffer_record(%struct.TYPE_25__* %101, %struct.TYPE_20__* %106, i32 %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %143

115:                                              ; preds = %100
  br label %48

116:                                              ; preds = %48
  br label %117

117:                                              ; preds = %116, %1
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  store i64 %123, i64* %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  store i64 %136, i64* %142, align 8
  store i32 1, i32* %2, align 4
  br label %143

143:                                              ; preds = %117, %114, %93, %66, %46, %35
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32* @pqueue_peek(i32) #1

declare dso_local %struct.TYPE_24__* @RECORD_LAYER_get_rrec(%struct.TYPE_21__*) #1

declare dso_local i32* @RECORD_LAYER_get_rbuf(%struct.TYPE_21__*) #1

declare dso_local i64 @SSL3_BUFFER_get_left(i32*) #1

declare dso_local i32 @dtls1_get_unprocessed_record(%struct.TYPE_25__*) #1

declare dso_local i32* @dtls1_get_bitmap(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @BIO_dgram_is_sctp(i32) #1

declare dso_local i32 @SSL_get_rbio(%struct.TYPE_25__*) #1

declare dso_local i32 @dtls1_record_replay_check(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @dtls1_process_record(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @ossl_statem_in_error(%struct.TYPE_25__*) #1

declare dso_local i32 @RECORD_LAYER_reset_packet_length(%struct.TYPE_21__*) #1

declare dso_local i64 @dtls1_buffer_record(%struct.TYPE_25__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @SSL3_RECORD_get_seq_num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
