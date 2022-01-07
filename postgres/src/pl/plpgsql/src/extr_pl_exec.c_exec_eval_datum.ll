; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_eval_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_eval_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_34__*, i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"row variable has no tupdesc\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"row not compatible with its own tupdesc\00", align 1
@RECORDOID = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"record \22%s\22 has no field \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_33__*, i32*, i32*, i32*, i32*)* @exec_eval_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_eval_datum(%struct.TYPE_32__* %0, %struct.TYPE_33__* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %239 [
    i32 132, label %24
    i32 128, label %29
    i32 129, label %52
    i32 131, label %100
    i32 130, label %158
  ]

24:                                               ; preds = %6
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %27 = bitcast %struct.TYPE_33__* %26 to %struct.TYPE_28__*
  %28 = call i32 @plpgsql_fulfill_promise(%struct.TYPE_32__* %25, %struct.TYPE_28__* %27)
  br label %29

29:                                               ; preds = %6, %24
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %31 = bitcast %struct.TYPE_33__* %30 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %14, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %245

52:                                               ; preds = %6
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %54 = bitcast %struct.TYPE_33__* %53 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %54, %struct.TYPE_29__** %15, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %56, align 8
  %58 = icmp ne %struct.TYPE_25__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ERROR, align 4
  %61 = call i32 (i32, i8*, ...) @elog(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = call i32 @BlessTupleDesc(%struct.TYPE_25__* %65)
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %68 = call i32 @get_eval_mcontext(%struct.TYPE_32__* %67)
  %69 = call i32 @MemoryContextSwitchTo(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = call i32* @make_tuple_from_row(%struct.TYPE_32__* %70, %struct.TYPE_29__* %71, %struct.TYPE_25__* %74)
  store i32* %75, i32** %16, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* @ERROR, align 4
  %80 = call i32 (i32, i8*, ...) @elog(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %62
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @HeapTupleGetDatum(i32* %94)
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %12, align 8
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @MemoryContextSwitchTo(i32 %98)
  br label %245

100:                                              ; preds = %6
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %102 = bitcast %struct.TYPE_33__* %101 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %102, %struct.TYPE_31__** %17, align 8
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %104, align 8
  %106 = icmp eq %struct.TYPE_34__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32*, i32** %11, align 8
  store i32 0, i32* %108, align 4
  %109 = load i32*, i32** %12, align 8
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32*, i32** %10, align 8
  store i32 -1, i32* %114, align 4
  br label %157

115:                                              ; preds = %100
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %117, align 8
  %119 = call i32 @ExpandedRecordIsEmpty(%struct.TYPE_34__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32*, i32** %11, align 8
  store i32 0, i32* %122, align 4
  %123 = load i32*, i32** %12, align 8
  store i32 1, i32* %123, align 4
  br label %131

124:                                              ; preds = %115
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %126, align 8
  %128 = call i32 @ExpandedRecordGetDatum(%struct.TYPE_34__* %127)
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %12, align 8
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %121
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @RECORDOID, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %10, align 8
  store i32 -1, i32* %142, align 4
  br label %156

143:                                              ; preds = %131
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %9, align 8
  store i32 %148, i32* %149, align 4
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %143, %137
  br label %157

157:                                              ; preds = %156, %107
  br label %245

158:                                              ; preds = %6
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %160 = bitcast %struct.TYPE_33__* %159 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %160, %struct.TYPE_30__** %18, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %169, %struct.TYPE_31__** %19, align 8
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %171, align 8
  store %struct.TYPE_34__* %172, %struct.TYPE_34__** %20, align 8
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %174 = icmp eq %struct.TYPE_34__* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %158
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %178 = call i32 @instantiate_empty_record_variable(%struct.TYPE_32__* %176, %struct.TYPE_31__* %177)
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %180, align 8
  store %struct.TYPE_34__* %181, %struct.TYPE_34__** %20, align 8
  br label %182

182:                                              ; preds = %175, %158
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %185, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @unlikely(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %220

193:                                              ; preds = %182
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 1
  %200 = call i32 @expanded_record_lookup_field(%struct.TYPE_34__* %194, i32 %197, %struct.TYPE_26__* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %193
  %203 = load i32, i32* @ERROR, align 4
  %204 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %205 = call i32 @errcode(i32 %204)
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %208, i32 %211)
  %213 = call i32 @ereport(i32 %203, i32 %212)
  br label %214

214:                                              ; preds = %202, %193
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %214, %182
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32*, i32** %9, align 8
  store i32 %224, i32* %225, align 4
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %10, align 8
  store i32 %229, i32* %230, align 4
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @expanded_record_get_field(%struct.TYPE_34__* %231, i32 %235, i32* %236)
  %238 = load i32*, i32** %11, align 8
  store i32 %237, i32* %238, align 4
  br label %245

239:                                              ; preds = %6
  %240 = load i32, i32* @ERROR, align 4
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32, i8*, ...) @elog(i32 %240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %239, %220, %157, %81, %29
  ret void
}

declare dso_local i32 @plpgsql_fulfill_promise(%struct.TYPE_32__*, %struct.TYPE_28__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @BlessTupleDesc(%struct.TYPE_25__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_32__*) #1

declare dso_local i32* @make_tuple_from_row(%struct.TYPE_32__*, %struct.TYPE_29__*, %struct.TYPE_25__*) #1

declare dso_local i32 @HeapTupleGetDatum(i32*) #1

declare dso_local i32 @ExpandedRecordIsEmpty(%struct.TYPE_34__*) #1

declare dso_local i32 @ExpandedRecordGetDatum(%struct.TYPE_34__*) #1

declare dso_local i32 @instantiate_empty_record_variable(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @expanded_record_lookup_field(%struct.TYPE_34__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @expanded_record_get_field(%struct.TYPE_34__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
