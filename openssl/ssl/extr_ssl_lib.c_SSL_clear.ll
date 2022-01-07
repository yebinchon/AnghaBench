; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i64, i32*, i32, %struct.TYPE_12__, i32*, i32, i64, i32*, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32* }
%struct.TYPE_14__ = type { {}*, {}*, {}*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32* }

@SSL_F_SSL_CLEAR = common dso_local global i32 0, align 4
@SSL_R_NO_METHOD_SPECIFIED = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_clear(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %7 = icmp eq %struct.TYPE_14__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @SSL_F_SSL_CLEAR, align 4
  %10 = load i32, i32* @SSL_R_NO_METHOD_SPECIFIED, align 4
  %11 = call i32 @SSLerr(i32 %9, i32 %10)
  store i32 0, i32* %2, align 4
  br label %174

12:                                               ; preds = %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = call i64 @ssl_clear_bad_session(%struct.TYPE_15__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 23
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @SSL_SESSION_free(i32* %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 23
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %12
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 22
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @SSL_SESSION_free(i32* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 22
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 21
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @OPENSSL_free(i32* %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 21
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 20
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 19
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 18
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 17
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 16
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 15
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 14
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %23
  %53 = load i32, i32* @SSL_F_SSL_CLEAR, align 4
  %54 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %55 = call i32 @SSLerr(i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %174

56:                                               ; preds = %23
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = call i32 @ossl_statem_clear(%struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @SSL_NOTHING, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 10
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @BUF_MEM_free(i32* %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 10
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = call i32 @clear_ciphers(%struct.TYPE_15__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 9
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @SSL_KEY_UPDATE_NONE, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @EVP_MD_CTX_free(i32* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 7
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 -1, i32* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 -1, i32* %98, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @X509_free(i32* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @X509_VERIFY_PARAM_move_peername(i32 %112, i32* null)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @OPENSSL_free(i32* %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 4
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = icmp ne %struct.TYPE_14__* %124, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %56
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = bitcast {}** %135 to i32 (%struct.TYPE_15__*)**
  %137 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = call i32 %137(%struct.TYPE_15__* %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  store %struct.TYPE_14__* %144, %struct.TYPE_14__** %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = bitcast {}** %150 to i32 (%struct.TYPE_15__*)**
  %152 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %151, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = call i32 %152(%struct.TYPE_15__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %174

157:                                              ; preds = %131
  br label %170

158:                                              ; preds = %56
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = bitcast {}** %162 to i32 (%struct.TYPE_15__*)**
  %164 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = call i32 %164(%struct.TYPE_15__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %174

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %157
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = call i32 @RECORD_LAYER_clear(i32* %172)
  store i32 1, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %168, %156, %52, %8
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @ssl_clear_bad_session(%struct.TYPE_15__*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @ossl_statem_clear(%struct.TYPE_15__*) #1

declare dso_local i32 @BUF_MEM_free(i32*) #1

declare dso_local i32 @clear_ciphers(%struct.TYPE_15__*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_move_peername(i32, i32*) #1

declare dso_local i32 @RECORD_LAYER_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
