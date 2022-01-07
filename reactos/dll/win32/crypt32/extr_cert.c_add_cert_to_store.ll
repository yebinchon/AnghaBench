; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_add_cert_to_store.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_add_cert_to_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_25__*, i32*, i32*, i32**, i64)* }
%struct.TYPE_26__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@CERT_HASH_PROP_ID = common dso_local global i32 0, align 4
@CERT_FIND_SHA1_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unimplemented add disposition %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"found matching certificate, not adding\0A\00", align 1
@CRYPT_E_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"CERT_STORE_ADD_REPLACE_EXISTING_INHERIT_PROPERTIES: semi-stub for links\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"CERT_STORE_ADD_USE_EXISTING: semi-stub for links\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"existing certificate is newer, not adding\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i64, %struct.TYPE_26__**)* @add_cert_to_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_cert_to_store(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32 %2, i64 %3, %struct.TYPE_26__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__**, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [20 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_26__** %4, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %12, align 8
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %41 [
    i32 134, label %22
    i32 133, label %23
    i32 130, label %23
    i32 129, label %23
    i32 128, label %23
    i32 132, label %23
    i32 131, label %23
  ]

22:                                               ; preds = %5
  br label %47

23:                                               ; preds = %5, %5, %5, %5, %5, %5
  store i32 80, i32* %17, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %25 = load i32, i32* @CERT_HASH_PROP_ID, align 4
  %26 = getelementptr inbounds [20 x i32], [20 x i32]* %16, i64 0, i64 0
  %27 = call i64 @CertGetCertificateContextProperty(%struct.TYPE_26__* %24, i32 %25, i32* %26, i32* %17)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  store i32 80, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %16, i64 0, i64 0
  store i32* %33, i32** %32, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CERT_FIND_SHA1_HASH, align 4
  %39 = call %struct.TYPE_26__* @CertFindCertificateInStore(%struct.TYPE_25__* %34, i32 %37, i32 0, i32 %38, %struct.TYPE_27__* %18, i32* null)
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %12, align 8
  br label %40

40:                                               ; preds = %30, %23
  br label %47

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @E_INVALIDARG, align 4
  %45 = call i32 @SetLastError(i32 %44)
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %6, align 8
  br label %205

47:                                               ; preds = %40, %22
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %134 [
    i32 134, label %49
    i32 133, label %50
    i32 130, label %59
    i32 129, label %60
    i32 128, label %71
    i32 132, label %92
    i32 131, label %112
  ]

49:                                               ; preds = %47
  br label %134

50:                                               ; preds = %47
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %52 = icmp ne %struct.TYPE_26__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @CRYPT_E_EXISTS, align 4
  %56 = call i32 @SetLastError(i32 %55)
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %6, align 8
  br label %205

58:                                               ; preds = %50
  br label %134

59:                                               ; preds = %47
  br label %134

60:                                               ; preds = %47
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %67 = icmp ne %struct.TYPE_26__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %68, %65
  br label %134

71:                                               ; preds = %47
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %78 = icmp ne %struct.TYPE_26__* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %82 = call i32 @Context_CopyProperties(%struct.TYPE_26__* %80, %struct.TYPE_26__* %81)
  %83 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %84 = icmp ne %struct.TYPE_26__** %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %87 = call %struct.TYPE_26__* @CertDuplicateCertificateContext(%struct.TYPE_26__* %86)
  %88 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* %87, %struct.TYPE_26__** %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %6, align 8
  br label %205

91:                                               ; preds = %76
  br label %134

92:                                               ; preds = %47
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %94 = icmp ne %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = call i32 @CompareFileTime(i32* %99, i32* %103)
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @CRYPT_E_EXISTS, align 4
  %109 = call i32 @SetLastError(i32 %108)
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %6, align 8
  br label %205

111:                                              ; preds = %95, %92
  br label %134

112:                                              ; preds = %47
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %114 = icmp ne %struct.TYPE_26__* %113, null
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = call i32 @CompareFileTime(i32* %119, i32* %123)
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @CRYPT_E_EXISTS, align 4
  %129 = call i32 @SetLastError(i32 %128)
  %130 = load i64, i64* @FALSE, align 8
  store i64 %130, i64* %6, align 8
  br label %205

131:                                              ; preds = %115
  %132 = load i64, i64* @TRUE, align 8
  store i64 %132, i64* %14, align 8
  br label %133

133:                                              ; preds = %131, %112
  br label %134

134:                                              ; preds = %47, %133, %111, %91, %70, %59, %58, %49
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %136 = icmp ne %struct.TYPE_25__* %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %139 = icmp ne %struct.TYPE_26__** %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %142 = call %struct.TYPE_26__* @CertDuplicateCertificateContext(%struct.TYPE_26__* %141)
  %143 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %143, align 8
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %6, align 8
  br label %205

146:                                              ; preds = %134
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i64 (%struct.TYPE_25__*, i32*, i32*, i32**, i64)*, i64 (%struct.TYPE_25__*, i32*, i32*, i32**, i64)** %151, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %155 = call i32* @context_from_ptr(%struct.TYPE_26__* %154)
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %157 = icmp ne %struct.TYPE_26__* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %160 = call i32* @context_from_ptr(%struct.TYPE_26__* %159)
  br label %162

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i32* [ %160, %158 ], [ null, %161 ]
  %164 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %165 = icmp ne %struct.TYPE_26__** %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i64, i64* %14, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %162
  br label %171

170:                                              ; preds = %166
  br label %171

171:                                              ; preds = %170, %169
  %172 = phi i32** [ %15, %169 ], [ null, %170 ]
  %173 = load i64, i64* %10, align 8
  %174 = call i64 %152(%struct.TYPE_25__* %153, i32* %155, i32* %163, i32** %172, i64 %173)
  store i64 %174, i64* %13, align 8
  %175 = load i64, i64* %13, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %171
  %178 = load i64, i64* @FALSE, align 8
  store i64 %178, i64* %6, align 8
  br label %205

179:                                              ; preds = %171
  %180 = load i64, i64* %14, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i32*, i32** %15, align 8
  %184 = call %struct.TYPE_26__* @context_ptr(i32* %183)
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %186 = call i32 @Context_CopyProperties(%struct.TYPE_26__* %184, %struct.TYPE_26__* %185)
  br label %187

187:                                              ; preds = %182, %179
  %188 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %189 = icmp ne %struct.TYPE_26__** %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32*, i32** %15, align 8
  %192 = call %struct.TYPE_26__* @context_ptr(i32* %191)
  %193 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* %192, %struct.TYPE_26__** %193, align 8
  br label %201

194:                                              ; preds = %187
  %195 = load i32*, i32** %15, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @Context_Release(i32* %198)
  br label %200

200:                                              ; preds = %197, %194
  br label %201

201:                                              ; preds = %200, %190
  %202 = load i64, i64* %13, align 8
  %203 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %202)
  %204 = load i64, i64* %13, align 8
  store i64 %204, i64* %6, align 8
  br label %205

205:                                              ; preds = %201, %177, %144, %126, %106, %89, %53, %41
  %206 = load i64, i64* %6, align 8
  ret i64 %206
}

declare dso_local i64 @CertGetCertificateContextProperty(%struct.TYPE_26__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @CertFindCertificateInStore(%struct.TYPE_25__*, i32, i32, i32, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @Context_CopyProperties(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @CertDuplicateCertificateContext(%struct.TYPE_26__*) #1

declare dso_local i32 @CompareFileTime(i32*, i32*) #1

declare dso_local i32* @context_from_ptr(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @context_ptr(i32*) #1

declare dso_local i32 @Context_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
