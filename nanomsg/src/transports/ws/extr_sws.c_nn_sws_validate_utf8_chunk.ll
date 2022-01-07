; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_validate_utf8_chunk.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_sws.c_nn_sws_validate_utf8_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sws = type { i64, i32, i32, i32, i64, i32*, i32* }

@NN_SWS_UTF8_MAX_CODEPOINT_LEN = common dso_local global i64 0, align 8
@NN_SWS_UTF8_INVALID = common dso_local global i32 0, align 4
@NN_SWS_CLOSE_ERR_INVALID_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Invalid UTF-8 code point split on previous frame.\00", align 1
@NN_SWS_UTF8_FRAGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Truncated UTF-8 payload with invalid code point.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid UTF-8 code point in payload.\00", align 1
@NN_SWS_INSTATE_RECVD_CHUNKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_sws*)* @nn_sws_validate_utf8_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sws_validate_utf8_chunk(%struct.nn_sws* %0) #0 {
  %2 = alloca %struct.nn_sws*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nn_sws* %0, %struct.nn_sws** %2, align 8
  %6 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %7 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %10 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %13 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %1
  %17 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %18 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @NN_SWS_UTF8_MAX_CODEPOINT_LEN, align 8
  %22 = icmp ult i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @nn_assert(i32 %23)
  br label %25

25:                                               ; preds = %84, %16
  %26 = load i64, i64* %5, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %32 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %35 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32 %30, i32* %38, align 4
  %39 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %40 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %5, align 8
  %47 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %48 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %51 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = call i32 @nn_utf8_code_point(i32* %49, i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %28
  br label %85

58:                                               ; preds = %28
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %64 = load i32, i32* @NN_SWS_CLOSE_ERR_INVALID_FRAME, align 4
  %65 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %63, i32 %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %197

66:                                               ; preds = %58
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %72 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %77 = load i32, i32* @NN_SWS_CLOSE_ERR_INVALID_FRAME, align 4
  %78 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %76, i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %197

79:                                               ; preds = %70
  %80 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %81 = call i32 @nn_sws_recv_hdr(%struct.nn_sws* %80)
  br label %197

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  br label %25

85:                                               ; preds = %57, %25
  br label %86

86:                                               ; preds = %85, %1
  %87 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %88 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @NN_SWS_UTF8_MAX_CODEPOINT_LEN, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @nn_assert(i32 0)
  br label %95

95:                                               ; preds = %93, %86
  br label %96

96:                                               ; preds = %169, %105, %95
  %97 = load i64, i64* %5, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %170

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @nn_utf8_code_point(i32* %100, i64 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load i64, i64* %5, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp uge i64 %106, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @nn_assert(i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %5, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %5, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %3, align 8
  br label %96

120:                                              ; preds = %99
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @NN_SWS_UTF8_INVALID, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %126 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  %127 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %128 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @NN_SWS_UTF8_MAX_CODEPOINT_LEN, align 8
  %131 = call i32 @memset(i32* %129, i32 0, i64 %130)
  %132 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %133 = load i32, i32* @NN_SWS_CLOSE_ERR_INVALID_FRAME, align 4
  %134 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %132, i32 %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %197

135:                                              ; preds = %120
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @NN_SWS_UTF8_FRAGMENT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load i64, i64* %5, align 8
  %141 = load i64, i64* @NN_SWS_UTF8_MAX_CODEPOINT_LEN, align 8
  %142 = icmp ult i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @nn_assert(i32 %143)
  %145 = load i64, i64* %5, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %148 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %150 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @memcpy(i32* %151, i32* %152, i64 %153)
  %155 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %156 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %139
  %160 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %161 = load i32, i32* @NN_SWS_CLOSE_ERR_INVALID_FRAME, align 4
  %162 = call i32 @nn_sws_fail_conn(%struct.nn_sws* %160, i32 %161, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %166

163:                                              ; preds = %139
  %164 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %165 = call i32 @nn_sws_recv_hdr(%struct.nn_sws* %164)
  br label %166

166:                                              ; preds = %163, %159
  br label %197

167:                                              ; preds = %135
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %96

170:                                              ; preds = %96
  %171 = load i64, i64* %5, align 8
  %172 = icmp eq i64 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @nn_assert(i32 %173)
  %175 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %176 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %175, i32 0, i32 1
  store i32 0, i32* %176, align 8
  %177 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %178 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @NN_SWS_UTF8_MAX_CODEPOINT_LEN, align 8
  %181 = call i32 @memset(i32* %179, i32 0, i64 %180)
  %182 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %183 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %170
  %187 = load i32, i32* @NN_SWS_INSTATE_RECVD_CHUNKED, align 4
  %188 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %189 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 8
  %190 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %191 = getelementptr inbounds %struct.nn_sws, %struct.nn_sws* %190, i32 0, i32 2
  %192 = call i32 @nn_pipebase_received(i32* %191)
  br label %196

193:                                              ; preds = %170
  %194 = load %struct.nn_sws*, %struct.nn_sws** %2, align 8
  %195 = call i32 @nn_sws_recv_hdr(%struct.nn_sws* %194)
  br label %196

196:                                              ; preds = %193, %186
  br label %197

197:                                              ; preds = %196, %166, %124, %79, %75, %62
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_utf8_code_point(i32*, i64) #1

declare dso_local i32 @nn_sws_fail_conn(%struct.nn_sws*, i32, i8*) #1

declare dso_local i32 @nn_sws_recv_hdr(%struct.nn_sws*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @nn_pipebase_received(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
