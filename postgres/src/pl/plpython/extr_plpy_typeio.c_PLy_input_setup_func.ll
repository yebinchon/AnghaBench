; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLy_input_setup_func.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_typeio.c_PLy_input_setup_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i8, %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32*, i32, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i8, i32, i32, i8, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32 }

@RECORDOID = common dso_local global i32 0, align 4
@TYPECACHE_DOMAIN_BASE_INFO = common dso_local global i32 0, align 4
@TYPTYPE_COMPOSITE = common dso_local global i8 0, align 1
@TYPTYPE_DOMAIN = common dso_local global i8 0, align 1
@PLyList_FromArray = common dso_local global i32 0, align 4
@PLyObject_FromTransform = common dso_local global i32 0, align 4
@PLyDict_FromComposite = common dso_local global i32 0, align 4
@INVALID_TUPLEDESC_IDENTIFIER = common dso_local global i32 0, align 4
@PLyBool_FromBool = common dso_local global i32 0, align 4
@PLyFloat_FromFloat4 = common dso_local global i32 0, align 4
@PLyFloat_FromFloat8 = common dso_local global i32 0, align 4
@PLyDecimal_FromNumeric = common dso_local global i32 0, align 4
@PLyInt_FromInt16 = common dso_local global i32 0, align 4
@PLyInt_FromInt32 = common dso_local global i32 0, align 4
@PLyLong_FromInt64 = common dso_local global i32 0, align 4
@PLyLong_FromOid = common dso_local global i32 0, align 4
@PLyBytes_FromBytea = common dso_local global i32 0, align 4
@PLyString_FromScalar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLy_input_setup_func(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %10, align 8
  %16 = call i32 (...) @check_stack_depth()
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @RECORDOID, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @TYPECACHE_DOMAIN_BASE_INFO, align 4
  %32 = call %struct.TYPE_17__* @lookup_type_cache(i32 %30, i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %11, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  store i8 %35, i8* %12, align 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load i8, i8* %47, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  store i8 %48, i8* %50, align 4
  br label %59

51:                                               ; preds = %5
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %11, align 8
  %52 = load i8, i8* @TYPTYPE_COMPOSITE, align 1
  store i8 %52, i8* %12, align 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  store i32 -1, i32* %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  store i8 100, i8* %58, align 4
  br label %59

59:                                               ; preds = %51, %29
  %60 = load i8, i8* %12, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @TYPTYPE_DOMAIN, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  call void @PLy_input_setup_func(%struct.TYPE_19__* %66, i32 %67, i32 %70, i32 %73, %struct.TYPE_18__* %74)
  br label %219

75:                                               ; preds = %59
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  br i1 %77, label %78, label %111

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @OidIsValid(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load i32, i32* @PLyList_FromArray, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @MemoryContextAllocZero(i32 %93, i32 96)
  %95 = inttoptr i64 %94 to %struct.TYPE_19__*
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  call void @PLy_input_setup_func(%struct.TYPE_19__* %104, i32 %105, i32 %108, i32 %109, %struct.TYPE_18__* %110)
  br label %218

111:                                              ; preds = %84, %78, %75
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @get_transform_fromsql(i32 %112, i32 %115, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %111
  %122 = load i32, i32* @PLyObject_FromTransform, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @fmgr_info_cxt(i32 %125, i32* %129, i32 %130)
  br label %217

132:                                              ; preds = %111
  %133 = load i8, i8* %12, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @TYPTYPE_COMPOSITE, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %132
  %139 = load i32, i32* @PLyDict_FromComposite, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 3
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %150, align 8
  %151 = load i32, i32* @INVALID_TUPLEDESC_IDENTIFIER, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  store i32 %151, i32* %155, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store i32* null, i32** %159, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %216

164:                                              ; preds = %132
  %165 = load i32, i32* %8, align 4
  switch i32 %165, label %202 [
    i32 136, label %166
    i32 134, label %170
    i32 133, label %174
    i32 129, label %178
    i32 132, label %182
    i32 131, label %186
    i32 130, label %190
    i32 128, label %194
    i32 135, label %198
  ]

166:                                              ; preds = %164
  %167 = load i32, i32* @PLyBool_FromBool, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  br label %215

170:                                              ; preds = %164
  %171 = load i32, i32* @PLyFloat_FromFloat4, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  br label %215

174:                                              ; preds = %164
  %175 = load i32, i32* @PLyFloat_FromFloat8, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 8
  br label %215

178:                                              ; preds = %164
  %179 = load i32, i32* @PLyDecimal_FromNumeric, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  br label %215

182:                                              ; preds = %164
  %183 = load i32, i32* @PLyInt_FromInt16, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  br label %215

186:                                              ; preds = %164
  %187 = load i32, i32* @PLyInt_FromInt32, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 8
  br label %215

190:                                              ; preds = %164
  %191 = load i32, i32* @PLyLong_FromInt64, align 4
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  br label %215

194:                                              ; preds = %164
  %195 = load i32, i32* @PLyLong_FromOid, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  br label %215

198:                                              ; preds = %164
  %199 = load i32, i32* @PLyBytes_FromBytea, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 8
  br label %215

202:                                              ; preds = %164
  %203 = load i32, i32* @PLyString_FromScalar, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @getTypeOutputInfo(i32 %206, i32* %14, i32* %15)
  %208 = load i32, i32* %14, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @fmgr_info_cxt(i32 %208, i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %202, %198, %194, %190, %186, %182, %178, %174, %170, %166
  br label %216

216:                                              ; preds = %215, %138
  br label %217

217:                                              ; preds = %216, %121
  br label %218

218:                                              ; preds = %217, %89
  br label %219

219:                                              ; preds = %218, %65
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local %struct.TYPE_17__* @lookup_type_cache(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @get_transform_fromsql(i32, i32, i32) #1

declare dso_local i32 @fmgr_info_cxt(i32, i32*, i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
