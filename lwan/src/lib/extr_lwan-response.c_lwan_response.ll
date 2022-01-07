; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-response.c_lwan_response.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-response.c_lwan_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32, %struct.lwan_response }
%struct.lwan_response = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.lwan_request.0*, i32)*, i32 }
%struct.lwan_request.0 = type opaque
%struct.iovec = type { i8*, i64 }

@DEFAULT_HEADERS_SIZE = common dso_local global i32 0, align 4
@RESPONSE_CHUNKED_ENCODING = common dso_local global i32 0, align 4
@RESPONSE_SENT_HEADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Headers already sent, ignoring call\00", align 1
@RESPONSE_STREAM = common dso_local global i32 0, align 4
@HTTP_INTERNAL_ERROR = common dso_local global i32 0, align 4
@HTTP_CLASS__CLIENT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response(%struct.lwan_request* %0, i32 %1) #0 {
  %3 = alloca %struct.lwan_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lwan_response*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x %struct.iovec], align 16
  store %struct.lwan_request* %0, %struct.lwan_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %14 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %13, i32 0, i32 1
  store %struct.lwan_response* %14, %struct.lwan_response** %5, align 8
  %15 = load i32, i32* @DEFAULT_HEADERS_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %20 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RESPONSE_CHUNKED_ENCODING, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @UNLIKELY(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %28 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lwan_strbuf_reset(i32 %29)
  %31 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %32 = call i32 @lwan_response_send_chunk(%struct.lwan_request* %31)
  %33 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @log_request(%struct.lwan_request* %33, i32 %34)
  store i32 1, i32* %8, align 4
  br label %171

36:                                               ; preds = %2
  %37 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %38 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RESPONSE_SENT_HEADERS, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @UNLIKELY(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %171

46:                                               ; preds = %36
  %47 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %48 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @UNLIKELY(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @lwan_default_response(%struct.lwan_request* %56, i32 %57)
  store i32 1, i32* %8, align 4
  br label %171

59:                                               ; preds = %46
  %60 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @log_request(%struct.lwan_request* %60, i32 %61)
  %63 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %64 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RESPONSE_STREAM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %59
  %70 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %71 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.lwan_request.0*, i32)*, i32 (%struct.lwan_request.0*, i32)** %72, align 8
  %74 = bitcast i32 (%struct.lwan_request.0*, i32)* %73 to i32 (%struct.lwan_request*, i32)*
  %75 = call i64 @LIKELY(i32 (%struct.lwan_request*, i32)* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %79 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.lwan_request.0*, i32)*, i32 (%struct.lwan_request.0*, i32)** %80, align 8
  %82 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %83 = bitcast %struct.lwan_request* %82 to %struct.lwan_request.0*
  %84 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %85 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %81(%struct.lwan_request.0* %83, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; preds = %69
  %90 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %77
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @HTTP_CLASS__CLIENT_ERROR, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @RESPONSE_STREAM, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %99 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @lwan_default_response(%struct.lwan_request* %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %91
  store i32 1, i32* %8, align 4
  br label %171

106:                                              ; preds = %59
  %107 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = trunc i64 %16 to i32
  %110 = call i64 @lwan_prepare_response_header(%struct.lwan_request* %107, i32 %108, i8* %18, i32 %109)
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @UNLIKELY(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %119 = load i32, i32* @HTTP_INTERNAL_ERROR, align 4
  %120 = call i32 @lwan_default_response(%struct.lwan_request* %118, i32 %119)
  store i32 1, i32* %8, align 4
  br label %171

121:                                              ; preds = %106
  %122 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %123 = call i32 @lwan_request_get_method(%struct.lwan_request* %122)
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @has_response_body(i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @lwan_send(%struct.lwan_request* %128, i8* %18, i64 %129, i32 0)
  store i32 1, i32* %8, align 4
  br label %171

131:                                              ; preds = %121
  %132 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %133 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @lwan_strbuf_get_buffer(i32 %134)
  store i8* %135, i8** %10, align 8
  %136 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %137 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @lwan_strbuf_get_length(i32 %138)
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %9, align 8
  %141 = sub i64 %16, %140
  %142 = load i64, i64* %11, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %131
  %145 = load i64, i64* %9, align 8
  %146 = getelementptr inbounds i8, i8* %18, i64 %145
  %147 = load i8*, i8** %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @memcpy(i8* %146, i8* %147, i64 %148)
  %150 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %151, %152
  %154 = call i32 @lwan_send(%struct.lwan_request* %150, i8* %18, i64 %153, i32 0)
  br label %170

155:                                              ; preds = %131
  %156 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %157 = getelementptr inbounds %struct.iovec, %struct.iovec* %156, i32 0, i32 0
  store i8* %18, i8** %157, align 16
  %158 = getelementptr inbounds %struct.iovec, %struct.iovec* %156, i32 0, i32 1
  %159 = load i64, i64* %9, align 8
  store i64 %159, i64* %158, align 8
  %160 = getelementptr inbounds %struct.iovec, %struct.iovec* %156, i64 1
  %161 = getelementptr inbounds %struct.iovec, %struct.iovec* %160, i32 0, i32 0
  %162 = load i8*, i8** %10, align 8
  store i8* %162, i8** %161, align 16
  %163 = getelementptr inbounds %struct.iovec, %struct.iovec* %160, i32 0, i32 1
  %164 = load i64, i64* %11, align 8
  store i64 %164, i64* %163, align 8
  %165 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %166 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %167 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %168 = call i32 @N_ELEMENTS(%struct.iovec* %167)
  %169 = call i32 @lwan_writev(%struct.lwan_request* %165, %struct.iovec* %166, i32 %168)
  br label %170

170:                                              ; preds = %155, %144
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %170, %127, %117, %105, %55, %44, %26
  %172 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %8, align 4
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 1, label %174
  ]

174:                                              ; preds = %171, %171
  ret void

175:                                              ; preds = %171
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @lwan_strbuf_reset(i32) #2

declare dso_local i32 @lwan_response_send_chunk(%struct.lwan_request*) #2

declare dso_local i32 @log_request(%struct.lwan_request*, i32) #2

declare dso_local i32 @lwan_status_debug(i8*) #2

declare dso_local i32 @lwan_default_response(%struct.lwan_request*, i32) #2

declare dso_local i64 @LIKELY(i32 (%struct.lwan_request*, i32)*) #2

declare dso_local i64 @lwan_prepare_response_header(%struct.lwan_request*, i32, i8*, i32) #2

declare dso_local i32 @has_response_body(i32, i32) #2

declare dso_local i32 @lwan_request_get_method(%struct.lwan_request*) #2

declare dso_local i32 @lwan_send(%struct.lwan_request*, i8*, i64, i32) #2

declare dso_local i8* @lwan_strbuf_get_buffer(i32) #2

declare dso_local i64 @lwan_strbuf_get_length(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @lwan_writev(%struct.lwan_request*, %struct.iovec*, i32) #2

declare dso_local i32 @N_ELEMENTS(%struct.iovec*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
