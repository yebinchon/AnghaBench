; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_SavePKCSToMem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_SavePKCSToMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(%d, %p)\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @CRYPT_SavePKCSToMem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_SavePKCSToMem(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %7, align 8
  %17 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i64 [ %26, %23 ], [ 0, %27 ]
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30, i32* %33)
  br label %35

35:                                               ; preds = %46, %28
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = call %struct.TYPE_12__* @CertEnumCertificatesInStore(i32 %36, %struct.TYPE_12__* %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %9, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %35, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 16
  %58 = trunc i64 %57 to i32
  %59 = call i8* @CryptMemAlloc(i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_15__*
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = icmp ne %struct.TYPE_15__* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %67 = call i32 @SetLastError(i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %12, align 4
  br label %100

69:                                               ; preds = %53
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = call %struct.TYPE_12__* @CertEnumCertificatesInStore(i32 %71, %struct.TYPE_12__* %72)
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %9, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %13, align 8
  br label %95

95:                                               ; preds = %76, %70
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = icmp ne %struct.TYPE_12__* %97, null
  br i1 %98, label %70, label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100, %49
  br label %102

102:                                              ; preds = %113, %101
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = call %struct.TYPE_11__* @CertEnumCRLsInStore(i32 %103, %struct.TYPE_11__* %104)
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %10, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %108, %102
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = icmp ne %struct.TYPE_11__* %114, null
  br i1 %115, label %102, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %168

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 16
  %125 = trunc i64 %124 to i32
  %126 = call i8* @CryptMemAlloc(i32 %125)
  %127 = bitcast i8* %126 to %struct.TYPE_15__*
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store %struct.TYPE_15__* %127, %struct.TYPE_15__** %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = icmp ne %struct.TYPE_15__* %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %120
  %133 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %134 = call i32 @SetLastError(i32 %133)
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %12, align 4
  br label %167

136:                                              ; preds = %120
  store i64 0, i64* %14, align 8
  br label %137

137:                                              ; preds = %163, %136
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %140 = call %struct.TYPE_11__* @CertEnumCRLsInStore(i32 %138, %struct.TYPE_11__* %139)
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %10, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %162

143:                                              ; preds = %137
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = load i64, i64* %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store i32 %146, i32* %151, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i64, i64* %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 4
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  br label %162

162:                                              ; preds = %143, %137
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %165 = icmp ne %struct.TYPE_11__* %164, null
  br i1 %165, label %137, label %166

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %132
  br label %168

168:                                              ; preds = %167, %116
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %210

171:                                              ; preds = %168
  %172 = call i32 @CRYPT_AsnEncodeCMSSignedInfo(%struct.TYPE_13__* %8, i32* null, i64* %11)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %209

175:                                              ; preds = %171
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %175
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  br label %208

184:                                              ; preds = %175
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %11, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load i64, i64* %11, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* @ERROR_MORE_DATA, align 4
  %195 = call i32 @SetLastError(i32 %194)
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %12, align 4
  br label %207

197:                                              ; preds = %184
  %198 = load i64, i64* %11, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = call i32 @CRYPT_AsnEncodeCMSSignedInfo(%struct.TYPE_13__* %8, i32* %203, i64* %205)
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %197, %190
  br label %208

208:                                              ; preds = %207, %180
  br label %209

209:                                              ; preds = %208, %171
  br label %210

210:                                              ; preds = %209, %168
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = call i32 @CryptMemFree(%struct.TYPE_15__* %212)
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = call i32 @CryptMemFree(%struct.TYPE_15__* %215)
  %217 = load i32, i32* %12, align 4
  %218 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %12, align 4
  ret i32 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local %struct.TYPE_12__* @CertEnumCertificatesInStore(i32, %struct.TYPE_12__*) #2

declare dso_local i8* @CryptMemAlloc(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local %struct.TYPE_11__* @CertEnumCRLsInStore(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @CRYPT_AsnEncodeCMSSignedInfo(%struct.TYPE_13__*, i32*, i64*) #2

declare dso_local i32 @CryptMemFree(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
