; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_typeinfo.c_php_com_locate_typeinfo.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_typeinfo.c_php_com_locate_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@IID_IProvideClassInfo2 = common dso_local global i32 0, align 4
@GUIDKIND_DEFAULT_SOURCE_DISP_IID = common dso_local global i32 0, align 4
@IID_IProvideClassInfo = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IProvideClassInfo: this code not yet written!\00", align 1
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@CP_THREAD_ACP = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@IMPLTYPEFLAG_FSOURCE = common dso_local global i32 0, align 4
@IMPLTYPEFLAG_FDEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @php_com_locate_typeinfo(i8* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %133

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @V_DISPATCH(i32* %37)
  %39 = bitcast i32** %14 to i8**
  %40 = call i32 @IDispatch_QueryInterface(i32 %38, i32* @IID_IProvideClassInfo2, i8** %39)
  %41 = call i32 @SUCCEEDED(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @GUIDKIND_DEFAULT_SOURCE_DISP_IID, align 4
  %46 = call i32 @IProvideClassInfo2_GetGUID(i32* %44, i32 %45, i32* %13)
  %47 = call i32 @SUCCEEDED(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @IProvideClassInfo2_Release(i32* %48)
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @V_DISPATCH(i32* %55)
  %57 = bitcast i32** %15 to i8**
  %58 = call i32 @IDispatch_QueryInterface(i32 %56, i32* @IID_IProvideClassInfo, i8** %57)
  %59 = call i32 @SUCCEEDED(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @E_WARNING, align 4
  %63 = call i32 @php_error_docref(i32* null, i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @IProvideClassInfo_Release(i32* %64)
  br label %66

66:                                               ; preds = %61, %53, %50
  br label %132

67:                                               ; preds = %32, %29
  %68 = load i8*, i8** %8, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ITypeInfo_AddRef(i32* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %5, align 8
  br label %252

83:                                               ; preds = %70
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @V_DISPATCH(i32* %85)
  %87 = load i32, i32* @LANG_NEUTRAL, align 4
  %88 = call i32 @IDispatch_GetTypeInfo(i32 %86, i32 0, i32 %87, i32** %10)
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32*, i32** %10, align 8
  store i32* %92, i32** %5, align 8
  br label %252

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93
  br label %131

95:                                               ; preds = %67
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @ITypeInfo_GetContainingTypeLib(i32* %106, i32** %11, i32* %16)
  br label %130

108:                                              ; preds = %98, %95
  %109 = load i8*, i8** %6, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = call i32 @V_DISPATCH(i32* %113)
  %115 = load i32, i32* @LANG_NEUTRAL, align 4
  %116 = call i32 @IDispatch_GetTypeInfo(i32 %114, i32 0, i32 %115, i32** %10)
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @ITypeInfo_GetContainingTypeLib(i32* %120, i32** %11, i32* %17)
  %122 = load i32*, i32** %11, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @ITypeInfo_Release(i32* %125)
  store i32* null, i32** %10, align 8
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %111
  br label %129

129:                                              ; preds = %128, %108
  br label %130

130:                                              ; preds = %129, %103
  br label %131

131:                                              ; preds = %130, %94
  br label %132

132:                                              ; preds = %131, %66
  br label %141

133:                                              ; preds = %4
  %134 = load i8*, i8** %6, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* @CP_THREAD_ACP, align 4
  %139 = call i32* @php_com_load_typelib(i8* %137, i32 %138)
  store i32* %139, i32** %11, align 8
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %132
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %237, label %144

144:                                              ; preds = %141
  %145 = load i8*, i8** %8, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %237

147:                                              ; preds = %144
  %148 = load i32*, i32** %11, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %237

150:                                              ; preds = %147
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @strlen(i8* %152)
  %154 = load i32, i32* @CP_ACP, align 4
  %155 = call i32* @php_com_string_to_olestring(i8* %151, i32 %153, i32 %154)
  store i32* %155, i32** %20, align 8
  store i16 1, i16* %18, align 2
  %156 = load i32*, i32** %11, align 8
  %157 = load i32*, i32** %20, align 8
  %158 = call i32 @ITypeLib_FindName(i32* %156, i32* %157, i32 0, i32** %10, i32* %19, i16* %18)
  %159 = call i64 @FAILED(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %150
  %162 = load i16, i16* %18, align 2
  %163 = zext i16 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %234

165:                                              ; preds = %161, %150
  %166 = load i32*, i32** %20, align 8
  %167 = call i32 @CLSIDFromProgID(i32* %166, i32* %21)
  %168 = call i32 @SUCCEEDED(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %233

170:                                              ; preds = %165
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32* %171, i32* %21, i32** %22)
  %173 = call i32 @SUCCEEDED(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %233

175:                                              ; preds = %170
  %176 = load i32*, i32** %22, align 8
  %177 = call i32 @ITypeInfo_GetTypeAttr(i32* %176, %struct.TYPE_7__** %23)
  store i32 0, i32* %24, align 4
  br label %178

178:                                              ; preds = %224, %175
  %179 = load i32, i32* %24, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %227

184:                                              ; preds = %178
  %185 = load i32*, i32** %22, align 8
  %186 = load i32, i32* %24, align 4
  %187 = call i32 @ITypeInfo_GetImplTypeFlags(i32* %185, i32 %186, i32* %26)
  %188 = call i64 @FAILED(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %224

191:                                              ; preds = %184
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* @IMPLTYPEFLAG_FSOURCE, align 4
  %197 = load i32, i32* @IMPLTYPEFLAG_FDEFAULT, align 4
  %198 = or i32 %196, %197
  %199 = icmp eq i32 %195, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %194, %191
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %223, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %26, align 4
  %205 = load i32, i32* @IMPLTYPEFLAG_FSOURCE, align 4
  %206 = and i32 %204, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %203, %194
  %209 = load i32*, i32** %22, align 8
  %210 = load i32, i32* %24, align 4
  %211 = call i32 @ITypeInfo_GetRefTypeOfImplType(i32* %209, i32 %210, i32* %25)
  %212 = call i32 @SUCCEEDED(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load i32*, i32** %22, align 8
  %216 = load i32, i32* %25, align 4
  %217 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %215, i32 %216, i32** %10)
  %218 = call i32 @SUCCEEDED(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %227

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %208
  br label %223

223:                                              ; preds = %222, %203, %200
  br label %224

224:                                              ; preds = %223, %190
  %225 = load i32, i32* %24, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %24, align 4
  br label %178

227:                                              ; preds = %220, %178
  %228 = load i32*, i32** %22, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %230 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %228, %struct.TYPE_7__* %229)
  %231 = load i32*, i32** %22, align 8
  %232 = call i32 @ITypeInfo_Release(i32* %231)
  br label %233

233:                                              ; preds = %227, %170, %165
  br label %234

234:                                              ; preds = %233, %161
  %235 = load i32*, i32** %20, align 8
  %236 = call i32 @efree(i32* %235)
  br label %244

237:                                              ; preds = %147, %144, %141
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @ITypeLib_GetTypeInfoOfGuid(i32* %241, i32* %13, i32** %10)
  br label %243

243:                                              ; preds = %240, %237
  br label %244

244:                                              ; preds = %243, %234
  %245 = load i32*, i32** %11, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i32*, i32** %11, align 8
  %249 = call i32 @ITypeLib_Release(i32* %248)
  br label %250

250:                                              ; preds = %247, %244
  %251 = load i32*, i32** %10, align 8
  store i32* %251, i32** %5, align 8
  br label %252

252:                                              ; preds = %250, %91, %75
  %253 = load i32*, i32** %5, align 8
  ret i32* %253
}

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @IDispatch_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i32 @IProvideClassInfo2_GetGUID(i32*, i32, i32*) #1

declare dso_local i32 @IProvideClassInfo2_Release(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @IProvideClassInfo_Release(i32*) #1

declare dso_local i32 @ITypeInfo_AddRef(i32*) #1

declare dso_local i32 @IDispatch_GetTypeInfo(i32, i32, i32, i32**) #1

declare dso_local i32 @ITypeInfo_GetContainingTypeLib(i32*, i32**, i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32* @php_com_load_typelib(i8*, i32) #1

declare dso_local i32* @php_com_string_to_olestring(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ITypeLib_FindName(i32*, i32*, i32, i32**, i32*, i16*) #1

declare dso_local i32 @CLSIDFromProgID(i32*, i32*) #1

declare dso_local i32 @ITypeLib_GetTypeInfoOfGuid(i32*, i32*, i32**) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @ITypeInfo_GetImplTypeFlags(i32*, i32, i32*) #1

declare dso_local i32 @ITypeInfo_GetRefTypeOfImplType(i32*, i32, i32*) #1

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
