; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_hexbin.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_hexbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8*, i32* }

@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Encoding: Violation of encoding rules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_6__*)* @to_zval_hexbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @to_zval_hexbin(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ZVAL_NULL(i32* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @FIND_XML_NULL(%struct.TYPE_6__* %14, i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %239

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %239

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XML_TEXT_NODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @whiteSpace_collapse(i8* %44)
  br label %66

46:                                               ; preds = %32, %24
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %46
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54, %46
  %62 = load i32, i32* @E_ERROR, align 4
  %63 = call i32 @soap_error0(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  store i32* %64, i32** %4, align 8
  br label %244

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sdiv i32 %72, 2
  %74 = call i32* @zend_string_alloc(i32 %73, i32 0)
  store i32* %74, i32** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %227, %66
  %76 = load i64, i64* %9, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @ZSTR_LEN(i32* %77)
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %230

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %10, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %86
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %11, align 1
  %90 = load i8, i8* %11, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sge i32 %91, 48
  br i1 %92, label %93, label %107

93:                                               ; preds = %80
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sle i32 %95, 57
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i8, i8* %11, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, 48
  %101 = shl i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = load i32*, i32** %8, align 8
  %104 = call i8* @ZSTR_VAL(i32* %103)
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %102, i8* %106, align 1
  br label %150

107:                                              ; preds = %93, %80
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sge i32 %109, 97
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp sle i32 %113, 102
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i8, i8* %11, align 1
  %117 = zext i8 %116 to i32
  %118 = sub nsw i32 %117, 97
  %119 = add nsw i32 %118, 10
  %120 = shl i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = load i32*, i32** %8, align 8
  %123 = call i8* @ZSTR_VAL(i32* %122)
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 %121, i8* %125, align 1
  br label %149

126:                                              ; preds = %111, %107
  %127 = load i8, i8* %11, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sge i32 %128, 65
  br i1 %129, label %130, label %145

130:                                              ; preds = %126
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp sle i32 %132, 70
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i8, i8* %11, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %136, 65
  %138 = add nsw i32 %137, 10
  %139 = shl i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = load i32*, i32** %8, align 8
  %142 = call i8* @ZSTR_VAL(i32* %141)
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8 %140, i8* %144, align 1
  br label %148

145:                                              ; preds = %130, %126
  %146 = load i32, i32* @E_ERROR, align 4
  %147 = call i32 @soap_error0(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %134
  br label %149

149:                                              ; preds = %148, %115
  br label %150

150:                                              ; preds = %149, %97
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %10, align 8
  %158 = getelementptr inbounds i8, i8* %155, i64 %156
  %159 = load i8, i8* %158, align 1
  store i8 %159, i8* %11, align 1
  %160 = load i8, i8* %11, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp sge i32 %161, 48
  br i1 %162, label %163, label %179

163:                                              ; preds = %150
  %164 = load i8, i8* %11, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp sle i32 %165, 57
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i8, i8* %11, align 1
  %169 = zext i8 %168 to i32
  %170 = sub nsw i32 %169, 48
  %171 = load i32*, i32** %8, align 8
  %172 = call i8* @ZSTR_VAL(i32* %171)
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, %170
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  br label %226

179:                                              ; preds = %163, %150
  %180 = load i8, i8* %11, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp sge i32 %181, 97
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load i8, i8* %11, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp sle i32 %185, 102
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = load i8, i8* %11, align 1
  %189 = zext i8 %188 to i32
  %190 = sub nsw i32 %189, 97
  %191 = add nsw i32 %190, 10
  %192 = load i32*, i32** %8, align 8
  %193 = call i8* @ZSTR_VAL(i32* %192)
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %197, %191
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %195, align 1
  br label %225

200:                                              ; preds = %183, %179
  %201 = load i8, i8* %11, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp sge i32 %202, 65
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load i8, i8* %11, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp sle i32 %206, 70
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load i8, i8* %11, align 1
  %210 = zext i8 %209 to i32
  %211 = sub nsw i32 %210, 65
  %212 = add nsw i32 %211, 10
  %213 = load i32*, i32** %8, align 8
  %214 = call i8* @ZSTR_VAL(i32* %213)
  %215 = load i64, i64* %9, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = or i32 %218, %212
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %216, align 1
  br label %224

221:                                              ; preds = %204, %200
  %222 = load i32, i32* @E_ERROR, align 4
  %223 = call i32 @soap_error0(i32 %222, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %208
  br label %225

225:                                              ; preds = %224, %187
  br label %226

226:                                              ; preds = %225, %167
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %9, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %9, align 8
  br label %75

230:                                              ; preds = %75
  %231 = load i32*, i32** %8, align 8
  %232 = call i8* @ZSTR_VAL(i32* %231)
  %233 = load i32*, i32** %8, align 8
  %234 = call i64 @ZSTR_LEN(i32* %233)
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8 0, i8* %235, align 1
  %236 = load i32*, i32** %5, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = call i32 @ZVAL_NEW_STR(i32* %236, i32* %237)
  br label %242

239:                                              ; preds = %19, %3
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @ZVAL_EMPTY_STRING(i32* %240)
  br label %242

242:                                              ; preds = %239, %230
  %243 = load i32*, i32** %5, align 8
  store i32* %243, i32** %4, align 8
  br label %244

244:                                              ; preds = %242, %61
  %245 = load i32*, i32** %4, align 8
  ret i32* %245
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @FIND_XML_NULL(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @whiteSpace_collapse(i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i32* @zend_string_alloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
