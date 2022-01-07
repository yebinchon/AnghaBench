; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_status_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_status_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@TLSEXT_STATUSTYPE_ocsp = common dso_local global i64 0, align 8
@TLSEXT_STATUSTYPE_nothing = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@X509_EXTENSION_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_status_request(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %202

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %202

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = bitcast i64* %31 to i32*
  %33 = call i32 @PACKET_get_1(i32* %28, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %38 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %39 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %40 = call i32 @SSLfatal(%struct.TYPE_8__* %36, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %202

41:                                               ; preds = %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TLSEXT_STATUSTYPE_ocsp, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i64, i64* @TLSEXT_STATUSTYPE_nothing, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  store i32 1, i32* %6, align 4
  br label %202

53:                                               ; preds = %41
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @PACKET_get_length_prefixed_2(i32* %54, i32* %12)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %60 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %61 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_8__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %6, align 4
  br label %202

63:                                               ; preds = %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @sk_OCSP_RESPID_pop_free(i32* %68, i32 (i32*)* @OCSP_RESPID_free)
  %70 = call i64 @PACKET_remaining(i32* %12)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %63
  %73 = call i32* (...) @sk_OCSP_RESPID_new_null()
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32* %73, i32** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %87 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %88 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %89 = call i32 @SSLfatal(%struct.TYPE_8__* %85, i32 %86, i32 %87, i32 %88)
  store i32 0, i32* %6, align 4
  br label %202

90:                                               ; preds = %72
  br label %96

91:                                               ; preds = %63
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %91, %90
  br label %97

97:                                               ; preds = %154, %96
  %98 = call i64 @PACKET_remaining(i32* %12)
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %155

100:                                              ; preds = %97
  %101 = call i32 @PACKET_get_length_prefixed_2(i32* %12, i32* %15)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = call i64 @PACKET_remaining(i32* %15)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %109 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %110 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %111 = call i32 @SSLfatal(%struct.TYPE_8__* %107, i32 %108, i32 %109, i32 %110)
  store i32 0, i32* %6, align 4
  br label %202

112:                                              ; preds = %103
  %113 = call i8* @PACKET_data(i32* %15)
  store i8* %113, i8** %16, align 8
  %114 = call i64 @PACKET_remaining(i32* %15)
  %115 = trunc i64 %114 to i32
  %116 = call i32* @d2i_OCSP_RESPID(i32* null, i8** %16, i32 %115)
  store i32* %116, i32** %14, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %122 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %123 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %124 = call i32 @SSLfatal(%struct.TYPE_8__* %120, i32 %121, i32 %122, i32 %123)
  store i32 0, i32* %6, align 4
  br label %202

125:                                              ; preds = %112
  %126 = load i8*, i8** %16, align 8
  %127 = call i8* @PACKET_end(i32* %15)
  %128 = icmp ne i8* %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @OCSP_RESPID_free(i32* %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %134 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %135 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %136 = call i32 @SSLfatal(%struct.TYPE_8__* %132, i32 %133, i32 %134, i32 %135)
  store i32 0, i32* %6, align 4
  br label %202

137:                                              ; preds = %125
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @sk_OCSP_RESPID_push(i32* %142, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %137
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @OCSP_RESPID_free(i32* %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %151 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %152 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %153 = call i32 @SSLfatal(%struct.TYPE_8__* %149, i32 %150, i32 %151, i32 %152)
  store i32 0, i32* %6, align 4
  br label %202

154:                                              ; preds = %137
  br label %97

155:                                              ; preds = %97
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @PACKET_as_length_prefixed_2(i32* %156, i32* %13)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %161 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %162 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %163 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %164 = call i32 @SSLfatal(%struct.TYPE_8__* %160, i32 %161, i32 %162, i32 %163)
  store i32 0, i32* %6, align 4
  br label %202

165:                                              ; preds = %155
  %166 = call i64 @PACKET_remaining(i32* %13)
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %201

168:                                              ; preds = %165
  %169 = call i8* @PACKET_data(i32* %13)
  store i8* %169, i8** %17, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @X509_EXTENSION_free, align 4
  %176 = call i32 @sk_X509_EXTENSION_pop_free(i32* %174, i32 %175)
  %177 = call i64 @PACKET_remaining(i32* %13)
  %178 = trunc i64 %177 to i32
  %179 = call i32* @d2i_X509_EXTENSIONS(i32* null, i8** %17, i32 %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i32* %179, i32** %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %168
  %191 = load i8*, i8** %17, align 8
  %192 = call i8* @PACKET_end(i32* %13)
  %193 = icmp ne i8* %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190, %168
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %196 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %197 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, align 4
  %198 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %199 = call i32 @SSLfatal(%struct.TYPE_8__* %195, i32 %196, i32 %197, i32 %198)
  store i32 0, i32* %6, align 4
  br label %202

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %165
  store i32 1, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %194, %159, %146, %129, %119, %106, %84, %57, %48, %35, %26, %22
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @sk_OCSP_RESPID_pop_free(i32*, i32 (i32*)*) #1

declare dso_local i32 @OCSP_RESPID_free(i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32* @sk_OCSP_RESPID_new_null(...) #1

declare dso_local i8* @PACKET_data(i32*) #1

declare dso_local i32* @d2i_OCSP_RESPID(i32*, i8**, i32) #1

declare dso_local i8* @PACKET_end(i32*) #1

declare dso_local i32 @sk_OCSP_RESPID_push(i32*, i32*) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @sk_X509_EXTENSION_pop_free(i32*, i32) #1

declare dso_local i32* @d2i_X509_EXTENSIONS(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
