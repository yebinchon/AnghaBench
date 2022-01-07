; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_dynexecute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_dynexecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32** }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i64*, i8*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_20__*, i64, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"query string argument of EXECUTE is null\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"EXECUTE of SELECT ... INTO is not implemented\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"You might want to use EXECUTE ... INTO or EXECUTE CREATE TABLE ... AS instead.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot COPY to/from client in PL/pgSQL\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"EXECUTE of transaction commands is not implemented\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"SPI_execute failed executing query \22%s\22: %s\00", align 1
@SPI_processed = common dso_local global i8* null, align 8
@SPI_tuptable = common dso_local global %struct.TYPE_22__* null, align 8
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"INTO used with a command that cannot return data\00", align 1
@ERRCODE_NO_DATA_FOUND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"query returned no rows\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"parameters: %s\00", align 1
@ERRCODE_TOO_MANY_ROWS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"query returned more than one row\00", align 1
@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @exec_stmt_dynexecute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_dynexecute(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = call i32 @get_stmt_mcontext(%struct.TYPE_25__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @exec_eval_expr(%struct.TYPE_25__* %20, i32 %23, i32* %6, i32* %7, i32* %8)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @convert_value_to_string(%struct.TYPE_25__* %34, i32 %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @MemoryContextStrdup(i32 %38, i8* %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %42 = call i32 @exec_eval_cleanup(%struct.TYPE_25__* %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %33
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_23__* @exec_eval_using_params(%struct.TYPE_25__* %48, i32 %51)
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %11, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @SPI_execute_with_args(i8* %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 0)
  store i32 %69, i32* %10, align 4
  br label %76

70:                                               ; preds = %33
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @SPI_execute(i8* %71, i32 %74, i32 0)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %70, %47
  %77 = load i32, i32* %10, align 4
  switch i32 %77, label %99 [
    i32 132, label %78
    i32 135, label %78
    i32 130, label %78
    i32 137, label %78
    i32 134, label %78
    i32 129, label %78
    i32 136, label %78
    i32 128, label %78
    i32 133, label %78
    i32 0, label %79
    i32 131, label %80
    i32 139, label %87
    i32 138, label %93
  ]

78:                                               ; preds = %76, %76, %76, %76, %76, %76, %76, %76, %76
  br label %105

79:                                               ; preds = %76
  br label %105

80:                                               ; preds = %76
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %85 = call i32 @errhint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %81, i32 %85)
  br label %105

87:                                               ; preds = %76
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %105

93:                                               ; preds = %76
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @ereport(i32 %94, i32 %97)
  br label %105

99:                                               ; preds = %76
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @SPI_result_code_string(i32 %102)
  %104 = call i32 @elog(i32 %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %93, %87, %80, %79, %78
  %106 = load i8*, i8** @SPI_processed, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %226

113:                                              ; preds = %105
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SPI_tuptable, align 8
  store %struct.TYPE_22__* %114, %struct.TYPE_22__** %13, align 8
  %115 = load i8*, i8** @SPI_processed, align 8
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %118 = icmp eq %struct.TYPE_22__* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %122 = call i32 @errcode(i32 %121)
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %124 = call i32 @ereport(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %113
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i64, i64* %128, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %15, align 8
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %125
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %139
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %154 = call i8* @format_preparedparamsdata(%struct.TYPE_25__* %152, %struct.TYPE_23__* %153)
  store i8* %154, i8** %16, align 8
  br label %156

155:                                              ; preds = %144
  store i8* null, i8** %16, align 8
  br label %156

156:                                              ; preds = %155, %151
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_NO_DATA_FOUND, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = call i32 @errmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %161 = load i8*, i8** %16, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i8*, i8** %16, align 8
  %165 = call i32 @errdetail_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %164)
  br label %167

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %163
  %168 = phi i32 [ %165, %163 ], [ 0, %166 ]
  %169 = call i32 @ereport(i32 %157, i32 %168)
  br label %170

170:                                              ; preds = %167, %139
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @exec_move_row(%struct.TYPE_25__* %171, i32* %172, i32* null, i32 %175)
  br label %223

177:                                              ; preds = %125
  %178 = load i32, i32* %14, align 4
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %180, label %211

180:                                              ; preds = %177
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %180
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %195 = call i8* @format_preparedparamsdata(%struct.TYPE_25__* %193, %struct.TYPE_23__* %194)
  store i8* %195, i8** %17, align 8
  br label %197

196:                                              ; preds = %185
  store i8* null, i8** %17, align 8
  br label %197

197:                                              ; preds = %196, %192
  %198 = load i32, i32* @ERROR, align 4
  %199 = load i32, i32* @ERRCODE_TOO_MANY_ROWS, align 4
  %200 = call i32 @errcode(i32 %199)
  %201 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %202 = load i8*, i8** %17, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load i8*, i8** %17, align 8
  %206 = call i32 @errdetail_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %205)
  br label %208

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %207, %204
  %209 = phi i32 [ %206, %204 ], [ 0, %207 ]
  %210 = call i32 @ereport(i32 %198, i32 %209)
  br label %211

211:                                              ; preds = %208, %180, %177
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %213 = load i32*, i32** %15, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 0
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @exec_move_row(%struct.TYPE_25__* %212, i32* %213, i32* %218, i32 %221)
  br label %223

223:                                              ; preds = %211, %170
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %225 = call i32 @exec_eval_cleanup(%struct.TYPE_25__* %224)
  br label %227

226:                                              ; preds = %105
  br label %227

227:                                              ; preds = %226, %223
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SPI_tuptable, align 8
  %229 = call i32 @SPI_freetuptable(%struct.TYPE_22__* %228)
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @MemoryContextReset(i32 %230)
  %232 = load i32, i32* @PLPGSQL_RC_OK, align 4
  ret i32 %232
}

declare dso_local i32 @get_stmt_mcontext(%struct.TYPE_25__*) #1

declare dso_local i32 @exec_eval_expr(%struct.TYPE_25__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @convert_value_to_string(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i8* @MemoryContextStrdup(i32, i8*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_23__* @exec_eval_using_params(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @SPI_execute_with_args(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i8* @format_preparedparamsdata(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @errdetail_internal(i8*, i8*) #1

declare dso_local i32 @exec_move_row(%struct.TYPE_25__*, i32*, i32*, i32) #1

declare dso_local i32 @SPI_freetuptable(%struct.TYPE_22__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
