; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_do_perform_implementation_check.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_do_perform_implementation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i64, i64, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@INHERITANCE_SUCCESS = common dso_local global i64 0, align 8
@ZEND_ACC_CTOR = common dso_local global i32 0, align 4
@ZEND_ACC_INTERFACE = common dso_local global i32 0, align 4
@ZEND_ACC_ABSTRACT = common dso_local global i32 0, align 4
@ZEND_ACC_PRIVATE = common dso_local global i32 0, align 4
@INHERITANCE_ERROR = common dso_local global i64 0, align 8
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@ZEND_ACC_VARIADIC = common dso_local global i32 0, align 4
@INHERITANCE_UNRESOLVED = common dso_local global i64 0, align 8
@ZEND_ACC_HAS_RETURN_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_14__*)* @zend_do_perform_implementation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zend_do_perform_implementation_check(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  store i64 %25, i64* %3, align 8
  br label %310

26:                                               ; preds = %17, %2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZEND_ACC_CTOR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ZEND_ACC_INTERFACE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %44, %34
  %53 = phi i1 [ false, %34 ], [ %51, %44 ]
  br label %54

54:                                               ; preds = %52, %26
  %55 = phi i1 [ false, %26 ], [ %53, %52 ]
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @ZEND_ASSERT(i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @ZEND_ASSERT(i32 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %54
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %82, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %78, %54
  %89 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %89, i64* %3, align 8
  br label %310

90:                                               ; preds = %78
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %107, i64* %3, align 8
  br label %310

108:                                              ; preds = %98, %90
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %108
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %116
  %125 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %125, i64* %3, align 8
  br label %310

126:                                              ; preds = %116, %108
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %7, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %126
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %7, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp uge i64 %144, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %138
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %7, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %150
  %163 = load i64, i64* %7, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %7, align 8
  br label %165

165:                                              ; preds = %162, %150
  br label %166

166:                                              ; preds = %165, %138
  br label %167

167:                                              ; preds = %166, %126
  %168 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  store i64 %168, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %169

169:                                              ; preds = %240, %167
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %243

173:                                              ; preds = %169
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i64 %178
  store %struct.TYPE_15__* %179, %struct.TYPE_15__** %10, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ult i64 %180, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %173
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = load i64, i64* %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 %191
  store %struct.TYPE_15__* %192, %struct.TYPE_15__** %11, align 8
  br label %203

193:                                              ; preds = %173
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i64 %201
  store %struct.TYPE_15__* %202, %struct.TYPE_15__** %11, align 8
  br label %203

203:                                              ; preds = %193, %186
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %208 = call i64 @zend_do_perform_arg_type_hint_check(%struct.TYPE_14__* %204, %struct.TYPE_15__* %205, %struct.TYPE_14__* %206, %struct.TYPE_15__* %207)
  store i64 %208, i64* %9, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %211 = icmp ne i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = call i64 @UNEXPECTED(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %203
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* @INHERITANCE_ERROR, align 8
  %218 = icmp eq i64 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i64 @UNEXPECTED(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %223, i64* %3, align 8
  br label %310

224:                                              ; preds = %215
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %227 = icmp eq i64 %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i32 @ZEND_ASSERT(i32 %228)
  %230 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  store i64 %230, i64* %8, align 8
  br label %231

231:                                              ; preds = %224, %203
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %233 = call i64 @ZEND_ARG_SEND_MODE(%struct.TYPE_15__* %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %235 = call i64 @ZEND_ARG_SEND_MODE(%struct.TYPE_15__* %234)
  %236 = icmp ne i64 %233, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %238, i64* %3, align 8
  br label %310

239:                                              ; preds = %231
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %6, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %6, align 8
  br label %169

243:                                              ; preds = %169
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @ZEND_ACC_HAS_RETURN_TYPE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %308

251:                                              ; preds = %243
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ZEND_ACC_HAS_RETURN_TYPE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %251
  %260 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %260, i64* %3, align 8
  br label %310

261:                                              ; preds = %251
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 5
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i64 -1
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 5
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %275, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i64 -1
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @zend_perform_covariant_type_check(%struct.TYPE_16__* %265, i32 %272, %struct.TYPE_16__* %276, i32 %283)
  store i64 %284, i64* %9, align 8
  %285 = load i64, i64* %9, align 8
  %286 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %287 = icmp ne i64 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i64 @UNEXPECTED(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %307

291:                                              ; preds = %261
  %292 = load i64, i64* %9, align 8
  %293 = load i64, i64* @INHERITANCE_ERROR, align 8
  %294 = icmp eq i64 %292, %293
  %295 = zext i1 %294 to i32
  %296 = call i64 @UNEXPECTED(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %291
  %299 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %299, i64* %3, align 8
  br label %310

300:                                              ; preds = %291
  %301 = load i64, i64* %9, align 8
  %302 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %303 = icmp eq i64 %301, %302
  %304 = zext i1 %303 to i32
  %305 = call i32 @ZEND_ASSERT(i32 %304)
  %306 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  store i64 %306, i64* %8, align 8
  br label %307

307:                                              ; preds = %300, %261
  br label %308

308:                                              ; preds = %307, %243
  %309 = load i64, i64* %8, align 8
  store i64 %309, i64* %3, align 8
  br label %310

310:                                              ; preds = %308, %298, %259, %237, %222, %124, %106, %88, %24
  %311 = load i64, i64* %3, align 8
  ret i64 %311
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i64 @zend_do_perform_arg_type_hint_check(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @ZEND_ARG_SEND_MODE(%struct.TYPE_15__*) #1

declare dso_local i64 @zend_perform_covariant_type_check(%struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
