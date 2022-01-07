; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@kull_m_rpc_drsr_g_sKey = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@ENCRYPTED_PAYLOAD = common dso_local global i32 0, align 4
@EncryptedData = common dso_local global i32 0, align 4
@CheckSum = common dso_local global i32 0, align 4
@CALG_CRC32 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i32] [i32 67, i32 104, i32 101, i32 99, i32 107, i32 115, i32 117, i32 109, i32 115, i32 32, i32 100, i32 111, i32 110, i32 39, i32 116, i32 32, i32 109, i32 97, i32 116, i32 99, i32 104, i32 32, i32 40, i32 67, i32 58, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 82, i32 58, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [27 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 99, i32 97, i32 108, i32 99, i32 117, i32 108, i32 97, i32 116, i32 101, i32 32, i32 67, i32 82, i32 67, i32 51, i32 50, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 82, i32 116, i32 108, i32 69, i32 110, i32 99, i32 114, i32 121, i32 112, i32 116, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 82, i32 67, i32 52, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 78, i32 111, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 100, i32 97, i32 116, i32 97, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [16 x i32] [i32 78, i32 111, i32 32, i32 83, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 32, i32 75, i32 101, i32 121, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_rpc_drsr_ProcessGetNCChangesReply_decrypt(%struct.TYPE_19__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi %struct.TYPE_15__* [ %18, %17 ], [ @kull_m_rpc_drsr_g_sKey, %19 ]
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %6, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %27 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %30 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %32, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %154

43:                                               ; preds = %20
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %154

48:                                               ; preds = %43
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @ENCRYPTED_PAYLOAD, align 4
  %53 = load i32, i32* @EncryptedData, align 4
  %54 = call i64 @FIELD_OFFSET(i32 %52, i32 %53)
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %151

56:                                               ; preds = %48
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %151

61:                                               ; preds = %56
  %62 = call i32 @MD5Init(%struct.TYPE_17__* %8)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @MD5Update(%struct.TYPE_17__* %8, i64 %65, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @MD5Update(%struct.TYPE_17__* %8, i64 %72, i32 8)
  %74 = call i32 @MD5Final(%struct.TYPE_17__* %8)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @ENCRYPTED_PAYLOAD, align 4
  %79 = load i32, i32* @CheckSum, align 4
  %80 = call i64 @FIELD_OFFSET(i32 %78, i32 %79)
  %81 = sub nsw i64 %77, %80
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = ptrtoint i64* %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = call i32 @RtlEncryptDecryptRC4(%struct.TYPE_18__* %10, %struct.TYPE_18__* %9)
  %89 = call i64 @NT_SUCCESS(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %61
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @ENCRYPTED_PAYLOAD, align 4
  %96 = load i32, i32* @EncryptedData, align 4
  %97 = call i64 @FIELD_OFFSET(i32 %95, i32 %96)
  %98 = sub nsw i64 %94, %97
  store i64 %98, i64* %11, align 8
  %99 = load i32, i32* @CALG_CRC32, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @kull_m_crypto_hash(i32 %99, i32 %102, i64 %103, i64* %12, i32 8)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %91
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %13, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i64 @MIDL_user_allocate(i64 %116)
  %118 = inttoptr i64 %117 to i32*
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  store i32* %118, i32** %120, align 8
  %121 = icmp ne i32* %118, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %112
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @RtlCopyMemory(i32* %125, i32 %128, i64 %129)
  %131 = load i64, i64* %11, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %5, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @MIDL_user_free(i32* %135)
  br label %137

137:                                              ; preds = %122, %112
  br label %144

138:                                              ; preds = %106
  %139 = load i64, i64* %12, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([45 x i32]* @.str to i8*), i64 %139, i64 %142)
  br label %144

144:                                              ; preds = %138, %137
  br label %147

145:                                              ; preds = %91
  %146 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.1 to i8*))
  br label %147

147:                                              ; preds = %145, %144
  br label %150

148:                                              ; preds = %61
  %149 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([22 x i32]* @.str.2 to i8*))
  br label %150

150:                                              ; preds = %148, %147
  br label %153

151:                                              ; preds = %56, %48
  %152 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([15 x i32]* @.str.3 to i8*))
  br label %153

153:                                              ; preds = %151, %150
  br label %156

154:                                              ; preds = %43, %20
  %155 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([16 x i32]* @.str.4 to i8*))
  br label %156

156:                                              ; preds = %154, %153
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @MD5Init(%struct.TYPE_17__*) #1

declare dso_local i32 @MD5Update(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @MD5Final(%struct.TYPE_17__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlEncryptDecryptRC4(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @kull_m_crypto_hash(i32, i32, i64, i64*, i32) #1

declare dso_local i64 @MIDL_user_allocate(i64) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i64) #1

declare dso_local i32 @MIDL_user_free(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
