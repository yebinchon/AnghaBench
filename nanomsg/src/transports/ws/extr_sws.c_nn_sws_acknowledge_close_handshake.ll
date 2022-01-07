; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_acknowledge_close_handshake.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_acknowledge_close_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sws = type { i64, i32* }

@NN_SWS_CLOSE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NN_SWS_CLOSE_CODE_LEN = common dso_local global i64 0, align 8
@NN_SWS_CLOSE_ERR_PROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid UTF-8 sent as Close Reason.\00", align 1
@NN_SWS_CLOSE_GOING_AWAY = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_WUT = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_INVALID_FRAME = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_POLICY = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_TOOBIG = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_EXTENSION = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_SERVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unrecognized close code.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_sws*)* @nn_sws_acknowledge_close_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sws_acknowledge_close_handshake(%struct.nn_sws* %0) #0 {
  %2 = alloca %struct.nn_sws*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nn_sws* %0, %struct.nn_sws** %2, align 8
  %7 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %8 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %11 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %17 = load i32, i32* @NN_SWS_CLOSE_NORMAL, align 4
  %18 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %16, i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %124

19:                                               ; preds = %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NN_SWS_CLOSE_CODE_LEN, align 8
  %22 = icmp uge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @nn_assert(i32 %23)
  %25 = load i64, i64* @NN_SWS_CLOSE_CODE_LEN, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* @NN_SWS_CLOSE_CODE_LEN, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %28
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %40, %19
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @nn_utf8_code_point(i32* %35, i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @nn_assert(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %3, align 8
  br label %31

55:                                               ; preds = %34
  %56 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %57 = load i32, i32* @NN_SWS_CLOSE_ERR_PROTO, align 4
  %58 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %56, i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %124

59:                                               ; preds = %31
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @nn_assert(i32 %62)
  %64 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %65 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @nn_gets(i32* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @NN_SWS_CLOSE_NORMAL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %115, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @NN_SWS_CLOSE_GOING_AWAY, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %115, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @NN_SWS_CLOSE_ERR_PROTO, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %115, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @NN_SWS_CLOSE_ERR_WUT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %115, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @NN_SWS_CLOSE_ERR_INVALID_FRAME, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %115, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @NN_SWS_CLOSE_ERR_POLICY, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %115, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @NN_SWS_CLOSE_ERR_TOOBIG, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %115, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @NN_SWS_CLOSE_ERR_EXTENSION, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %115, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @NN_SWS_CLOSE_ERR_SERVER, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = icmp sge i32 %104, 3000
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp sle i32 %107, 3999
  br i1 %108, label %115, label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %4, align 4
  %111 = icmp sge i32 %110, 4000
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = icmp sle i32 %113, 4999
  br i1 %114, label %115, label %119

115:                                              ; preds = %112, %106, %99, %95, %91, %87, %83, %79, %75, %71, %59
  %116 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %116, i32 %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %123

119:                                              ; preds = %112, %109
  %120 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %121 = load i32, i32* @NN_SWS_CLOSE_ERR_PROTO, align 4
  %122 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %120, i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %55, %15
  ret void
}

declare dso_local i32 @nn_sws_fail_conn(%struct.nn_sws*, i32, i8*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_utf8_code_point(i32*, i64) #1

declare dso_local i32 @nn_gets(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
