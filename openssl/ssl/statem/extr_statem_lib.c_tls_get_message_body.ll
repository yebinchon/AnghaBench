; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_body.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i8*, i32, %struct.TYPE_16__*, i32, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, %struct.TYPE_15__, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i32, i32*, i8*, i64, i32, i64*)* }

@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i64 0, align 8
@SSL2_VERSION = common dso_local global i32 0, align 4
@SSL3_MT_NEWSESSION_TICKET = common dso_local global i64 0, align 8
@SSL3_MT_KEY_UPDATE = common dso_local global i64 0, align 8
@SSL3_MT_SERVER_HELLO = common dso_local global i64 0, align 8
@SSL3_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@hrrrandom = common dso_local global i32 0, align 4
@SERVER_HELLO_RANDOM_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_message_body(%struct.TYPE_17__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSL3_MT_CHANGE_CIPHER_SPEC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %5, align 8
  store i64 %20, i64* %21, align 8
  store i32 1, i32* %3, align 4
  br label %232

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %60, %22
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_17__*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.TYPE_17__*, i32, i32*, i8*, i64, i32, i64*)** %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i64, i64* %6, align 8
  %52 = call i32 %43(%struct.TYPE_17__* %44, i32 %45, i32* null, i8* %50, i64 %51, i32 0, i64* %7)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %38
  %56 = load i32, i32* @SSL_READING, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load i64*, i64** %5, align 8
  store i64 0, i64* %59, align 8
  store i32 0, i32* %3, align 4
  br label %232

60:                                               ; preds = %38
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SSL3_MT_FINISHED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = call i32 @ssl3_take_mac(%struct.TYPE_17__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i64*, i64** %5, align 8
  store i64 0, i64* %83, align 8
  store i32 0, i32* %3, align 4
  br label %232

84:                                               ; preds = %78, %69
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 7
  %87 = call i64 @RECORD_LAYER_is_sslv2_record(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %128

89:                                               ; preds = %84
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = bitcast i64* %95 to i8*
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ssl3_finish_mac(%struct.TYPE_17__* %90, i8* %96, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %89
  %103 = load i64*, i64** %5, align 8
  store i64 0, i64* %103, align 8
  store i32 0, i32* %3, align 4
  br label %232

104:                                              ; preds = %89
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 5
  %107 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %106, align 8
  %108 = icmp ne i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)* %107, null
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 5
  %112 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %111, align 8
  %113 = load i32, i32* @SSL2_VERSION, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %112(i32 0, i32 %113, i32 0, i64* %118, i64 %121, %struct.TYPE_17__* %122, i32 %125)
  br label %127

127:                                              ; preds = %109, %104
  br label %227

128:                                              ; preds = %84
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %130 = call i32 @SSL_IS_TLS13(%struct.TYPE_17__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SSL3_MT_NEWSESSION_TICKET, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %198

140:                                              ; preds = %132
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SSL3_MT_KEY_UPDATE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %198

148:                                              ; preds = %140, %128
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SSL3_MT_SERVER_HELLO, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %179, label %156

156:                                              ; preds = %148
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %161 = add i64 %160, 2
  %162 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %161, %163
  %165 = icmp ult i64 %159, %164
  br i1 %165, label %179, label %166

166:                                              ; preds = %156
  %167 = load i32, i32* @hrrrandom, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %174 = add i64 %173, 2
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %177 = call i64 @memcmp(i32 %167, i64* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %166, %156, %148
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = bitcast i64* %185 to i8*
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %191 = add i64 %189, %190
  %192 = call i32 @ssl3_finish_mac(%struct.TYPE_17__* %180, i8* %186, i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %179
  %195 = load i64*, i64** %5, align 8
  store i64 0, i64* %195, align 8
  store i32 0, i32* %3, align 4
  br label %232

196:                                              ; preds = %179
  br label %197

197:                                              ; preds = %196, %166
  br label %198

198:                                              ; preds = %197, %140, %132
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 5
  %201 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %200, align 8
  %202 = icmp ne i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)* %201, null
  br i1 %202, label %203, label %226

203:                                              ; preds = %198
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 5
  %206 = load i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)*, i32 (i32, i32, i32, i64*, i64, %struct.TYPE_17__*, i32)** %205, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %220 = add i64 %218, %219
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 %206(i32 0, i32 %209, i32 %210, i64* %215, i64 %220, %struct.TYPE_17__* %221, i32 %224)
  br label %226

226:                                              ; preds = %203, %198
  br label %227

227:                                              ; preds = %226, %127
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %5, align 8
  store i64 %230, i64* %231, align 8
  store i32 1, i32* %3, align 4
  br label %232

232:                                              ; preds = %227, %194, %102, %82, %55, %17
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @ssl3_take_mac(%struct.TYPE_17__*) #1

declare dso_local i64 @RECORD_LAYER_is_sslv2_record(i32*) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_17__*, i8*, i64) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_17__*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
