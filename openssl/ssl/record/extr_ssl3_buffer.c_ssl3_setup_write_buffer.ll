; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_buffer.c_ssl3_setup_write_buffer.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_buffer.c_ssl3_setup_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64, i8* }

@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_OVERHEAD = common dso_local global i64 0, align 8
@SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS = common dso_local global i32 0, align 4
@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_F_SSL3_SETUP_WRITE_BUFFER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL3_ALIGN_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_setup_write_buffer(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i64 @SSL_IS_DTLS(%struct.TYPE_13__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_13__* %32)
  %34 = load i64, i64* @SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = call i64 @ssl_allow_compression(%struct.TYPE_13__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_OVERHEAD, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* @SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = call %struct.TYPE_12__* @RECORD_LAYER_get_wbuf(%struct.TYPE_11__* %65)
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %130, %63
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %73
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %13, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @OPENSSL_free(i8* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %80, %71
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @BIO_get_ktls_send(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %97, %92
  %104 = load i64, i64* %7, align 8
  %105 = call i8* @OPENSSL_malloc(i64 %104)
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %115 = load i32, i32* @SSL_F_SSL3_SETUP_WRITE_BUFFER, align 4
  %116 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %117 = call i32 @SSLfatal(%struct.TYPE_13__* %113, i32 %114, i32 %115, i32 %116)
  store i32 0, i32* %4, align 4
  br label %134

118:                                              ; preds = %103
  br label %120

119:                                              ; preds = %97
  store i8* null, i8** %8, align 8
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = call i32 @memset(%struct.TYPE_12__* %121, i32 0, i32 16)
  %123 = load i8*, i8** %8, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %87
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %12, align 8
  br label %67

133:                                              ; preds = %67
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %108
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_13__*) #1

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_13__*) #1

declare dso_local i64 @ssl_allow_compression(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @RECORD_LAYER_get_wbuf(%struct.TYPE_11__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_get_ktls_send(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
