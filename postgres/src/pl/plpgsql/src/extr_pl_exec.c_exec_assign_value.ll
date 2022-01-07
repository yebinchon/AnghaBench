; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_assign_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_assign_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, %struct.TYPE_31__**, i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_25__, i32, i32 }
%struct.TYPE_25__ = type { i32, i8*, i8* }
%struct.TYPE_32__ = type { i64, i8*, i8*, i32, i8, i8*, i8*, i8*, i8*, i8*, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"null value cannot be assigned to variable \22%s\22 declared NOT NULL\00", align 1
@PLPGSQL_PROMISE_NONE = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot assign non-composite value to a row variable\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"cannot assign non-composite value to a record variable\00", align 1
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"record \22%s\22 has no field \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot assign to system column \22%s\22\00", align 1
@MAXDIM = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"number of array dimensions (%d) exceeds the maximum allowed (%d)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"subscripted object is not an array\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"array subscript in assignment must not be null\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_31__*, i32, i32, i8*, i8*)* @exec_assign_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_assign_value(%struct.TYPE_30__* %0, %struct.TYPE_31__* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8, align 1
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %555 [
    i32 128, label %46
    i32 132, label %46
    i32 129, label %155
    i32 131, label %180
    i32 130, label %221
    i32 133, label %326
  ]

46:                                               ; preds = %6, %6
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %48 = bitcast %struct.TYPE_31__* %47 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %48, %struct.TYPE_27__** %13, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @exec_cast_value(%struct.TYPE_30__* %49, i32 %50, i32* %10, i8* %51, i8* %52, i8* %57, i8* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %46
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %71, %66, %46
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @DatumGetPointer(i32 %98)
  %100 = call i32 @VARATT_IS_EXTERNAL_EXPANDED_RW(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @expand_array(i32 %103, i32 %106, i32* null)
  store i32 %107, i32* %14, align 4
  br label %116

108:                                              ; preds = %97, %90
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @datumTransfer(i32 %109, i32 0, i32 %114)
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %108, %102
  br label %117

117:                                              ; preds = %116, %87, %80
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %128, %123, %117
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %142, %131
  %147 = phi i1 [ false, %131 ], [ %145, %142 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @assign_simple_var(%struct.TYPE_30__* %132, %struct.TYPE_27__* %133, i32 %134, i32 %135, i32 %148)
  br label %154

150:                                              ; preds = %128
  %151 = load i32, i32* @PLPGSQL_PROMISE_NONE, align 4
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %146
  br label %561

155:                                              ; preds = %6
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %157 = bitcast %struct.TYPE_31__* %156 to i32*
  store i32* %157, i32** %15, align 8
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = call i32 @exec_move_row(%struct.TYPE_30__* %161, i32* %162, i32* null, i32* null)
  br label %179

164:                                              ; preds = %155
  %165 = load i8*, i8** %11, align 8
  %166 = call i32 @type_is_rowtype(i8* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @ERROR, align 4
  %170 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %171 = call i32 @errcode(i32 %170)
  %172 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %173 = call i32 @ereport(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @exec_move_row_from_datum(%struct.TYPE_30__* %175, i32* %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %160
  br label %561

180:                                              ; preds = %6
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %182 = bitcast %struct.TYPE_31__* %181 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %182, %struct.TYPE_29__** %16, align 8
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %180
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i32, i32* @ERROR, align 4
  %192 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %193 = call i32 @errcode(i32 %192)
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = call i32 @ereport(i32 %191, i32 %197)
  br label %199

199:                                              ; preds = %190, %185
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %202 = bitcast %struct.TYPE_29__* %201 to i32*
  %203 = call i32 @exec_move_row(%struct.TYPE_30__* %200, i32* %202, i32* null, i32* null)
  br label %220

204:                                              ; preds = %180
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 @type_is_rowtype(i8* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @ERROR, align 4
  %210 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %211 = call i32 @errcode(i32 %210)
  %212 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %213 = call i32 @ereport(i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %208, %204
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %217 = bitcast %struct.TYPE_29__* %216 to i32*
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @exec_move_row_from_datum(%struct.TYPE_30__* %215, i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %199
  br label %561

221:                                              ; preds = %6
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %223 = bitcast %struct.TYPE_31__* %222 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %223, %struct.TYPE_28__** %17, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %225, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %226, i64 %229
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %230, align 8
  %232 = bitcast %struct.TYPE_31__* %231 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %232, %struct.TYPE_29__** %18, align 8
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %234, align 8
  store %struct.TYPE_33__* %235, %struct.TYPE_33__** %19, align 8
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %237 = icmp eq %struct.TYPE_33__* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %221
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %241 = call i32 @instantiate_empty_record_variable(%struct.TYPE_30__* %239, %struct.TYPE_29__* %240)
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %243, align 8
  store %struct.TYPE_33__* %244, %struct.TYPE_33__** %19, align 8
  br label %245

245:                                              ; preds = %238, %221
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %248, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @unlikely(i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %283

256:                                              ; preds = %245
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 1
  %263 = call i32 @expanded_record_lookup_field(%struct.TYPE_33__* %257, i32 %260, %struct.TYPE_25__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %277, label %265

265:                                              ; preds = %256
  %266 = load i32, i32* @ERROR, align 4
  %267 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %268 = call i32 @errcode(i32 %267)
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %271, i32 %274)
  %276 = call i32 @ereport(i32 %266, i32 %275)
  br label %277

277:                                              ; preds = %265, %256
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %277, %245
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp sle i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %283
  %290 = load i32, i32* @ERROR, align 4
  %291 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %292 = call i32 @errcode(i32 %291)
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %295)
  %297 = call i32 @ereport(i32 %290, i32 %296)
  br label %298

298:                                              ; preds = %289, %283
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %300 = load i32, i32* %9, align 4
  %301 = load i8*, i8** %11, align 8
  %302 = load i8*, i8** %12, align 8
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @exec_cast_value(%struct.TYPE_30__* %299, i32 %300, i32* %10, i8* %301, i8* %302, i8* %306, i8* %310)
  store i32 %311, i32* %9, align 4
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %10, align 4
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = call i32 @expanded_record_set_field(%struct.TYPE_33__* %312, i32 %316, i32 %317, i32 %318, i32 %324)
  br label %561

326:                                              ; preds = %6
  %327 = load i32, i32* @MAXDIM, align 4
  %328 = zext i32 %327 to i64
  %329 = call i8* @llvm.stacksave()
  store i8* %329, i8** %23, align 8
  %330 = alloca i32*, i64 %328, align 16
  store i64 %328, i64* %24, align 8
  %331 = load i32, i32* @MAXDIM, align 4
  %332 = zext i32 %331 to i64
  %333 = alloca i32, i64 %332, align 16
  store i64 %332, i64* %25, align 8
  %334 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  store i32* %336, i32** %32, align 8
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 0
  store i32* null, i32** %338, align 8
  store i32 0, i32* %21, align 4
  br label %339

339:                                              ; preds = %370, %326
  %340 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %341 = bitcast %struct.TYPE_31__* %340 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %341, %struct.TYPE_32__** %20, align 8
  %342 = load i32, i32* %21, align 4
  %343 = load i32, i32* @MAXDIM, align 4
  %344 = icmp sge i32 %342, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %339
  %346 = load i32, i32* @ERROR, align 4
  %347 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %348 = call i32 @errcode(i32 %347)
  %349 = load i32, i32* %21, align 4
  %350 = add nsw i32 %349, 1
  %351 = load i32, i32* @MAXDIM, align 4
  %352 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %350, i32 %351)
  %353 = call i32 @ereport(i32 %346, i32 %352)
  br label %354

354:                                              ; preds = %345, %339
  %355 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %355, i32 0, i32 10
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %21, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %21, align 4
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32*, i32** %330, i64 %360
  store i32* %357, i32** %361, align 8
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %363, align 8
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %364, i64 %367
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %368, align 8
  store %struct.TYPE_31__* %369, %struct.TYPE_31__** %8, align 8
  br label %370

370:                                              ; preds = %354
  %371 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %373, 133
  br i1 %374, label %339, label %375

375:                                              ; preds = %370
  %376 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %378 = call i32 @exec_eval_datum(%struct.TYPE_30__* %376, %struct.TYPE_31__* %377, i8** %30, i8** %31, i32* %26, i32* %29)
  %379 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %380 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = load i8*, i8** %30, align 8
  %383 = icmp ne i8* %381, %382
  br i1 %383, label %390, label %384

384:                                              ; preds = %375
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %386 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i32 0, i32 2
  %387 = load i8*, i8** %386, align 8
  %388 = load i8*, i8** %31, align 8
  %389 = icmp ne i8* %387, %388
  br i1 %389, label %390, label %437

390:                                              ; preds = %384, %375
  %391 = load i8*, i8** %31, align 8
  store i8* %391, i8** %35, align 8
  %392 = load i8*, i8** %30, align 8
  %393 = call i8* @getBaseTypeAndTypmod(i8* %392, i8** %35)
  store i8* %393, i8** %34, align 8
  %394 = load i8*, i8** %34, align 8
  %395 = call i8* @get_element_type(i8* %394)
  store i8* %395, i8** %37, align 8
  %396 = load i8*, i8** %37, align 8
  %397 = call i32 @OidIsValid(i8* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %405, label %399

399:                                              ; preds = %390
  %400 = load i32, i32* @ERROR, align 4
  %401 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %402 = call i32 @errcode(i32 %401)
  %403 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %404 = call i32 @ereport(i32 %400, i32 %403)
  br label %405

405:                                              ; preds = %399, %390
  %406 = load i8*, i8** %34, align 8
  %407 = call i8* @get_typlen(i8* %406)
  store i8* %407, i8** %36, align 8
  %408 = load i8*, i8** %37, align 8
  %409 = call i32 @get_typlenbyvalalign(i8* %408, i8** %38, i32* %39, i8* %40)
  %410 = load i8*, i8** %30, align 8
  %411 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %412 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %411, i32 0, i32 1
  store i8* %410, i8** %412, align 8
  %413 = load i8*, i8** %31, align 8
  %414 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %415 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %414, i32 0, i32 2
  store i8* %413, i8** %415, align 8
  %416 = load i8*, i8** %34, align 8
  %417 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %418 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %417, i32 0, i32 6
  store i8* %416, i8** %418, align 8
  %419 = load i8*, i8** %35, align 8
  %420 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %421 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %420, i32 0, i32 5
  store i8* %419, i8** %421, align 8
  %422 = load i8*, i8** %36, align 8
  %423 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %424 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %423, i32 0, i32 8
  store i8* %422, i8** %424, align 8
  %425 = load i8*, i8** %37, align 8
  %426 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %427 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %426, i32 0, i32 9
  store i8* %425, i8** %427, align 8
  %428 = load i8*, i8** %38, align 8
  %429 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %430 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %429, i32 0, i32 7
  store i8* %428, i8** %430, align 8
  %431 = load i32, i32* %39, align 4
  %432 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %433 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %432, i32 0, i32 3
  store i32 %431, i32* %433, align 8
  %434 = load i8, i8* %40, align 1
  %435 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %436 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %435, i32 0, i32 4
  store i8 %434, i8* %436, align 4
  br label %437

437:                                              ; preds = %405, %384
  store i32 0, i32* %22, align 4
  br label %438

438:                                              ; preds = %476, %437
  %439 = load i32, i32* %22, align 4
  %440 = load i32, i32* %21, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %479

442:                                              ; preds = %438
  %443 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %444 = load i32, i32* %21, align 4
  %445 = sub nsw i32 %444, 1
  %446 = load i32, i32* %22, align 4
  %447 = sub nsw i32 %445, %446
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32*, i32** %330, i64 %448
  %450 = load i32*, i32** %449, align 8
  %451 = call i32 @exec_eval_integer(%struct.TYPE_30__* %443, i32* %450, i32* %41)
  %452 = load i32, i32* %22, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %333, i64 %453
  store i32 %451, i32* %454, align 4
  %455 = load i32, i32* %41, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %463

457:                                              ; preds = %442
  %458 = load i32, i32* @ERROR, align 4
  %459 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %460 = call i32 @errcode(i32 %459)
  %461 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %462 = call i32 @ereport(i32 %458, i32 %461)
  br label %463

463:                                              ; preds = %457, %442
  %464 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %464, i32 0, i32 0
  %466 = load i32*, i32** %465, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %473

468:                                              ; preds = %463
  %469 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %469, i32 0, i32 0
  %471 = load i32*, i32** %470, align 8
  %472 = call i32 @SPI_freetuptable(i32* %471)
  br label %473

473:                                              ; preds = %468, %463
  %474 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %474, i32 0, i32 0
  store i32* null, i32** %475, align 8
  br label %476

476:                                              ; preds = %473
  %477 = load i32, i32* %22, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %22, align 4
  br label %438

479:                                              ; preds = %438
  %480 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %480, i32 0, i32 0
  %482 = load i32*, i32** %481, align 8
  %483 = icmp eq i32* %482, null
  %484 = zext i1 %483 to i32
  %485 = call i32 @Assert(i32 %484)
  %486 = load i32*, i32** %32, align 8
  %487 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %487, i32 0, i32 0
  store i32* %486, i32** %488, align 8
  %489 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %490 = load i32, i32* %9, align 4
  %491 = load i8*, i8** %11, align 8
  %492 = load i8*, i8** %12, align 8
  %493 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %494 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %493, i32 0, i32 9
  %495 = load i8*, i8** %494, align 8
  %496 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %497 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %496, i32 0, i32 5
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 @exec_cast_value(%struct.TYPE_30__* %489, i32 %490, i32* %10, i8* %491, i8* %492, i8* %495, i8* %498)
  store i32 %499, i32* %28, align 4
  %500 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %501 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %500, i32 0, i32 8
  %502 = load i8*, i8** %501, align 8
  %503 = icmp ugt i8* %502, null
  br i1 %503, label %504, label %511

504:                                              ; preds = %479
  %505 = load i32, i32* %29, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %504
  %508 = load i32, i32* %10, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %507, %504
  store i32 1, i32* %42, align 4
  br label %552

511:                                              ; preds = %507, %479
  %512 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %513 = call i32 @get_eval_mcontext(%struct.TYPE_30__* %512)
  %514 = call i32 @MemoryContextSwitchTo(i32 %513)
  store i32 %514, i32* %33, align 4
  %515 = load i32, i32* %29, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %511
  %518 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %519 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %518, i32 0, i32 9
  %520 = load i8*, i8** %519, align 8
  %521 = call i32 @construct_empty_array(i8* %520)
  %522 = call i32 @PointerGetDatum(i32 %521)
  store i32 %522, i32* %26, align 4
  br label %523

523:                                              ; preds = %517, %511
  %524 = load i32, i32* %26, align 4
  %525 = load i32, i32* %21, align 4
  %526 = load i32, i32* %28, align 4
  %527 = load i32, i32* %10, align 4
  %528 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %529 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %528, i32 0, i32 8
  %530 = load i8*, i8** %529, align 8
  %531 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %532 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %531, i32 0, i32 7
  %533 = load i8*, i8** %532, align 8
  %534 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %535 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %538 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %537, i32 0, i32 4
  %539 = load i8, i8* %538, align 4
  %540 = call i32 @array_set_element(i32 %524, i32 %525, i32* %333, i32 %526, i32 %527, i8* %530, i8* %533, i32 %536, i8 signext %539)
  store i32 %540, i32* %27, align 4
  %541 = load i32, i32* %33, align 4
  %542 = call i32 @MemoryContextSwitchTo(i32 %541)
  %543 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %544 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %545 = load i32, i32* %27, align 4
  %546 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %547 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %546, i32 0, i32 6
  %548 = load i8*, i8** %547, align 8
  %549 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %550 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %549, i32 0, i32 5
  %551 = load i8*, i8** %550, align 8
  call void @exec_assign_value(%struct.TYPE_30__* %543, %struct.TYPE_31__* %544, i32 %545, i32 0, i8* %548, i8* %551)
  store i32 2, i32* %42, align 4
  br label %552

552:                                              ; preds = %523, %510
  %553 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %553)
  %554 = load i32, i32* %42, align 4
  switch i32 %554, label %562 [
    i32 1, label %561
    i32 2, label %561
  ]

555:                                              ; preds = %6
  %556 = load i32, i32* @ERROR, align 4
  %557 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %558 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @elog(i32 %556, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %559)
  br label %561

561:                                              ; preds = %552, %555, %552, %298, %220, %179, %154
  ret void

562:                                              ; preds = %552
  unreachable
}

declare dso_local i32 @exec_cast_value(%struct.TYPE_30__*, i32, i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @VARATT_IS_EXTERNAL_EXPANDED_RW(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @expand_array(i32, i32, i32*) #1

declare dso_local i32 @datumTransfer(i32, i32, i32) #1

declare dso_local i32 @assign_simple_var(%struct.TYPE_30__*, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @exec_move_row(%struct.TYPE_30__*, i32*, i32*, i32*) #1

declare dso_local i32 @type_is_rowtype(i8*) #1

declare dso_local i32 @exec_move_row_from_datum(%struct.TYPE_30__*, i32*, i32) #1

declare dso_local i32 @instantiate_empty_record_variable(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @expanded_record_lookup_field(%struct.TYPE_33__*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @expanded_record_set_field(%struct.TYPE_33__*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @exec_eval_datum(%struct.TYPE_30__*, %struct.TYPE_31__*, i8**, i8**, i32*, i32*) #1

declare dso_local i8* @getBaseTypeAndTypmod(i8*, i8**) #1

declare dso_local i8* @get_element_type(i8*) #1

declare dso_local i32 @OidIsValid(i8*) #1

declare dso_local i8* @get_typlen(i8*) #1

declare dso_local i32 @get_typlenbyvalalign(i8*, i8**, i32*, i8*) #1

declare dso_local i32 @exec_eval_integer(%struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @SPI_freetuptable(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_30__*) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @construct_empty_array(i8*) #1

declare dso_local i32 @array_set_element(i32, i32, i32*, i32, i32, i8*, i8*, i32, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
