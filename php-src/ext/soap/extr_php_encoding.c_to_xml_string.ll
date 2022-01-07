; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@encoding = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Encoding: string '%s' is not a valid utf-8 string\00", align 1
@SOAP_ENCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @to_xml_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_xml_string(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @xmlNewNode(i32* null, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @xmlAddChild(i32 %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FIND_ZVAL_NULL(i32* %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @Z_TYPE_P(i32* %29)
  %31 = load i64, i64* @IS_STRING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @Z_STRVAL_P(i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @Z_STRLEN_P(i32* %36)
  %38 = call i8* @estrndup(i32 %35, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @Z_STRLEN_P(i32* %39)
  store i32 %40, i32* %12, align 4
  br label %53

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @zval_get_string_func(i32* %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @ZSTR_VAL(i32* %44)
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @ZSTR_LEN(i32* %46)
  %48 = call i8* @estrndup(i32 %45, i32 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @ZSTR_LEN(i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @zend_string_release_ex(i32* %51, i32 0)
  br label %53

53:                                               ; preds = %41, %33
  %54 = load i32, i32* @encoding, align 4
  %55 = call i32* @SOAP_GLOBAL(i32 %54)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @xmlBufferCreateStatic(i8* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = call i32 (...) @xmlBufferCreate()
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* @encoding, align 4
  %63 = call i32* @SOAP_GLOBAL(i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @xmlCharEncInFunc(i32* %63, i32 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @efree(i8* %70)
  %72 = load i32, i32* %15, align 4
  %73 = call i64 @xmlBufferContent(i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = call i8* @estrdup(i8* %74)
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %69, %57
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @xmlBufferFree(i32 %78)
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @xmlBufferFree(i32 %80)
  br label %82

82:                                               ; preds = %77, %53
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @BAD_CAST(i8* %83)
  %85 = call i32 @php_libxml_xmlCheckUTF8(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %269, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 8
  %90 = call i8* @emalloc(i32 %89)
  store i8* %90, i8** %17, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @memcpy(i8* %91, i8* %92, i32 %94)
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %198, %87
  %97 = load i8*, i8** %17, align 8
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %18, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %199

104:                                              ; preds = %96
  %105 = load i8, i8* %18, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, 128
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %198

110:                                              ; preds = %104
  %111 = load i8, i8* %18, align 1
  %112 = sext i8 %111 to i32
  %113 = and i32 %112, 224
  %114 = icmp eq i32 %113, 192
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i8*, i8** %17, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 %121, 192
  %123 = icmp ne i32 %122, 128
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %199

125:                                              ; preds = %115
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %197

128:                                              ; preds = %110
  %129 = load i8, i8* %18, align 1
  %130 = sext i8 %129 to i32
  %131 = and i32 %130, 240
  %132 = icmp eq i32 %131, 224
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = and i32 %139, 192
  %141 = icmp ne i32 %140, 128
  br i1 %141, label %152, label %142

142:                                              ; preds = %133
  %143 = load i8*, i8** %17, align 8
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = and i32 %149, 192
  %151 = icmp ne i32 %150, 128
  br i1 %151, label %152, label %153

152:                                              ; preds = %142, %133
  br label %199

153:                                              ; preds = %142
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %19, align 4
  br label %196

156:                                              ; preds = %128
  %157 = load i8, i8* %18, align 1
  %158 = sext i8 %157 to i32
  %159 = and i32 %158, 248
  %160 = icmp eq i32 %159, 240
  br i1 %160, label %161, label %194

161:                                              ; preds = %156
  %162 = load i8*, i8** %17, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = and i32 %167, 192
  %169 = icmp ne i32 %168, 128
  br i1 %169, label %190, label %170

170:                                              ; preds = %161
  %171 = load i8*, i8** %17, align 8
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = and i32 %177, 192
  %179 = icmp ne i32 %178, 128
  br i1 %179, label %190, label %180

180:                                              ; preds = %170
  %181 = load i8*, i8** %17, align 8
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = and i32 %187, 192
  %189 = icmp ne i32 %188, 128
  br i1 %189, label %190, label %191

190:                                              ; preds = %180, %170, %161
  br label %199

191:                                              ; preds = %180
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 3
  store i32 %193, i32* %19, align 4
  br label %195

194:                                              ; preds = %156
  br label %199

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %153
  br label %197

197:                                              ; preds = %196, %125
  br label %198

198:                                              ; preds = %197, %109
  br label %96

199:                                              ; preds = %194, %190, %152, %124, %96
  %200 = load i8, i8* %18, align 1
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %202, label %265

202:                                              ; preds = %199
  %203 = load i8*, i8** %17, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 92, i8* %207, align 1
  %208 = load i8*, i8** %17, align 8
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %19, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  store i8 120, i8* %212, align 1
  %213 = load i8, i8* %18, align 1
  %214 = zext i8 %213 to i32
  %215 = ashr i32 %214, 4
  %216 = load i8, i8* %18, align 1
  %217 = zext i8 %216 to i32
  %218 = ashr i32 %217, 4
  %219 = icmp sgt i32 %218, 9
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 87, i32 48
  %222 = add nsw i32 %215, %221
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %17, align 8
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %19, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  store i8 %223, i8* %228, align 1
  %229 = load i8, i8* %18, align 1
  %230 = sext i8 %229 to i32
  %231 = and i32 %230, 15
  %232 = load i8, i8* %18, align 1
  %233 = sext i8 %232 to i32
  %234 = and i32 %233, 15
  %235 = icmp sgt i32 %234, 9
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 87, i32 48
  %238 = add nsw i32 %231, %237
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %17, align 8
  %241 = load i32, i32* %19, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %19, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  store i8 %239, i8* %244, align 1
  %245 = load i8*, i8** %17, align 8
  %246 = load i32, i32* %19, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %19, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  store i8 46, i8* %249, align 1
  %250 = load i8*, i8** %17, align 8
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %19, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %250, i64 %253
  store i8 46, i8* %254, align 1
  %255 = load i8*, i8** %17, align 8
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %19, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i8, i8* %255, i64 %258
  store i8 46, i8* %259, align 1
  %260 = load i8*, i8** %17, align 8
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %19, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  store i8 0, i8* %264, align 1
  br label %265

265:                                              ; preds = %202, %199
  %266 = load i32, i32* @E_ERROR, align 4
  %267 = load i8*, i8** %17, align 8
  %268 = call i32 @soap_error1(i32 %266, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %265, %82
  %270 = load i8*, i8** %11, align 8
  %271 = call i32 @BAD_CAST(i8* %270)
  %272 = load i32, i32* %12, align 4
  %273 = call i32 @xmlNewTextLen(i32 %271, i32 %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @xmlAddChild(i32 %274, i32 %275)
  %277 = load i8*, i8** %11, align 8
  %278 = call i32 @efree(i8* %277)
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @SOAP_ENCODED, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %269
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @set_ns_and_type(i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %282, %269
  %287 = load i32, i32* %9, align 4
  ret i32 %287
}

declare dso_local i32 @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @FIND_ZVAL_NULL(i32*, i32, i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i8* @estrndup(i32, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32* @zval_get_string_func(i32*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32* @SOAP_GLOBAL(i32) #1

declare dso_local i32 @xmlBufferCreateStatic(i8*, i32) #1

declare dso_local i32 @xmlBufferCreate(...) #1

declare dso_local i32 @xmlCharEncInFunc(i32*, i32, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i64 @xmlBufferContent(i32) #1

declare dso_local i32 @xmlBufferFree(i32) #1

declare dso_local i32 @php_libxml_xmlCheckUTF8(i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @soap_error1(i32, i8*, i8*) #1

declare dso_local i32 @xmlNewTextLen(i32, i32) #1

declare dso_local i32 @set_ns_and_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
