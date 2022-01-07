; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_krbtgt_keys.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_krbtgt_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32*, %struct.TYPE_20__* }

@cLsass = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@KULL_M_MEMORY_GLOBAL_OWN_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 10, i32 37, i32 115, i32 32, i32 107, i32 114, i32 98, i32 116, i32 103, i32 116, i32 58, i32 32, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i32] [i32 37, i32 117, i32 32, i32 99, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 9, i32 32, i32 42, i32 32, i32 37, i32 115, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@KULL_M_WIN_BUILD_10_1607 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sekurlsa_krbtgt_keys(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cLsass, i32 0, i32 1), align 8
  store i32* %18, i32** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i32* @KULL_M_MEMORY_GLOBAL_OWN_HANDLE, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = icmp ne %struct.TYPE_20__* %23, null
  br i1 %24, label %25, label %348

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str to i8*), i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cLsass, i32 0, i32 0, i32 0), align 8
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %134

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %31, align 8
  %32 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 12)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %133

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = add i64 16, %39
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* @LPTR, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i8* @LocalAlloc(i32 %41, i64 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %12, align 8
  %45 = icmp ne %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %132

46:                                               ; preds = %34
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %46
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.1 to i8*), i32 %55)
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %125, %52
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %128

64:                                               ; preds = %57
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PtrToLong(i32 %71)
  %73 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %72)
  %74 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.2 to i8*), i32 %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store %struct.TYPE_20__* %81, %struct.TYPE_20__** %82, align 8
  %83 = load i32, i32* @LPTR, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @PtrToUlong(i32 %90)
  %92 = call i8* @LocalAlloc(i32 %83, i64 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_20__*
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %94, align 8
  %95 = icmp ne %struct.TYPE_20__* %93, null
  br i1 %95, label %96, label %123

96:                                               ; preds = %64
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @PtrToUlong(i32 %103)
  %105 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @PtrToUlong(i32 %116)
  %118 = call i32 @kull_m_string_wprintf_hex(%struct.TYPE_20__* %109, i64 %117, i32 0)
  br label %119

119:                                              ; preds = %107, %96
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = call i32 @LocalFree(%struct.TYPE_20__* %121)
  br label %123

123:                                              ; preds = %119, %64
  %124 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %125

125:                                              ; preds = %123
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %6, align 8
  br label %57

128:                                              ; preds = %57
  br label %129

129:                                              ; preds = %128, %46
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %131 = call i32 @LocalFree(%struct.TYPE_20__* %130)
  br label %132

132:                                              ; preds = %129, %34
  br label %133

133:                                              ; preds = %132, %30
  br label %347

134:                                              ; preds = %25
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cLsass, i32 0, i32 0, i32 1), align 8
  %136 = load i64, i64* @KULL_M_WIN_BUILD_10_1607, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %242

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %139, align 8
  %140 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 12)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %241

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = add i64 16, %147
  store i64 %148, i64* %5, align 8
  %149 = load i32, i32* @LPTR, align 4
  %150 = load i64, i64* %5, align 8
  %151 = call i8* @LocalAlloc(i32 %149, i64 %150)
  %152 = bitcast i8* %151 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %152, %struct.TYPE_20__** %10, align 8
  %153 = icmp ne %struct.TYPE_20__* %152, null
  br i1 %153, label %154, label %240

154:                                              ; preds = %142
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %155, %struct.TYPE_20__** %156, align 8
  %157 = load i64, i64* %5, align 8
  %158 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %237

160:                                              ; preds = %154
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.1 to i8*), i32 %163)
  store i64 0, i64* %6, align 8
  br label %165

165:                                              ; preds = %233, %160
  %166 = load i64, i64* %6, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %166, %170
  br i1 %171, label %172, label %236

172:                                              ; preds = %165
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @PtrToLong(i32 %179)
  %181 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %180)
  %182 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.2 to i8*), i32 %181)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store %struct.TYPE_20__* %189, %struct.TYPE_20__** %190, align 8
  %191 = load i32, i32* @LPTR, align 4
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = load i64, i64* %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @PtrToUlong(i32 %198)
  %200 = call i8* @LocalAlloc(i32 %191, i64 %199)
  %201 = bitcast i8* %200 to %struct.TYPE_20__*
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %201, %struct.TYPE_20__** %202, align 8
  %203 = icmp ne %struct.TYPE_20__* %201, null
  br i1 %203, label %204, label %231

204:                                              ; preds = %172
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @PtrToUlong(i32 %211)
  %213 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = load i64, i64* %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @PtrToUlong(i32 %224)
  %226 = call i32 @kull_m_string_wprintf_hex(%struct.TYPE_20__* %217, i64 %225, i32 0)
  br label %227

227:                                              ; preds = %215, %204
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = call i32 @LocalFree(%struct.TYPE_20__* %229)
  br label %231

231:                                              ; preds = %227, %172
  %232 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %233

233:                                              ; preds = %231
  %234 = load i64, i64* %6, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %6, align 8
  br label %165

236:                                              ; preds = %165
  br label %237

237:                                              ; preds = %236, %154
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %239 = call i32 @LocalFree(%struct.TYPE_20__* %238)
  br label %240

240:                                              ; preds = %237, %142
  br label %241

241:                                              ; preds = %240, %138
  br label %346

242:                                              ; preds = %134
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %7, %struct.TYPE_20__** %243, align 8
  %244 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 12)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %345

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 4
  %252 = add i64 16, %251
  store i64 %252, i64* %5, align 8
  %253 = load i32, i32* @LPTR, align 4
  %254 = load i64, i64* %5, align 8
  %255 = call i8* @LocalAlloc(i32 %253, i64 %254)
  %256 = bitcast i8* %255 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %256, %struct.TYPE_20__** %8, align 8
  %257 = icmp ne %struct.TYPE_20__* %256, null
  br i1 %257, label %258, label %344

258:                                              ; preds = %246
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %259, %struct.TYPE_20__** %260, align 8
  %261 = load i64, i64* %5, align 8
  %262 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %341

264:                                              ; preds = %258
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.1 to i8*), i32 %267)
  store i64 0, i64* %6, align 8
  br label %269

269:                                              ; preds = %337, %264
  %270 = load i64, i64* %6, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = icmp ult i64 %270, %274
  br i1 %275, label %276, label %340

276:                                              ; preds = %269
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @PtrToLong(i32 %283)
  %285 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %284)
  %286 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.2 to i8*), i32 %285)
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = load i64, i64* %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store %struct.TYPE_20__* %293, %struct.TYPE_20__** %294, align 8
  %295 = load i32, i32* @LPTR, align 4
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %297, align 8
  %299 = load i64, i64* %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @PtrToUlong(i32 %302)
  %304 = call i8* @LocalAlloc(i32 %295, i64 %303)
  %305 = bitcast i8* %304 to %struct.TYPE_20__*
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_20__* %305, %struct.TYPE_20__** %306, align 8
  %307 = icmp ne %struct.TYPE_20__* %305, null
  br i1 %307, label %308, label %335

308:                                              ; preds = %276
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %310, align 8
  %312 = load i64, i64* %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i64 @PtrToUlong(i32 %315)
  %317 = call i64 @kull_m_memory_copy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %13, i64 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %308
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %320, align 8
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %323, align 8
  %325 = load i64, i64* %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @PtrToUlong(i32 %328)
  %330 = call i32 @kull_m_string_wprintf_hex(%struct.TYPE_20__* %321, i64 %329, i32 0)
  br label %331

331:                                              ; preds = %319, %308
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %332, align 8
  %334 = call i32 @LocalFree(%struct.TYPE_20__* %333)
  br label %335

335:                                              ; preds = %331, %276
  %336 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %337

337:                                              ; preds = %335
  %338 = load i64, i64* %6, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %6, align 8
  br label %269

340:                                              ; preds = %269
  br label %341

341:                                              ; preds = %340, %258
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %343 = call i32 @LocalFree(%struct.TYPE_20__* %342)
  br label %344

344:                                              ; preds = %341, %246
  br label %345

345:                                              ; preds = %344, %242
  br label %346

346:                                              ; preds = %345, %241
  br label %347

347:                                              ; preds = %346, %133
  br label %348

348:                                              ; preds = %347, %2
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @kull_m_memory_copy(%struct.TYPE_21__*, %struct.TYPE_21__*, i64) #1

declare dso_local i8* @LocalAlloc(i32, i64) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_etype(i32) #1

declare dso_local i32 @PtrToLong(i32) #1

declare dso_local i64 @PtrToUlong(i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
