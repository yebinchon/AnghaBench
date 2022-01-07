; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_trigger.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_exec_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { %struct.TYPE_46__*, %struct.TYPE_44__*, i32 }
%struct.TYPE_44__ = type { i32, i32, i64, i64, i32*, i32*, i32, i64*, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_37__ = type { i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)* }
%struct.TYPE_43__ = type { i64, i64, i64 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_40__ = type { i64 }

@plpgsql_exec_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_46__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"during initialization of execution state\00", align 1
@ATTRIBUTE_GENERATED_STORED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"unrecognized trigger action: not INSERT, DELETE, or UPDATE\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"during function entry\00", align 1
@plpgsql_plugin_ptr = common dso_local global %struct.TYPE_37__** null, align 8
@PLPGSQL_RC_RETURN = common dso_local global i32 0, align 4
@ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"control reached end of trigger procedure without RETURN\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"during function exit\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"trigger procedure cannot return a set\00", align 1
@ER_MAGIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"returned row structure does not match the structure of the triggering table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plpgsql_exec_trigger(%struct.TYPE_43__* %0, %struct.TYPE_41__* %1) #0 {
  %3 = alloca %struct.TYPE_43__*, align 8
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca %struct.TYPE_44__, align 8
  %6 = alloca %struct.TYPE_46__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_39__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_45__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %3, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %4, align 8
  %17 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %18 = call i32 @plpgsql_estate_setup(%struct.TYPE_44__* %5, %struct.TYPE_43__* %17, i32* null, i32* null)
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 8
  store %struct.TYPE_41__* %19, %struct.TYPE_41__** %20, align 8
  %21 = load i32, i32* @plpgsql_exec_error_callback, align 4
  %22 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %6, i32 0, i32 1
  store %struct.TYPE_44__* %5, %struct.TYPE_44__** %23, align 8
  %24 = load %struct.TYPE_46__*, %struct.TYPE_46__** @error_context_stack, align 8
  %25 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %6, i32 0, i32 0
  store %struct.TYPE_46__* %24, %struct.TYPE_46__** %25, align 8
  store %struct.TYPE_46__* %6, %struct.TYPE_46__** @error_context_stack, align 8
  %26 = call i8* @gettext_noop(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 4
  store i32* %27, i32** %28, align 8
  %29 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %30 = call i32 @copy_plpgsql_datums(%struct.TYPE_44__* %5, %struct.TYPE_43__* %29)
  %31 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_39__* @RelationGetDescr(i32 %33)
  store %struct.TYPE_39__* %34, %struct.TYPE_39__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 7
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %42, %struct.TYPE_42__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 7
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %50, %struct.TYPE_42__** %10, align 8
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @make_expanded_record_from_tupdesc(%struct.TYPE_39__* %51, i32 %53)
  %55 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @make_expanded_record_from_exprecord(i32 %59, i32 %61)
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @TRIGGER_FIRED_FOR_ROW(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %2
  br label %171

71:                                               ; preds = %2
  %72 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @TRIGGER_FIRED_BY_INSERT(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @expanded_record_set_tuple(i32 %80, i32* %83, i32 0, i32 0)
  br label %170

85:                                               ; preds = %71
  %86 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @TRIGGER_FIRED_BY_UPDATE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %151

91:                                               ; preds = %85
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @expanded_record_set_tuple(i32 %94, i32* %97, i32 0, i32 0)
  %99 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @expanded_record_set_tuple(i32 %101, i32* %104, i32 0, i32 0)
  %106 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** %107, align 8
  %109 = icmp ne %struct.TYPE_38__* %108, null
  br i1 %109, label %110, label %150

110:                                              ; preds = %91
  %111 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_38__*, %struct.TYPE_38__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %110
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @TRIGGER_FIRED_BEFORE(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %117
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call %struct.TYPE_40__* @TupleDescAttr(%struct.TYPE_39__* %131, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ATTRIBUTE_GENERATED_STORED, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @expanded_record_set_field_internal(i32 %141, i32 %143, i32 0, i32 1, i32 0, i32 0)
  br label %145

145:                                              ; preds = %138, %130
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %124

149:                                              ; preds = %124
  br label %150

150:                                              ; preds = %149, %117, %110, %91
  br label %169

151:                                              ; preds = %85
  %152 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @TRIGGER_FIRED_BY_DELETE(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @expanded_record_set_tuple(i32 %160, i32* %163, i32 0, i32 0)
  br label %168

165:                                              ; preds = %151
  %166 = load i32, i32* @ERROR, align 4
  %167 = call i32 @elog(i32 %166, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %157
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %77
  br label %171

171:                                              ; preds = %170, %70
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %173 = call i32 @SPI_register_trigger_data(%struct.TYPE_41__* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp sge i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @Assert(i32 %176)
  %178 = call i8* @gettext_noop(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %179 = bitcast i8* %178 to i32*
  %180 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 4
  store i32* %179, i32** %180, align 8
  %181 = call i32 @exec_set_found(%struct.TYPE_44__* %5, i32 0)
  %182 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @plpgsql_plugin_ptr, align 8
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %182, align 8
  %184 = icmp ne %struct.TYPE_37__* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %171
  %186 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @plpgsql_plugin_ptr, align 8
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 1
  %189 = load i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)** %188, align 8
  %190 = icmp ne i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @plpgsql_plugin_ptr, align 8
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 1
  %195 = load i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)** %194, align 8
  %196 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %197 = call i32 %195(%struct.TYPE_44__* %5, %struct.TYPE_43__* %196)
  br label %198

198:                                              ; preds = %191, %185, %171
  %199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 4
  store i32* null, i32** %199, align 8
  %200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i32*
  %204 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 5
  store i32* %203, i32** %204, align 8
  %205 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i32*
  %209 = call i32 @exec_stmt(%struct.TYPE_44__* %5, i32* %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @PLPGSQL_RC_RETURN, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %198
  %214 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 5
  store i32* null, i32** %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 4
  store i32* null, i32** %215, align 8
  %216 = load i32, i32* @ERROR, align 4
  %217 = load i32, i32* @ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT, align 4
  %218 = call i32 @errcode(i32 %217)
  %219 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %220 = call i32 @ereport(i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %213, %198
  %222 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 5
  store i32* null, i32** %222, align 8
  %223 = call i8* @gettext_noop(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %224 = bitcast i8* %223 to i32*
  %225 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 4
  store i32* %224, i32** %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %221
  %230 = load i32, i32* @ERROR, align 4
  %231 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %232 = call i32 @errcode(i32 %231)
  %233 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %234 = call i32 @ereport(i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %229, %221
  %236 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %235
  %240 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @TRIGGER_FIRED_FOR_ROW(i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %239, %235
  store i32* null, i32** %11, align 8
  br label %336

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32* @type_is_rowtype(i32 %248)
  %250 = ptrtoint i32* %249 to i32
  %251 = call i32 @Assert(i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @DatumGetPointer(i32 %253)
  %255 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %313

257:                                              ; preds = %246
  %258 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @DatumGetEOHP(i32 %259)
  %261 = inttoptr i64 %260 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %261, %struct.TYPE_45__** %15, align 8
  %262 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @ER_MAGIC, align 8
  %266 = icmp eq i64 %264, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 @Assert(i32 %267)
  %269 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %270 = call i32* @expanded_record_get_tuple(%struct.TYPE_45__* %269)
  store i32* %270, i32** %11, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = ptrtoint i32* %271 to i32
  %273 = call i32 @Assert(i32 %272)
  %274 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %275 = call %struct.TYPE_39__* @expanded_record_get_tupdesc(%struct.TYPE_45__* %274)
  store %struct.TYPE_39__* %275, %struct.TYPE_39__** %13, align 8
  %276 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %277 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call %struct.TYPE_39__* @RelationGetDescr(i32 %279)
  %281 = icmp ne %struct.TYPE_39__* %276, %280
  br i1 %281, label %282, label %297

282:                                              ; preds = %257
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %284 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call %struct.TYPE_39__* @RelationGetDescr(i32 %286)
  %288 = call i8* @gettext_noop(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %289 = call i32* @convert_tuples_by_position(%struct.TYPE_39__* %283, %struct.TYPE_39__* %287, i8* %288)
  store i32* %289, i32** %14, align 8
  %290 = load i32*, i32** %14, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %282
  %293 = load i32*, i32** %11, align 8
  %294 = load i32*, i32** %14, align 8
  %295 = call i32* @execute_attr_map_tuple(i32* %293, i32* %294)
  store i32* %295, i32** %11, align 8
  br label %296

296:                                              ; preds = %292, %282
  br label %297

297:                                              ; preds = %296, %257
  %298 = load i32*, i32** %11, align 8
  %299 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %298, %301
  br i1 %302, label %303, label %312

303:                                              ; preds = %297
  %304 = load i32*, i32** %11, align 8
  %305 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %304, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load i32*, i32** %11, align 8
  %311 = call i32* @SPI_copytuple(i32* %310)
  store i32* %311, i32** %11, align 8
  br label %312

312:                                              ; preds = %309, %303, %297
  br label %335

313:                                              ; preds = %246
  %314 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %5, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call %struct.TYPE_39__* @deconstruct_composite_datum(i32 %315, i32* %16)
  store %struct.TYPE_39__* %316, %struct.TYPE_39__** %13, align 8
  store i32* %16, i32** %11, align 8
  %317 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %318 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call %struct.TYPE_39__* @RelationGetDescr(i32 %320)
  %322 = call i8* @gettext_noop(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %323 = call i32* @convert_tuples_by_position(%struct.TYPE_39__* %317, %struct.TYPE_39__* %321, i8* %322)
  store i32* %323, i32** %14, align 8
  %324 = load i32*, i32** %14, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %313
  %327 = load i32*, i32** %11, align 8
  %328 = load i32*, i32** %14, align 8
  %329 = call i32* @execute_attr_map_tuple(i32* %327, i32* %328)
  store i32* %329, i32** %11, align 8
  br label %330

330:                                              ; preds = %326, %313
  %331 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %332 = call i32 @ReleaseTupleDesc(%struct.TYPE_39__* %331)
  %333 = load i32*, i32** %11, align 8
  %334 = call i32* @SPI_copytuple(i32* %333)
  store i32* %334, i32** %11, align 8
  br label %335

335:                                              ; preds = %330, %312
  br label %336

336:                                              ; preds = %335, %245
  %337 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @plpgsql_plugin_ptr, align 8
  %338 = load %struct.TYPE_37__*, %struct.TYPE_37__** %337, align 8
  %339 = icmp ne %struct.TYPE_37__* %338, null
  br i1 %339, label %340, label %353

340:                                              ; preds = %336
  %341 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @plpgsql_plugin_ptr, align 8
  %342 = load %struct.TYPE_37__*, %struct.TYPE_37__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %342, i32 0, i32 0
  %344 = load i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)** %343, align 8
  %345 = icmp ne i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)* %344, null
  br i1 %345, label %346, label %353

346:                                              ; preds = %340
  %347 = load %struct.TYPE_37__**, %struct.TYPE_37__*** @plpgsql_plugin_ptr, align 8
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %348, i32 0, i32 0
  %350 = load i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)*, i32 (%struct.TYPE_44__*, %struct.TYPE_43__*)** %349, align 8
  %351 = load %struct.TYPE_43__*, %struct.TYPE_43__** %3, align 8
  %352 = call i32 %350(%struct.TYPE_44__* %5, %struct.TYPE_43__* %351)
  br label %353

353:                                              ; preds = %346, %340, %336
  %354 = call i32 @plpgsql_destroy_econtext(%struct.TYPE_44__* %5)
  %355 = call i32 @exec_eval_cleanup(%struct.TYPE_44__* %5)
  %356 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %6, i32 0, i32 0
  %357 = load %struct.TYPE_46__*, %struct.TYPE_46__** %356, align 8
  store %struct.TYPE_46__* %357, %struct.TYPE_46__** @error_context_stack, align 8
  %358 = load i32*, i32** %11, align 8
  ret i32* %358
}

declare dso_local i32 @plpgsql_estate_setup(%struct.TYPE_44__*, %struct.TYPE_43__*, i32*, i32*) #1

declare dso_local i8* @gettext_noop(i8*) #1

declare dso_local i32 @copy_plpgsql_datums(%struct.TYPE_44__*, %struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_39__* @RelationGetDescr(i32) #1

declare dso_local i32 @make_expanded_record_from_tupdesc(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @make_expanded_record_from_exprecord(i32, i32) #1

declare dso_local i32 @TRIGGER_FIRED_FOR_ROW(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_INSERT(i32) #1

declare dso_local i32 @expanded_record_set_tuple(i32, i32*, i32, i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_UPDATE(i32) #1

declare dso_local i64 @TRIGGER_FIRED_BEFORE(i32) #1

declare dso_local %struct.TYPE_40__* @TupleDescAttr(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @expanded_record_set_field_internal(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @TRIGGER_FIRED_BY_DELETE(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @SPI_register_trigger_data(%struct.TYPE_41__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @exec_set_found(%struct.TYPE_44__*, i32) #1

declare dso_local i32 @exec_stmt(%struct.TYPE_44__*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @type_is_rowtype(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @DatumGetEOHP(i32) #1

declare dso_local i32* @expanded_record_get_tuple(%struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_39__* @expanded_record_get_tupdesc(%struct.TYPE_45__*) #1

declare dso_local i32* @convert_tuples_by_position(%struct.TYPE_39__*, %struct.TYPE_39__*, i8*) #1

declare dso_local i32* @execute_attr_map_tuple(i32*, i32*) #1

declare dso_local i32* @SPI_copytuple(i32*) #1

declare dso_local %struct.TYPE_39__* @deconstruct_composite_datum(i32, i32*) #1

declare dso_local i32 @ReleaseTupleDesc(%struct.TYPE_39__*) #1

declare dso_local i32 @plpgsql_destroy_econtext(%struct.TYPE_44__*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_44__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
