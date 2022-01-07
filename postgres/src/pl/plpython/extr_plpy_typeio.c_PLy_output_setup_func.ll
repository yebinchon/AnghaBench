; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLy_output_setup_func.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLy_output_setup_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i8, %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64, i32*, i32, %struct.TYPE_22__*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i8, i32, i32, i8, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32* }
%struct.TYPE_23__ = type { i32, i32 }

@RECORDOID = common dso_local global i32 0, align 4
@TYPECACHE_DOMAIN_BASE_INFO = common dso_local global i32 0, align 4
@TYPTYPE_COMPOSITE = common dso_local global i8 0, align 1
@TYPTYPE_DOMAIN = common dso_local global i8 0, align 1
@PLyObject_ToDomain = common dso_local global i32 0, align 4
@PLySequence_ToArray = common dso_local global i32 0, align 4
@PLyObject_ToTransform = common dso_local global i32 0, align 4
@PLyObject_ToComposite = common dso_local global i32 0, align 4
@INVALID_TUPLEDESC_IDENTIFIER = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@PLyObject_ToBool = common dso_local global i32 0, align 4
@PLyObject_ToBytea = common dso_local global i32 0, align 4
@PLyObject_ToScalar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLy_output_setup_func(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_23__* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %10, align 8
  %15 = call i32 (...) @check_stack_depth()
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @RECORDOID, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @TYPECACHE_DOMAIN_BASE_INFO, align 4
  %31 = call %struct.TYPE_22__* @lookup_type_cache(i32 %29, i32 %30)
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %11, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  store i8 %34, i8* %12, align 1
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 3
  %47 = load i8, i8* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i8 %47, i8* %49, align 4
  br label %58

50:                                               ; preds = %5
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  %51 = load i8, i8* @TYPTYPE_COMPOSITE, align 1
  store i8 %51, i8* %12, align 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  store i32 -1, i32* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  store i8 100, i8* %57, align 4
  br label %58

58:                                               ; preds = %50, %28
  %59 = load i8, i8* %12, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @TYPTYPE_DOMAIN, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load i32, i32* @PLyObject_ToDomain, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @MemoryContextAllocZero(i32 %72, i32 128)
  %74 = inttoptr i64 %73 to %struct.TYPE_14__*
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  call void @PLy_output_setup_func(%struct.TYPE_14__* %83, i32 %84, i32 %87, i32 %90, %struct.TYPE_23__* %91)
  br label %226

92:                                               ; preds = %58
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %94 = icmp ne %struct.TYPE_22__* %93, null
  br i1 %94, label %95, label %136

95:                                               ; preds = %92
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @OidIsValid(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %95
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %136

106:                                              ; preds = %101
  %107 = load i32, i32* @PLySequence_ToArray, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @getBaseType(i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @MemoryContextAllocZero(i32 %118, i32 128)
  %120 = inttoptr i64 %119 to %struct.TYPE_14__*
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store %struct.TYPE_14__* %120, %struct.TYPE_14__** %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  call void @PLy_output_setup_func(%struct.TYPE_14__* %129, i32 %130, i32 %133, i32 %134, %struct.TYPE_23__* %135)
  br label %225

136:                                              ; preds = %101, %95, %92
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @get_transform_tosql(i32 %137, i32 %140, i32 %143)
  store i32 %144, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %136
  %147 = load i32, i32* @PLyObject_ToTransform, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @fmgr_info_cxt(i32 %150, i32* %154, i32 %155)
  br label %224

157:                                              ; preds = %136
  %158 = load i8, i8* %12, align 1
  %159 = sext i8 %158 to i32
  %160 = load i8, i8* @TYPTYPE_COMPOSITE, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %157
  %164 = load i32, i32* @PLyObject_ToComposite, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 5
  store i32* null, i32** %170, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 4
  store %struct.TYPE_22__* %171, %struct.TYPE_22__** %175, align 8
  %176 = load i32, i32* @INVALID_TUPLEDESC_IDENTIFIER, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 3
  store i32 %176, i32* %180, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* @InvalidOid, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  store i32 %189, i32* %194, align 8
  br label %223

195:                                              ; preds = %157
  %196 = load i32, i32* %8, align 4
  switch i32 %196, label %205 [
    i32 129, label %197
    i32 128, label %201
  ]

197:                                              ; preds = %195
  %198 = load i32, i32* @PLyObject_ToBool, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  br label %222

201:                                              ; preds = %195
  %202 = load i32, i32* @PLyObject_ToBytea, align 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 8
  br label %222

205:                                              ; preds = %195
  %206 = load i32, i32* @PLyObject_ToScalar, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 1
  %214 = call i32 @getTypeInputInfo(i32 %209, i32* %14, i32* %213)
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @fmgr_info_cxt(i32 %215, i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %205, %201, %197
  br label %223

223:                                              ; preds = %222, %163
  br label %224

224:                                              ; preds = %223, %146
  br label %225

225:                                              ; preds = %224, %106
  br label %226

226:                                              ; preds = %225, %64
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local %struct.TYPE_22__* @lookup_type_cache(i32, i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @getBaseType(i32) #1

declare dso_local i32 @get_transform_tosql(i32, i32, i32) #1

declare dso_local i32 @fmgr_info_cxt(i32, i32*, i32) #1

declare dso_local i32 @getTypeInputInfo(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
