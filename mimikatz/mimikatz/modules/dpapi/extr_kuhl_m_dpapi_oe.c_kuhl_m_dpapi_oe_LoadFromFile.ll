; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_LoadFromFile.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_LoadFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_13__**, %struct.TYPE_11__**, %struct.TYPE_10__**, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__*, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i32] [i32 82, i32 101, i32 97, i32 100, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 79, i32 75, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [34 x i32] [i32 32, i32 42, i32 32, i32 37, i32 51, i32 117, i32 47, i32 37, i32 51, i32 117, i32 32, i32 77, i32 97, i32 115, i32 116, i32 101, i32 114, i32 75, i32 101, i32 121, i32 40, i32 115, i32 41, i32 32, i32 105, i32 109, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@gDPAPI_Credentials = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [35 x i32] [i32 32, i32 42, i32 32, i32 37, i32 51, i32 117, i32 47, i32 37, i32 51, i32 117, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 40, i32 115, i32 41, i32 32, i32 105, i32 109, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [34 x i32] [i32 32, i32 42, i32 32, i32 37, i32 51, i32 117, i32 47, i32 37, i32 51, i32 117, i32 32, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 75, i32 101, i32 121, i32 40, i32 115, i32 41, i32 32, i32 105, i32 109, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [21 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_oe_LoadFromFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  %11 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 56, i1 false)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str to i8*), i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @kull_m_file_readData(i32 %14, i32* %4, i64* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %197

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @kull_m_dpapi_oe_DecodeDpapiEntries(i32 %19, i64 %20, %struct.TYPE_15__* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %194

23:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %31, i64 %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @kuhl_m_dpapi_oe_masterkey_add(i32* %35, i32 %42, i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %24

52:                                               ; preds = %24
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.2 to i8*), i64 %53, i64 %55)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %138, %52
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %141

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %64, i64 %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %71, i64 %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %62
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %82, i64 %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  br label %88

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %80
  %89 = phi i32* [ %86, %80 ], [ null, %87 ]
  %90 = call i32 @kuhl_m_dpapi_oe_credential_get(i32 %69, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %137, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @LPTR, align 4
  %94 = call i64 @LocalAlloc(i32 %93, i32 4)
  %95 = inttoptr i64 %94 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %9, align 8
  %96 = icmp ne %struct.TYPE_14__* %95, null
  br i1 %96, label %97, label %136

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %101, i64 %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = bitcast %struct.TYPE_11__* %99 to i8*
  %106 = bitcast %struct.TYPE_11__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %108, i64 %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_wcsdup(i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gDPAPI_Credentials, i32 0, i32 0), align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store %struct.TYPE_16__* @gDPAPI_Credentials, %struct.TYPE_16__** %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = bitcast %struct.TYPE_14__* %125 to i8*
  %127 = bitcast i8* %126 to %struct.TYPE_16__*
  %128 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gDPAPI_Credentials, i32 0, i32 0), align 8
  %129 = bitcast i8* %128 to %struct.TYPE_14__*
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = bitcast %struct.TYPE_14__* %132 to i8*
  store i8* %133, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gDPAPI_Credentials, i32 0, i32 0), align 8
  %134 = load i64, i64* %6, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %97, %92
  br label %137

137:                                              ; preds = %136, %88
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %5, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %5, align 8
  br label %57

141:                                              ; preds = %57
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i8*, ...) @kprintf(i8* bitcast ([35 x i32]* @.str.3 to i8*), i64 %142, i64 %144)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %146

146:                                              ; preds = %185, %141
  %147 = load i64, i64* %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %147, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %153 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %153, i64 %154
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %159 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %158, align 8
  %160 = load i64, i64* %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %159, i64 %160
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %166 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %165, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %166, i64 %167
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %173 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %173, i64 %174
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @kuhl_m_dpapi_oe_domainkey_add(i32* %157, i32 %164, i32 %171, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %151
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %6, align 8
  br label %184

184:                                              ; preds = %181, %151
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %5, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %5, align 8
  br label %146

188:                                              ; preds = %146
  %189 = load i64, i64* %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.4 to i8*), i64 %189, i64 %191)
  %193 = call i32 @kull_m_dpapi_oe_FreeDpapiEntries(%struct.TYPE_15__* %8)
  br label %194

194:                                              ; preds = %188, %17
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @LocalFree(i32 %195)
  br label %199

197:                                              ; preds = %1
  %198 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.5 to i8*))
  br label %199

199:                                              ; preds = %197, %194
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i64 @kull_m_file_readData(i32, i32*, i64*) #2

declare dso_local i64 @kull_m_dpapi_oe_DecodeDpapiEntries(i32, i64, %struct.TYPE_15__*) #2

declare dso_local i64 @kuhl_m_dpapi_oe_masterkey_add(i32*, i32, i32) #2

declare dso_local i32 @kuhl_m_dpapi_oe_credential_get(i32, i32*) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_wcsdup(i32) #2

declare dso_local i64 @kuhl_m_dpapi_oe_domainkey_add(i32*, i32, i32, i32) #2

declare dso_local i32 @kull_m_dpapi_oe_FreeDpapiEntries(%struct.TYPE_15__*) #2

declare dso_local i32 @LocalFree(i32) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
