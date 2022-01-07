; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_handle_alpn.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_handle_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__*, i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8, i32* }
%struct.TYPE_13__ = type { i8, i64, i32*, i64, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)*, i32 }

@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_HANDLE_ALPN = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@SSL_AD_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4
@SSL_R_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_handle_alpn(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8 0, i8* %5, align 1
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)*, i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)* %12, null
  br i1 %13, label %14, label %177

14:                                               ; preds = %1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %177

20:                                               ; preds = %14
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)*, i32 (%struct.TYPE_17__*, i8**, i8*, i32*, i32, i32)** %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %26(%struct.TYPE_17__* %27, i8** %4, i8* %5, i32* %31, i32 %36, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %165

47:                                               ; preds = %20
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @OPENSSL_free(i32* %51)
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %5, align 1
  %55 = call i8* @OPENSSL_memdup(i8* %53, i8 zeroext %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i32* %56, i32** %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %47
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %68 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %69 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_17__* %66, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %190

71:                                               ; preds = %47
  %72 = load i8, i8* %5, align 1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i8 %72, i8* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %108, label %86

86:                                               ; preds = %71
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 8
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %88, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %86
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i8, i8* %5, align 1
  %106 = call i64 @memcmp(i8* %98, i32* %104, i8 zeroext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %164

108:                                              ; preds = %97, %86, %71
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %163, label %116

116:                                              ; preds = %108
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @ossl_assert(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %116
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %130 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %131 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %132 = call i32 @SSLfatal(%struct.TYPE_17__* %128, i32 %129, i32 %130, i32 %131)
  store i32 0, i32* %2, align 4
  br label %190

133:                                              ; preds = %116
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %5, align 1
  %136 = call i8* @OPENSSL_memdup(i8* %134, i8 zeroext %135)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i32* %137, i32** %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %133
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %152 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %153 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %154 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %155 = call i32 @SSLfatal(%struct.TYPE_17__* %151, i32 %152, i32 %153, i32 %154)
  store i32 0, i32* %2, align 4
  br label %190

156:                                              ; preds = %133
  %157 = load i8, i8* %5, align 1
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  store i8 %157, i8* %162, align 8
  br label %163

163:                                              ; preds = %156, %108
  br label %164

164:                                              ; preds = %163, %97
  store i32 1, i32* %2, align 4
  br label %190

165:                                              ; preds = %20
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = load i32, i32* @SSL_AD_NO_APPLICATION_PROTOCOL, align 4
  %172 = load i32, i32* @SSL_F_TLS_HANDLE_ALPN, align 4
  %173 = load i32, i32* @SSL_R_NO_APPLICATION_PROTOCOL, align 4
  %174 = call i32 @SSLfatal(%struct.TYPE_17__* %170, i32 %171, i32 %172, i32 %173)
  store i32 0, i32* %2, align 4
  br label %190

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176, %14, %1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %185, %177
  store i32 1, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %169, %164, %150, %127, %65
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i8* @OPENSSL_memdup(i8*, i8 zeroext) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i8 zeroext) #1

declare dso_local i32 @ossl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
