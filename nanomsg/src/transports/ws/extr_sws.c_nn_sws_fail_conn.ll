; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_fail_conn.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_fail_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sws = type { i8*, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.nn_iovec = type { i8*, i64 }

@NN_SWS_FRAME_SIZE_MASK = common dso_local global i32 0, align 4
@NN_SWS_STATE_ACTIVE = common dso_local global i32 0, align 4
@NN_SWS_INSTATE_CLOSED = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_CODE_LEN = common dso_local global i64 0, align 8
@NN_SWS_PAYLOAD_MAX_LENGTH = common dso_local global i64 0, align 8
@NN_SWS_FRAME_BITMASK_FIN = common dso_local global i32 0, align 4
@NN_WS_OPCODE_CLOSE = common dso_local global i32 0, align 4
@NN_SWS_FRAME_SIZE_INITIAL = common dso_local global i64 0, align 8
@NN_SWS_FRAME_BITMASK_NOT_MASKED = common dso_local global i8 0, align 1
@NN_SWS_FRAME_BITMASK_MASKED = common dso_local global i8 0, align 1
@NN_SWS_OUTSTATE_IDLE = common dso_local global i64 0, align 8
@NN_SWS_OUTSTATE_SENDING = common dso_local global i64 0, align 8
@NN_SWS_STATE_CLOSING_CONNECTION = common dso_local global i32 0, align 4
@NN_SWS_STATE_DONE = common dso_local global i32 0, align 4
@NN_SWS_RETURN_CLOSE_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_sws*, i32, i8*)* @nn_sws_fail_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sws_fail_conn(%struct.nn_sws* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.nn_sws*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nn_iovec, align 8
  store %struct.nn_sws* %0, %struct.nn_sws** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @NN_SWS_FRAME_SIZE_MASK, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %18 = load i32, i32* @NN_SWS_STATE_ACTIVE, align 4
  %19 = call i32 @nn_assert_state(%struct.nn_sws* %17, i32 %18)
  %20 = load i32, i32* @NN_SWS_INSTATE_CLOSED, align 4
  %21 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %22 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %24 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %23, i32 0, i32 9
  %25 = call i32 @nn_pipebase_stop(i32* %24)
  %26 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %27 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %26, i32 0, i32 8
  %28 = call i32 @nn_msg_array_term(i32* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @NN_SWS_CLOSE_CODE_LEN, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @NN_SWS_PAYLOAD_MAX_LENGTH, align 8
  %36 = icmp ule i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @nn_assert(i32 %37)
  %39 = load i32, i32* @NN_SWS_FRAME_BITMASK_FIN, align 4
  %40 = load i32, i32* @NN_WS_OPCODE_CLOSE, align 4
  %41 = or i32 %39, %40
  %42 = trunc i32 %41 to i8
  %43 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %44 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %42, i8* %46, align 1
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i8
  %49 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %50 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %48, i8* %52, align 1
  %53 = load i64, i64* @NN_SWS_FRAME_SIZE_INITIAL, align 8
  %54 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %55 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %57 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %97 [
    i32 128, label %59
    i32 129, label %70
  ]

59:                                               ; preds = %3
  %60 = load i8, i8* @NN_SWS_FRAME_BITMASK_NOT_MASKED, align 1
  %61 = sext i8 %60 to i32
  %62 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %63 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = or i32 %67, %61
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %99

70:                                               ; preds = %3
  %71 = load i8, i8* @NN_SWS_FRAME_BITMASK_MASKED, align 1
  %72 = sext i8 %71 to i32
  %73 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %74 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = or i32 %78, %72
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  %81 = load i32, i32* @NN_SWS_FRAME_SIZE_MASK, align 4
  %82 = call i32 @nn_random_generate(i8* %16, i32 %81)
  %83 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %84 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* @NN_SWS_FRAME_SIZE_INITIAL, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i32, i32* @NN_SWS_FRAME_SIZE_MASK, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @memcpy(i8* %87, i8* %16, i64 %89)
  %91 = load i32, i32* @NN_SWS_FRAME_SIZE_MASK, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %94 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %99

97:                                               ; preds = %3
  %98 = call i32 @nn_assert(i32 0)
  br label %99

99:                                               ; preds = %97, %70, %59
  %100 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %101 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %104 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8* %106, i8** %11, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @nn_puts(i8* %107, i32 %108)
  %110 = load i64, i64* @NN_SWS_CLOSE_CODE_LEN, align 8
  %111 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %112 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* @NN_SWS_CLOSE_CODE_LEN, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @memcpy(i8* %117, i8* %118, i64 %119)
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %123 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %127 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 129
  br i1 %129, label %130, label %135

130:                                              ; preds = %99
  %131 = load i8*, i8** %11, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i32, i32* @NN_SWS_FRAME_SIZE_MASK, align 4
  %134 = call i32 @nn_sws_mask_payload(i8* %131, i64 %132, i8* %16, i32 %133, i32* null)
  br label %135

135:                                              ; preds = %130, %99
  %136 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %137 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NN_SWS_OUTSTATE_IDLE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %135
  %142 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %143 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %12, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  %146 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %147 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %12, i32 0, i32 1
  store i64 %148, i64* %149, align 8
  %150 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %151 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @nn_usock_send(i32 %152, %struct.nn_iovec* %12, i32 1)
  %154 = load i64, i64* @NN_SWS_OUTSTATE_SENDING, align 8
  %155 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %156 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* @NN_SWS_STATE_CLOSING_CONNECTION, align 4
  %158 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %159 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  br label %170

160:                                              ; preds = %135
  %161 = load i32, i32* @NN_SWS_STATE_DONE, align 4
  %162 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %163 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %165 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %164, i32 0, i32 5
  %166 = load %struct.nn_sws*, %struct.nn_sws** %4, align 8
  %167 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %166, i32 0, i32 4
  %168 = load i32, i32* @NN_SWS_RETURN_CLOSE_HANDSHAKE, align 4
  %169 = call i32 @nn_fsm_raise(i32* %165, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %160, %141
  %171 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %171)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nn_assert_state(%struct.nn_sws*, i32) #2

declare dso_local i32 @nn_pipebase_stop(i32*) #2

declare dso_local i32 @nn_msg_array_term(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @nn_assert(i32) #2

declare dso_local i32 @nn_random_generate(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @nn_puts(i8*, i32) #2

declare dso_local i32 @nn_sws_mask_payload(i8*, i64, i8*, i32, i32*) #2

declare dso_local i32 @nn_usock_send(i32, %struct.nn_iovec*, i32) #2

declare dso_local i32 @nn_fsm_raise(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
