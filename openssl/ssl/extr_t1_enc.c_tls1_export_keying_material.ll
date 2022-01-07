; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_enc.c_tls1_export_keying_material.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_enc.c_tls1_export_keying_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@TLS_MD_CLIENT_FINISH_CONST = common dso_local global i32 0, align 4
@TLS_MD_CLIENT_FINISH_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_SERVER_FINISH_CONST = common dso_local global i32 0, align 4
@TLS_MD_SERVER_FINISH_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_MASTER_SECRET_CONST = common dso_local global i32 0, align 4
@TLS_MD_MASTER_SECRET_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_EXTENDED_MASTER_SECRET_CONST = common dso_local global i32 0, align 4
@TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_KEY_EXPANSION_CONST = common dso_local global i32 0, align 4
@TLS_MD_KEY_EXPANSION_CONST_SIZE = common dso_local global i32 0, align 4
@SSL_F_TLS1_EXPORT_KEYING_MATERIAL = common dso_local global i32 0, align 4
@SSL_R_TLS_ILLEGAL_EXPORTER_LABEL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_export_keying_material(%struct.TYPE_8__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add i64 %21, %24
  store i64 %25, i64* %18, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = load i64, i64* %15, align 8
  %30 = add i64 2, %29
  %31 = load i64, i64* %18, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %18, align 8
  br label %33

33:                                               ; preds = %28, %8
  %34 = load i64, i64* %18, align 8
  %35 = call i8* @OPENSSL_malloc(i64 %34)
  store i8* %35, i8** %17, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %166

39:                                               ; preds = %33
  store i64 0, i64* %19, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i64, i64* %19, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %19, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %19, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i64, i64* %19, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @memcpy(i8* %51, i8* %55, i64 %57)
  %59 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %19, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %19, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i64, i64* %19, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 @memcpy(i8* %65, i8* %69, i64 %71)
  %73 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %19, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %19, align 8
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %39
  %80 = load i64, i64* %15, align 8
  %81 = lshr i64 %80, 8
  %82 = and i64 %81, 255
  %83 = trunc i64 %82 to i8
  %84 = load i8*, i8** %17, align 8
  %85 = load i64, i64* %19, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 %83, i8* %86, align 1
  %87 = load i64, i64* %19, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %15, align 8
  %90 = and i64 %89, 255
  %91 = trunc i64 %90 to i8
  %92 = load i8*, i8** %17, align 8
  %93 = load i64, i64* %19, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8 %91, i8* %94, align 1
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %19, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %79
  %100 = load i8*, i8** %14, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %99, %79
  %103 = load i8*, i8** %17, align 8
  %104 = load i64, i64* %19, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8*, i8** %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @memcpy(i8* %105, i8* %106, i64 %107)
  br label %109

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109, %39
  %111 = load i8*, i8** %17, align 8
  %112 = load i32, i32* @TLS_MD_CLIENT_FINISH_CONST, align 4
  %113 = load i32, i32* @TLS_MD_CLIENT_FINISH_CONST_SIZE, align 4
  %114 = call i64 @memcmp(i8* %111, i32 %112, i32 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %162

117:                                              ; preds = %110
  %118 = load i8*, i8** %17, align 8
  %119 = load i32, i32* @TLS_MD_SERVER_FINISH_CONST, align 4
  %120 = load i32, i32* @TLS_MD_SERVER_FINISH_CONST_SIZE, align 4
  %121 = call i64 @memcmp(i8* %118, i32 %119, i32 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %162

124:                                              ; preds = %117
  %125 = load i8*, i8** %17, align 8
  %126 = load i32, i32* @TLS_MD_MASTER_SECRET_CONST, align 4
  %127 = load i32, i32* @TLS_MD_MASTER_SECRET_CONST_SIZE, align 4
  %128 = call i64 @memcmp(i8* %125, i32 %126, i32 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %162

131:                                              ; preds = %124
  %132 = load i8*, i8** %17, align 8
  %133 = load i32, i32* @TLS_MD_EXTENDED_MASTER_SECRET_CONST, align 4
  %134 = load i32, i32* @TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE, align 4
  %135 = call i64 @memcmp(i8* %132, i32 %133, i32 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %162

138:                                              ; preds = %131
  %139 = load i8*, i8** %17, align 8
  %140 = load i32, i32* @TLS_MD_KEY_EXPANSION_CONST, align 4
  %141 = load i32, i32* @TLS_MD_KEY_EXPANSION_CONST_SIZE, align 4
  %142 = call i64 @memcmp(i8* %139, i32 %140, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %162

145:                                              ; preds = %138
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i32 @tls1_PRF(%struct.TYPE_8__* %146, i8* %147, i64 %148, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32 %153, i32 %158, i8* %159, i64 %160, i32 0)
  store i32 %161, i32* %20, align 4
  br label %170

162:                                              ; preds = %144, %137, %130, %123, %116
  %163 = load i32, i32* @SSL_F_TLS1_EXPORT_KEYING_MATERIAL, align 4
  %164 = load i32, i32* @SSL_R_TLS_ILLEGAL_EXPORTER_LABEL, align 4
  %165 = call i32 @SSLerr(i32 %163, i32 %164)
  store i32 0, i32* %20, align 4
  br label %170

166:                                              ; preds = %38
  %167 = load i32, i32* @SSL_F_TLS1_EXPORT_KEYING_MATERIAL, align 4
  %168 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %169 = call i32 @SSLerr(i32 %167, i32 %168)
  store i32 0, i32* %20, align 4
  br label %170

170:                                              ; preds = %166, %162, %145
  %171 = load i8*, i8** %17, align 8
  %172 = load i64, i64* %18, align 8
  %173 = call i32 @OPENSSL_clear_free(i8* %171, i64 %172)
  %174 = load i32, i32* %20, align 4
  ret i32 %174
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @tls1_PRF(%struct.TYPE_8__*, i8*, i64, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
