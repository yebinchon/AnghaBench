; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_guess_zval_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_guess_zval_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { i64 }

@IS_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@XSI_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@sdl = common dso_local global i32 0, align 4
@XSD_TYPEKIND_COMPLEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"arrayType\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"itemType\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"arraySize\00", align 1
@SOAP_ENC_ARRAY = common dso_local global i32 0, align 4
@XSD_STRING = common dso_local global i32 0, align 4
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@SOAP_ENC_OBJECT = common dso_local global i32 0, align 4
@soap_var_class_entry = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"enc_type\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"enc_value\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"enc_stype\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"enc_ns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_25__*, %struct.TYPE_23__*)* @guess_zval_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @guess_zval_convert(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = call %struct.TYPE_23__* @check_and_resolve_href(%struct.TYPE_23__* %16)
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %6, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %19 = icmp eq %struct.TYPE_23__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @IS_NULL, align 4
  %22 = call %struct.TYPE_26__* @get_conversion(i32 %21)
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %7, align 8
  br label %172

23:                                               ; preds = %3
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @XSI_NAMESPACE, align 4
  %33 = call %struct.TYPE_24__* @get_attribute_ex(i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = icmp ne %struct.TYPE_24__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @IS_NULL, align 4
  %37 = call %struct.TYPE_26__* @get_conversion(i32 %36)
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %7, align 8
  br label %171

38:                                               ; preds = %28, %23
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @XSI_NAMESPACE, align 4
  %43 = call %struct.TYPE_24__* @get_attribute_ex(i64 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store %struct.TYPE_24__* %43, %struct.TYPE_24__** %8, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %45 = icmp ne %struct.TYPE_24__* %44, null
  br i1 %45, label %46, label %122

46:                                               ; preds = %38
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* @sdl, align 4
  %53 = call i64 @SOAP_GLOBAL(i32 %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call %struct.TYPE_26__* @get_encoder_from_prefix(i64 %53, %struct.TYPE_23__* %54, i32* %59)
  store %struct.TYPE_26__* %60, %struct.TYPE_26__** %7, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %62 = icmp ne %struct.TYPE_26__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = icmp eq %struct.TYPE_25__* %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  br label %69

69:                                               ; preds = %68, %63, %46
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %71 = icmp ne %struct.TYPE_26__* %70, null
  br i1 %71, label %72, label %121

72:                                               ; preds = %69
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %10, align 8
  br label %74

74:                                               ; preds = %113, %72
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %76 = icmp ne %struct.TYPE_26__* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = icmp ne %struct.TYPE_21__* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @XSD_TYPEKIND_COMPLEX, align 8
  %91 = icmp ne i64 %89, %90
  br label %92

92:                                               ; preds = %83, %77, %74
  %93 = phi i1 [ false, %77 ], [ false, %74 ], [ %91, %83 ]
  br i1 %93, label %94, label %120

94:                                               ; preds = %92
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = icmp eq %struct.TYPE_26__* %95, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %94
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %109, align 8
  %111 = icmp eq %struct.TYPE_26__* %104, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103, %94
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  br label %120

113:                                              ; preds = %103
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %118, align 8
  store %struct.TYPE_26__* %119, %struct.TYPE_26__** %10, align 8
  br label %74

120:                                              ; preds = %112, %92
  br label %121

121:                                              ; preds = %120, %69
  br label %122

122:                                              ; preds = %121, %38
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %124 = icmp eq %struct.TYPE_26__* %123, null
  br i1 %124, label %125, label %170

125:                                              ; preds = %122
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @get_attribute(i64 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @get_attribute(i64 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @get_attribute(i64 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137, %131, %125
  %144 = load i32, i32* @SOAP_ENC_ARRAY, align 4
  %145 = call %struct.TYPE_26__* @get_conversion(i32 %144)
  store %struct.TYPE_26__* %145, %struct.TYPE_26__** %7, align 8
  br label %169

146:                                              ; preds = %137
  %147 = load i32, i32* @XSD_STRING, align 4
  %148 = call %struct.TYPE_26__* @get_conversion(i32 %147)
  store %struct.TYPE_26__* %148, %struct.TYPE_26__** %7, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  store %struct.TYPE_23__* %151, %struct.TYPE_23__** %11, align 8
  br label %152

152:                                              ; preds = %164, %146
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %154 = icmp ne %struct.TYPE_23__* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @SOAP_ENC_OBJECT, align 4
  %163 = call %struct.TYPE_26__* @get_conversion(i32 %162)
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %7, align 8
  br label %168

164:                                              ; preds = %155
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  store %struct.TYPE_23__* %167, %struct.TYPE_23__** %11, align 8
  br label %152

168:                                              ; preds = %161, %152
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %122
  br label %171

171:                                              ; preds = %170, %35
  br label %172

172:                                              ; preds = %171, %20
  %173 = load i32*, i32** %4, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %176 = call i32 @master_to_zval_int(i32* %173, %struct.TYPE_26__* %174, %struct.TYPE_23__* %175)
  %177 = load i32, i32* @sdl, align 4
  %178 = call i64 @SOAP_GLOBAL(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %231

180:                                              ; preds = %172
  %181 = load i32*, i32** %9, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %231

183:                                              ; preds = %180
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %186, align 8
  %188 = icmp ne %struct.TYPE_21__* %187, null
  br i1 %188, label %189, label %231

189:                                              ; preds = %183
  %190 = load i32, i32* @soap_var_class_entry, align 4
  %191 = call i32 @object_init_ex(i32* %12, i32 %190)
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @add_property_long(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @Z_TRY_DELREF_P(i32* %197)
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @add_property_zval(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %199)
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @parse_namespace(i32* %201, i8** %14, i8** %13)
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 @BAD_CAST(i8* %207)
  %209 = call %struct.TYPE_22__* @xmlSearchNs(i32 %205, %struct.TYPE_23__* %206, i32 %208)
  store %struct.TYPE_22__* %209, %struct.TYPE_22__** %15, align 8
  %210 = load i8*, i8** %14, align 8
  %211 = call i32 @add_property_string(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %210)
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %213 = icmp ne %struct.TYPE_22__* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %189
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i8*
  %219 = call i32 @add_property_string(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %214, %189
  %221 = load i8*, i8** %14, align 8
  %222 = call i32 @efree(i8* %221)
  %223 = load i8*, i8** %13, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i8*, i8** %13, align 8
  %227 = call i32 @efree(i8* %226)
  br label %228

228:                                              ; preds = %225, %220
  %229 = load i32*, i32** %4, align 8
  %230 = call i32 @ZVAL_COPY_VALUE(i32* %229, i32* %12)
  br label %231

231:                                              ; preds = %228, %183, %180, %172
  %232 = load i32*, i32** %4, align 8
  ret i32* %232
}

declare dso_local %struct.TYPE_23__* @check_and_resolve_href(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_26__* @get_conversion(i32) #1

declare dso_local %struct.TYPE_24__* @get_attribute_ex(i64, i8*, i32) #1

declare dso_local %struct.TYPE_26__* @get_encoder_from_prefix(i64, %struct.TYPE_23__*, i32*) #1

declare dso_local i64 @SOAP_GLOBAL(i32) #1

declare dso_local i64 @get_attribute(i64, i8*) #1

declare dso_local i32 @master_to_zval_int(i32*, %struct.TYPE_26__*, %struct.TYPE_23__*) #1

declare dso_local i32 @object_init_ex(i32*, i32) #1

declare dso_local i32 @add_property_long(i32*, i8*, i32) #1

declare dso_local i32 @Z_TRY_DELREF_P(i32*) #1

declare dso_local i32 @add_property_zval(i32*, i8*, i32*) #1

declare dso_local i32 @parse_namespace(i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_22__* @xmlSearchNs(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @add_property_string(i32*, i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
