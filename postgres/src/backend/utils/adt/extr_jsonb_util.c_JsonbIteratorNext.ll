; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_JsonbIteratorNext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_JsonbIteratorNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }

@WJB_DONE = common dso_local global i32 0, align 4
@jbvArray = common dso_local global i32 0, align 4
@WJB_BEGIN_ARRAY = common dso_local global i32 0, align 4
@WJB_END_ARRAY = common dso_local global i32 0, align 4
@WJB_ELEM = common dso_local global i32 0, align 4
@jbvObject = common dso_local global i32 0, align 4
@WJB_BEGIN_OBJECT = common dso_local global i32 0, align 4
@WJB_END_OBJECT = common dso_local global i32 0, align 4
@jbvString = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unexpected jsonb type as object key\00", align 1
@WJB_KEY = common dso_local global i32 0, align 4
@WJB_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid iterator state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JsonbIteratorNext(%struct.TYPE_20__** %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__**, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__** %0, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %10 = icmp eq %struct.TYPE_20__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @WJB_DONE, align 4
  store i32 %12, i32* %4, align 4
  br label %295

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %280, %113, %13
  %15 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %292 [
    i32 131, label %19
    i32 132, label %52
    i32 129, label %125
    i32 130, label %159
    i32 128, label %207
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* @jbvArray, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i64 %26, i64* %30, align 8
  %31 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  store i32 132, i32* %50, align 8
  %51 = load i32, i32* @WJB_BEGIN_ARRAY, align 4
  store i32 %51, i32* %4, align 4
  br label %295

52:                                               ; preds = %14
  %53 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %56, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = call %struct.TYPE_20__* @freeAndGetParent(%struct.TYPE_20__* %64)
  %66 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %66, align 8
  %67 = load i32, i32* @WJB_END_ARRAY, align 4
  store i32 %67, i32* %4, align 4
  br label %295

68:                                               ; preds = %52
  %69 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = call i32 @fillJsonbValue(i32 %72, i64 %76, i32 %80, i32 %84, %struct.TYPE_19__* %85)
  %87 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @JBE_ADVANCE_OFFSET(i32 %90, i32 %100)
  %102 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = call i32 @IsAJsonbScalar(%struct.TYPE_19__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %68
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = call %struct.TYPE_20__* @iteratorFromContainer(i32 %118, %struct.TYPE_20__* %120)
  %122 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %122, align 8
  br label %14

123:                                              ; preds = %110, %68
  %124 = load i32, i32* @WJB_ELEM, align 4
  store i32 %124, i32* %4, align 4
  br label %295

125:                                              ; preds = %14
  %126 = load i32, i32* @jbvObject, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i64 %132, i64* %136, align 8
  %137 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @getJsonbOffset(i32 %146, i64 %150)
  %152 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 8
  %155 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  store i32 130, i32* %157, align 8
  %158 = load i32, i32* @WJB_BEGIN_OBJECT, align 4
  store i32 %158, i32* %4, align 4
  br label %295

159:                                              ; preds = %14
  %160 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp uge i64 %163, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %159
  %170 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = call %struct.TYPE_20__* @freeAndGetParent(%struct.TYPE_20__* %171)
  %173 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* %172, %struct.TYPE_20__** %173, align 8
  %174 = load i32, i32* @WJB_END_OBJECT, align 4
  store i32 %174, i32* %4, align 4
  br label %295

175:                                              ; preds = %159
  %176 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = call i32 @fillJsonbValue(i32 %179, i64 %183, i32 %187, i32 %191, %struct.TYPE_19__* %192)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @jbvString, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %175
  %200 = load i32, i32* @ERROR, align 4
  %201 = call i32 @elog(i32 %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %175
  %203 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  store i32 128, i32* %205, align 8
  %206 = load i32, i32* @WJB_KEY, align 4
  store i32 %206, i32* %4, align 4
  br label %295

207:                                              ; preds = %14
  %208 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  store i32 130, i32* %210, align 8
  %211 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %218, %222
  %224 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %233 = call i32 @fillJsonbValue(i32 %214, i64 %223, i32 %227, i32 %231, %struct.TYPE_19__* %232)
  %234 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @JBE_ADVANCE_OFFSET(i32 %237, i32 %247)
  %249 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = add i64 %260, %264
  %266 = getelementptr inbounds i32, i32* %256, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @JBE_ADVANCE_OFFSET(i32 %252, i32 %267)
  %269 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %275 = call i32 @IsAJsonbScalar(%struct.TYPE_19__* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %290, label %277

277:                                              ; preds = %207
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %290, label %280

280:                                              ; preds = %277
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = call %struct.TYPE_20__* @iteratorFromContainer(i32 %285, %struct.TYPE_20__* %287)
  %289 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* %288, %struct.TYPE_20__** %289, align 8
  br label %14

290:                                              ; preds = %277, %207
  %291 = load i32, i32* @WJB_VALUE, align 4
  store i32 %291, i32* %4, align 4
  br label %295

292:                                              ; preds = %14
  %293 = load i32, i32* @ERROR, align 4
  %294 = call i32 @elog(i32 %293, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %295

295:                                              ; preds = %292, %290, %202, %169, %125, %123, %62, %19, %11
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local %struct.TYPE_20__* @freeAndGetParent(%struct.TYPE_20__*) #1

declare dso_local i32 @fillJsonbValue(i32, i64, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @JBE_ADVANCE_OFFSET(i32, i32) #1

declare dso_local i32 @IsAJsonbScalar(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @iteratorFromContainer(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @getJsonbOffset(i32, i64) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
