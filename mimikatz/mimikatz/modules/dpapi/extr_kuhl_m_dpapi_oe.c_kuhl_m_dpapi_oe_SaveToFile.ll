; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_SaveToFile.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_SaveToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32**, i32**, i32**, i32 }

@FALSE = common dso_local global i32 0, align 4
@gDPAPI_Masterkeys = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@gDPAPI_Credentials = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@gDPAPI_Domainkeys = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i32] [i32 87, i32 105, i32 108, i32 108, i32 32, i32 101, i32 110, i32 99, i32 111, i32 100, i32 101, i32 58, i32 10, i32 32, i32 42, i32 32, i32 37, i32 51, i32 117, i32 32, i32 77, i32 97, i32 115, i32 116, i32 101, i32 114, i32 75, i32 101, i32 121, i32 40, i32 115, i32 41, i32 10, i32 32, i32 42, i32 32, i32 37, i32 51, i32 117, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 40, i32 115, i32 41, i32 10, i32 32, i32 42, i32 32, i32 37, i32 51, i32 117, i32 32, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 75, i32 101, i32 121, i32 40, i32 115, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [36 x i32] [i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 100, i32 58, i32 10, i32 32, i32 42, i32 32, i32 97, i32 100, i32 100, i32 114, i32 58, i32 32, i32 48, i32 120, i32 37, i32 112, i32 10, i32 32, i32 42, i32 32, i32 115, i32 105, i32 122, i32 101, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [18 x i32] [i32 87, i32 114, i32 105, i32 116, i32 101, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 79, i32 75, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [23 x i32] [i32 10, i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 119, i32 114, i32 105, i32 116, i32 101, i32 68, i32 97, i32 116, i32 97, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_oe_SaveToFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  %12 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gDPAPI_Masterkeys, i32 0, i32 0), align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  br label %15

15:                                               ; preds = %19, %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, bitcast (%struct.TYPE_21__* @gDPAPI_Masterkeys to %struct.TYPE_17__*)
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gDPAPI_Credentials, i32 0, i32 0), align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %5, align 8
  br label %31

31:                                               ; preds = %35, %28
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, bitcast (%struct.TYPE_13__* @gDPAPI_Credentials to %struct.TYPE_19__*)
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %31

44:                                               ; preds = %31
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gDPAPI_Domainkeys, i32 0, i32 0), align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %6, align 8
  br label %47

47:                                               ; preds = %51, %44
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = icmp ne %struct.TYPE_18__* %48, bitcast (%struct.TYPE_12__* @gDPAPI_Domainkeys to %struct.TYPE_18__*)
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %47

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %60
  %65 = load i32, i32* @LPTR, align 4
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @LocalAlloc(i32 %65, i32 %70)
  %72 = inttoptr i64 %71 to i32**
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  store i32** %72, i32*** %73, align 8
  %74 = icmp ne i32** %72, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %64
  store i64 0, i64* %9, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gDPAPI_Masterkeys, i32 0, i32 0), align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %4, align 8
  br label %78

78:                                               ; preds = %91, %75
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  store i32* %86, i32** %90, align 8
  br label %91

91:                                               ; preds = %84
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %4, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %78

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %60
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %101
  %106 = load i32, i32* @LPTR, align 4
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @LocalAlloc(i32 %106, i32 %111)
  %113 = inttoptr i64 %112 to i32**
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  store i32** %113, i32*** %114, align 8
  %115 = icmp ne i32** %113, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %105
  store i64 0, i64* %9, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gDPAPI_Credentials, i32 0, i32 0), align 8
  %118 = inttoptr i64 %117 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %118, %struct.TYPE_19__** %5, align 8
  br label %119

119:                                              ; preds = %132, %116
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %129 = load i32**, i32*** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  store i32* %127, i32** %131, align 8
  br label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %5, align 8
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %119

140:                                              ; preds = %119
  br label %141

141:                                              ; preds = %140, %105
  br label %142

142:                                              ; preds = %141, %101
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %183

146:                                              ; preds = %142
  %147 = load i32, i32* @LPTR, align 4
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 8
  %152 = trunc i64 %151 to i32
  %153 = call i64 @LocalAlloc(i32 %147, i32 %152)
  %154 = inttoptr i64 %153 to i32**
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i32** %154, i32*** %155, align 8
  %156 = icmp ne i32** %154, null
  br i1 %156, label %157, label %182

157:                                              ; preds = %146
  store i64 0, i64* %9, align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gDPAPI_Domainkeys, i32 0, i32 0), align 8
  %159 = inttoptr i64 %158 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %6, align 8
  br label %160

160:                                              ; preds = %173, %157
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %161, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %160
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  store i32* %168, i32** %172, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %178, %struct.TYPE_18__** %6, align 8
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %9, align 8
  br label %160

181:                                              ; preds = %160
  br label %182

182:                                              ; preds = %181, %146
  br label %183

183:                                              ; preds = %182, %142
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i8*, ...) @kprintf(i8* bitcast ([75 x i32]* @.str to i8*), i32 %185, i32 %187, i32 %189)
  %191 = call i64 @kull_m_dpapi_oe_EncodeDpapiEntries(%struct.TYPE_20__* %7, i32*** %8, i64* %10)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %183
  %194 = load i32**, i32*** %8, align 8
  %195 = load i64, i64* %10, align 8
  %196 = call i32 (i8*, ...) @kprintf(i8* bitcast ([36 x i32]* @.str.1 to i8*), i32** %194, i64 %195)
  %197 = load i32, i32* %2, align 4
  %198 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.2 to i8*), i32 %197)
  %199 = load i32, i32* %2, align 4
  %200 = load i32**, i32*** %8, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i64 @kull_m_file_writeData(i32 %199, i32** %200, i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.3 to i8*))
  br label %208

206:                                              ; preds = %193
  %207 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([23 x i32]* @.str.4 to i8*))
  br label %208

208:                                              ; preds = %206, %204
  %209 = load i32**, i32*** %8, align 8
  %210 = call i32 @LocalFree(i32** %209)
  br label %211

211:                                              ; preds = %208, %183
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  %213 = load i32**, i32*** %212, align 8
  %214 = icmp ne i32** %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  %217 = load i32**, i32*** %216, align 8
  %218 = call i32 @LocalFree(i32** %217)
  br label %219

219:                                              ; preds = %215, %211
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %221 = load i32**, i32*** %220, align 8
  %222 = icmp ne i32** %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %225 = load i32**, i32*** %224, align 8
  %226 = call i32 @LocalFree(i32** %225)
  br label %227

227:                                              ; preds = %223, %219
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %229 = load i32**, i32*** %228, align 8
  %230 = icmp ne i32** %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %233 = load i32**, i32*** %232, align 8
  %234 = call i32 @LocalFree(i32** %233)
  br label %235

235:                                              ; preds = %231, %227
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i64 @kull_m_dpapi_oe_EncodeDpapiEntries(%struct.TYPE_20__*, i32***, i64*) #2

declare dso_local i64 @kull_m_file_writeData(i32, i32**, i64) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i32 @LocalFree(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
