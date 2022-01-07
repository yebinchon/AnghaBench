; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/locale/extr_locale_methods.c_get_icu_value_internal.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/locale/extr_locale_methods.c_get_icu_value_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@U_ZERO_ERROR = common dso_local global i64 0, align 8
@INTL_MAX_LOCALE_LEN = common dso_local global i32 0, align 4
@LOC_CANONICALIZE_TAG = common dso_local global i32 0, align 4
@LOC_GRANDFATHERED = common dso_local global i32 0, align 4
@LOC_LANG_TAG = common dso_local global i32 0, align 4
@LOC_SCRIPT_TAG = common dso_local global i32 0, align 4
@LOC_REGION_TAG = common dso_local global i32 0, align 4
@LOC_VARIANT_TAG = common dso_local global i32 0, align 4
@U_BUFFER_OVERFLOW_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i8*, i32*, i32)* @get_icu_value_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_icu_value_internal(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  store i64 512, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i64 512, i64* %13, align 8
  %17 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i32, i32* @INTL_MAX_LOCALE_LEN, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %226

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @LOC_CANONICALIZE_TAG, align 4
  %26 = call i64 @strcmp(i8* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %23
  %29 = load i32, i32* @LOC_GRANDFATHERED, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @findOffset(i32 %29, i8* %30)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @LOC_LANG_TAG, align 4
  %37 = call i64 @strcmp(i8* %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call %struct.TYPE_8__* @zend_string_init(i8* %40, i32 %42, i32 0)
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %5, align 8
  br label %226

44:                                               ; preds = %34
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %226

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %83

48:                                               ; preds = %45
  store i64 0, i64* %16, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @LOC_LANG_TAG, align 4
  %51 = call i64 @strcmp(i8* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @isIDPrefix(i8* %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call %struct.TYPE_8__* @zend_string_init(i8* %62, i32 %64, i32 0)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %5, align 8
  br label %226

66:                                               ; preds = %57, %53
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @getSingletonPos(i8* %68)
  store i64 %69, i64* %16, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %226

73:                                               ; preds = %67
  %74 = load i64, i64* %16, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %16, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i8* @estrndup(i8* %77, i64 %79)
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %76, %73
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %23
  %85 = load i8*, i8** %12, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8*, i8** %6, align 8
  %89 = call i8* @estrdup(i8* %88)
  store i8* %89, i8** %12, align 8
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %189, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = icmp ne %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call %struct.TYPE_8__* @zend_string_realloc(%struct.TYPE_8__* %95, i64 %96, i32 0)
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %10, align 8
  br label %101

98:                                               ; preds = %91
  %99 = load i64, i64* %13, align 8
  %100 = call %struct.TYPE_8__* @zend_string_alloc(i64 %99, i32 0)
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %10, align 8
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i64, i64* %13, align 8
  store i64 %102, i64* %11, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* @LOC_SCRIPT_TAG, align 4
  %105 = call i64 @strcmp(i8* %103, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i64 @uloc_getScript(i8* %108, i8* %111, i64 %112, i64* %14)
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %107, %101
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @LOC_LANG_TAG, align 4
  %117 = call i64 @strcmp(i8* %115, i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @uloc_getLanguage(i8* %120, i8* %123, i64 %124, i64* %14)
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* @LOC_REGION_TAG, align 4
  %129 = call i64 @strcmp(i8* %127, i32 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i8*, i8** %12, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i64 @uloc_getCountry(i8* %132, i8* %135, i64 %136, i64* %14)
  store i64 %137, i64* %13, align 8
  br label %138

138:                                              ; preds = %131, %126
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* @LOC_VARIANT_TAG, align 4
  %141 = call i64 @strcmp(i8* %139, i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i64 @uloc_getVariant(i8* %144, i8* %147, i64 %148, i64* %14)
  store i64 %149, i64* %13, align 8
  br label %150

150:                                              ; preds = %143, %138
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* @LOC_CANONICALIZE_TAG, align 4
  %153 = call i64 @strcmp(i8* %151, i32 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i8*, i8** %12, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i64 @uloc_canonicalize(i8* %156, i8* %159, i64 %160, i64* %14)
  store i64 %161, i64* %13, align 8
  br label %162

162:                                              ; preds = %155, %150
  %163 = load i64, i64* %14, align 8
  %164 = call i64 @U_FAILURE(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %162
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* %13, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %13, align 8
  br label %189

174:                                              ; preds = %166
  %175 = load i32*, i32** %8, align 8
  store i32 0, i32* %175, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %177 = icmp ne %struct.TYPE_8__* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %180 = call i32 @zend_string_release_ex(%struct.TYPE_8__* %179, i32 0)
  br label %181

181:                                              ; preds = %178, %174
  %182 = load i8*, i8** %12, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @efree(i8* %185)
  br label %187

187:                                              ; preds = %184, %181
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %226

188:                                              ; preds = %162
  br label %189

189:                                              ; preds = %188, %170
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %11, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %91, label %193

193:                                              ; preds = %189
  %194 = load i64, i64* %13, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = load i32*, i32** %8, align 8
  store i32 -1, i32* %197, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %199 = icmp ne %struct.TYPE_8__* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %202 = call i32 @zend_string_release_ex(%struct.TYPE_8__* %201, i32 0)
  br label %203

203:                                              ; preds = %200, %196
  %204 = load i8*, i8** %12, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @efree(i8* %207)
  br label %209

209:                                              ; preds = %206, %203
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %226

210:                                              ; preds = %193
  %211 = load i32*, i32** %8, align 8
  store i32 1, i32* %211, align 4
  br label %212

212:                                              ; preds = %210
  %213 = load i8*, i8** %12, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i8*, i8** %12, align 8
  %217 = call i32 @efree(i8* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @strlen(i8* %221)
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %225, %struct.TYPE_8__** %5, align 8
  br label %226

226:                                              ; preds = %218, %209, %187, %72, %61, %44, %39, %22
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %227
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @findOffset(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @isIDPrefix(i8*) #1

declare dso_local i64 @getSingletonPos(i8*) #1

declare dso_local i8* @estrndup(i8*, i64) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local %struct.TYPE_8__* @zend_string_realloc(%struct.TYPE_8__*, i64, i32) #1

declare dso_local %struct.TYPE_8__* @zend_string_alloc(i64, i32) #1

declare dso_local i64 @uloc_getScript(i8*, i8*, i64, i64*) #1

declare dso_local i64 @uloc_getLanguage(i8*, i8*, i64, i64*) #1

declare dso_local i64 @uloc_getCountry(i8*, i8*, i64, i64*) #1

declare dso_local i64 @uloc_getVariant(i8*, i8*, i64, i64*) #1

declare dso_local i64 @uloc_canonicalize(i8*, i8*, i64, i64*) #1

declare dso_local i64 @U_FAILURE(i64) #1

declare dso_local i32 @zend_string_release_ex(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
