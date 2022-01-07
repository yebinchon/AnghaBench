; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_param_hook.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_param_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.pdo_bound_param_data = type { i32, i32, i32, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { i32, i8*, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@SQL_SUCCESS = common dso_local global i32 0, align 4
@SQL_SUCCESS_WITH_INFO = common dso_local global i32 0, align 4
@SQL_LONGVARBINARY = common dso_local global i32 0, align 4
@SQL_LONGVARCHAR = common dso_local global i32 0, align 4
@SQL_BINARY = common dso_local global i32 0, align 4
@SQL_VARBINARY = common dso_local global i32 0, align 4
@SQL_C_BINARY = common dso_local global i32 0, align 4
@SQL_C_CHAR = common dso_local global i32 0, align 4
@PDO_PARAM_INPUT_OUTPUT = common dso_local global i32 0, align 4
@SQL_PARAM_INPUT_OUTPUT = common dso_local global i32 0, align 4
@SQL_PARAM_INPUT = common dso_local global i32 0, align 4
@SQL_PARAM_OUTPUT = common dso_local global i32 0, align 4
@PDO_PARAM_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't bind a lob for output\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SQLBindParameter\00", align 1
@IS_RESOURCE = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.pdo_bound_param_data*, i32)* @odbc_stmt_param_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_stmt_param_hook(%struct.TYPE_14__* %0, %struct.pdo_bound_param_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.pdo_bound_param_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.pdo_bound_param_data* %1, %struct.pdo_bound_param_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %32 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %565

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %564 [
    i32 133, label %37
    i32 134, label %37
    i32 131, label %37
    i32 132, label %38
    i32 137, label %48
    i32 135, label %267
    i32 136, label %490
  ]

37:                                               ; preds = %35, %35, %35
  br label %564

38:                                               ; preds = %35
  %39 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %40 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %39, i32 0, i32 3
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %15, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %43 = icmp ne %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %46 = call i32 @efree(%struct.TYPE_16__* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %564

48:                                               ; preds = %35
  %49 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %50 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PDO_PARAM_TYPE(i32 %51)
  switch i32 %52, label %55 [
    i32 130, label %53
    i32 129, label %54
  ]

53:                                               ; preds = %48
  br label %56

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %566

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %53
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %61 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = call i32 @SQLDescribeParam(i32 %59, i32 %63, i32* %10, i32* %14, i32* %12, i32* %13)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SQL_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SQL_SUCCESS_WITH_INFO, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %74 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PDO_PARAM_TYPE(i32 %75)
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @SQL_LONGVARBINARY, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @SQL_LONGVARCHAR, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %10, align 4
  store i32 4000, i32* %14, align 4
  store i32 5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %84 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %85 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %90 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %68, %56
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @SQL_BINARY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @SQL_VARBINARY, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @SQL_LONGVARBINARY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97, %93
  %106 = load i32, i32* @SQL_C_BINARY, align 4
  store i32 %106, i32* %11, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @SQL_C_CHAR, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = call i8* @emalloc(i32 24)
  %111 = bitcast i8* %110 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %15, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %113 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %114 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %113, i32 0, i32 3
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  store i8* null, i8** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @pdo_odbc_sqltype_is_unicode(%struct.TYPE_15__* %119, i32 %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %109
  %129 = load i32, i32* @SQL_C_BINARY, align 4
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %128, %109
  %131 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %132 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PDO_PARAM_INPUT_OUTPUT, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @PDO_PARAM_INPUT_OUTPUT, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* @SQL_PARAM_INPUT_OUTPUT, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  br label %156

142:                                              ; preds = %130
  %143 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %144 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @SQL_PARAM_INPUT, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %155

151:                                              ; preds = %142
  %152 = load i32, i32* @SQL_PARAM_OUTPUT, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %138
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SQL_PARAM_INPUT, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %208

162:                                              ; preds = %156
  %163 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %164 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @PDO_PARAM_TYPE(i32 %165)
  %167 = load i32, i32* @PDO_PARAM_NULL, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %207

169:                                              ; preds = %162
  %170 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %171 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %176 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  br label %180

178:                                              ; preds = %169
  %179 = load i32, i32* %14, align 4
  br label %180

180:                                              ; preds = %178, %174
  %181 = phi i32 [ %177, %174 ], [ %179, %178 ]
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %191, 2
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %188, %180
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 2, i32 1
  %203 = add nsw i32 %196, %202
  %204 = call i8* @emalloc(i32 %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %193, %162
  br label %208

208:                                              ; preds = %207, %156
  %209 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %210 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @PDO_PARAM_TYPE(i32 %211)
  %213 = icmp eq i32 %212, 130
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @SQL_PARAM_INPUT, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %566

222:                                              ; preds = %214, %208
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %227 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SQL_PARAM_INPUT, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %222
  %243 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %244 = bitcast %struct.pdo_bound_param_data* %243 to i8*
  br label %249

245:                                              ; preds = %222
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  br label %249

249:                                              ; preds = %245, %242
  %250 = phi i8* [ %244, %242 ], [ %248, %245 ]
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = call i32 @SQLBindParameter(i32 %225, i32 %229, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i8* %250, i32 %253, i32* %255)
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* @SQL_SUCCESS, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %249
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @SQL_SUCCESS_WITH_INFO, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260, %249
  store i32 1, i32* %4, align 4
  br label %566

265:                                              ; preds = %260
  %266 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %566

267:                                              ; preds = %35
  %268 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %269 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %268, i32 0, i32 3
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  store %struct.TYPE_16__* %270, %struct.TYPE_16__** %15, align 8
  %271 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %272 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @Z_ISREF(i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %267
  %277 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %278 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %277, i32 0, i32 2
  store i32* %278, i32** %16, align 8
  br label %284

279:                                              ; preds = %267
  %280 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %281 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i32* @Z_REFVAL(i32 %282)
  store i32* %283, i32** %16, align 8
  br label %284

284:                                              ; preds = %279, %276
  %285 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %286 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @PDO_PARAM_TYPE(i32 %287)
  %289 = icmp eq i32 %288, 130
  br i1 %289, label %290, label %415

290:                                              ; preds = %284
  %291 = load i32*, i32** %16, align 8
  %292 = call i32 @Z_TYPE_P(i32* %291)
  %293 = load i32, i32* @IS_RESOURCE, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %383

295:                                              ; preds = %290
  %296 = load i32*, i32** %17, align 8
  %297 = load i32*, i32** %16, align 8
  %298 = call i32 @php_stream_from_zval_no_verify(i32* %296, i32* %297)
  %299 = load i32*, i32** %17, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %295
  store i32 0, i32* %4, align 4
  br label %566

302:                                              ; preds = %295
  %303 = load i32*, i32** %17, align 8
  %304 = call i32 @php_stream_stat(i32* %303, %struct.TYPE_13__* %18)
  %305 = icmp eq i32 0, %304
  br i1 %305, label %306, label %368

306:                                              ; preds = %302
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %359

311:                                              ; preds = %306
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  store i8* %314, i8** %21, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %317, i64 %321
  store i8* %322, i8** %22, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %357, %311
  %326 = load i8*, i8** %22, align 8
  %327 = load i8*, i8** %21, align 8
  %328 = ptrtoint i8* %326 to i64
  %329 = ptrtoint i8* %327 to i64
  %330 = sub i64 %328, %329
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %20, align 4
  %332 = load i32, i32* %20, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %325
  br label %358

335:                                              ; preds = %325
  %336 = load i32, i32* %20, align 4
  %337 = icmp sgt i32 %336, 8192
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  store i32 8192, i32* %20, align 4
  br label %339

339:                                              ; preds = %338, %335
  %340 = load i32*, i32** %17, align 8
  %341 = load i8*, i8** %21, align 8
  %342 = load i32, i32* %20, align 4
  %343 = call i32 @php_stream_read(i32* %340, i8* %341, i32 %342)
  store i32 %343, i32* %19, align 4
  %344 = load i32, i32* %19, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %339
  br label %358

347:                                              ; preds = %339
  %348 = load i32, i32* %19, align 4
  %349 = load i8*, i8** %21, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i8, i8* %349, i64 %350
  store i8* %351, i8** %21, align 8
  %352 = load i32, i32* %19, align 4
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, %352
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %347
  br i1 true, label %325, label %358

358:                                              ; preds = %357, %346, %334
  br label %367

359:                                              ; preds = %306
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = call i8* @SQL_LEN_DATA_AT_EXEC(i64 %362)
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  br label %367

367:                                              ; preds = %359, %358
  br label %382

368:                                              ; preds = %302
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 0
  store i32 0, i32* %375, align 8
  br label %381

376:                                              ; preds = %368
  %377 = call i8* @SQL_LEN_DATA_AT_EXEC(i64 0)
  %378 = ptrtoint i8* %377 to i32
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 0
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %376, %373
  br label %382

382:                                              ; preds = %381, %367
  br label %414

383:                                              ; preds = %290
  %384 = load i32*, i32** %16, align 8
  %385 = call i32 @convert_to_string(i32* %384)
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 1
  %388 = load i8*, i8** %387, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %406

390:                                              ; preds = %383
  %391 = load i32*, i32** %16, align 8
  %392 = call i64 @Z_STRLEN_P(i32* %391)
  %393 = trunc i64 %392 to i32
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 1
  %398 = load i8*, i8** %397, align 8
  %399 = load i32*, i32** %16, align 8
  %400 = call i8* @Z_STRVAL_P(i32* %399)
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = sext i32 %403 to i64
  %405 = call i32 @memcpy(i8* %398, i8* %400, i64 %404)
  br label %413

406:                                              ; preds = %383
  %407 = load i32*, i32** %16, align 8
  %408 = call i64 @Z_STRLEN_P(i32* %407)
  %409 = call i8* @SQL_LEN_DATA_AT_EXEC(i64 %408)
  %410 = ptrtoint i8* %409 to i32
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 0
  store i32 %410, i32* %412, align 8
  br label %413

413:                                              ; preds = %406, %390
  br label %414

414:                                              ; preds = %413, %382
  br label %489

415:                                              ; preds = %284
  %416 = load i32*, i32** %16, align 8
  %417 = call i32 @Z_TYPE_P(i32* %416)
  %418 = load i32, i32* @IS_NULL, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %427, label %420

420:                                              ; preds = %415
  %421 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %422 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = call i32 @PDO_PARAM_TYPE(i32 %423)
  %425 = load i32, i32* @PDO_PARAM_NULL, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %420, %415
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 0
  store i32 128, i32* %429, align 8
  br label %488

430:                                              ; preds = %420
  %431 = load i32*, i32** %16, align 8
  %432 = call i32 @convert_to_string(i32* %431)
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 1
  %435 = load i8*, i8** %434, align 8
  %436 = icmp ne i8* %435, null
  br i1 %436, label %437, label %480

437:                                              ; preds = %430
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = load i32*, i32** %16, align 8
  %443 = call i8* @Z_STRVAL_P(i32* %442)
  %444 = load i32*, i32** %16, align 8
  %445 = call i64 @Z_STRLEN_P(i32* %444)
  %446 = call i32 @pdo_odbc_utf82ucs2(%struct.TYPE_14__* %438, i32 %441, i8* %443, i64 %445, i64* %23)
  switch i32 %446, label %479 [
    i32 140, label %447
    i32 139, label %447
    i32 138, label %463
  ]

447:                                              ; preds = %437, %437
  %448 = load i32*, i32** %16, align 8
  %449 = call i64 @Z_STRLEN_P(i32* %448)
  %450 = trunc i64 %449 to i32
  %451 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  store i32 %450, i32* %452, align 8
  %453 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %454 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %453, i32 0, i32 1
  %455 = load i8*, i8** %454, align 8
  %456 = load i32*, i32** %16, align 8
  %457 = call i8* @Z_STRVAL_P(i32* %456)
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %459 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = sext i32 %460 to i64
  %462 = call i32 @memcpy(i8* %455, i8* %457, i64 %461)
  br label %479

463:                                              ; preds = %437
  %464 = load i64, i64* %23, align 8
  %465 = trunc i64 %464 to i32
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 0
  store i32 %465, i32* %467, align 8
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 1
  %470 = load i8*, i8** %469, align 8
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 0
  %473 = load i8*, i8** %472, align 8
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = call i32 @memcpy(i8* %470, i8* %473, i64 %477)
  br label %479

479:                                              ; preds = %437, %463, %447
  br label %487

480:                                              ; preds = %430
  %481 = load i32*, i32** %16, align 8
  %482 = call i64 @Z_STRLEN_P(i32* %481)
  %483 = call i8* @SQL_LEN_DATA_AT_EXEC(i64 %482)
  %484 = ptrtoint i8* %483 to i32
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 0
  store i32 %484, i32* %486, align 8
  br label %487

487:                                              ; preds = %480, %479
  br label %488

488:                                              ; preds = %487, %427
  br label %489

489:                                              ; preds = %488, %414
  store i32 1, i32* %4, align 4
  br label %566

490:                                              ; preds = %35
  %491 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %492 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %491, i32 0, i32 3
  %493 = load %struct.TYPE_16__*, %struct.TYPE_16__** %492, align 8
  store %struct.TYPE_16__* %493, %struct.TYPE_16__** %15, align 8
  %494 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %495 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i32 0, i32 1
  %496 = load i8*, i8** %495, align 8
  %497 = icmp ne i8* %496, null
  br i1 %497, label %498, label %563

498:                                              ; preds = %490
  store i64 0, i64* %26, align 8
  %499 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %500 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 8
  %502 = call i32 @Z_ISREF(i32 %501)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %498
  %505 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %506 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = call i32* @Z_REFVAL(i32 %507)
  store i32* %508, i32** %16, align 8
  br label %512

509:                                              ; preds = %498
  %510 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %511 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %510, i32 0, i32 2
  store i32* %511, i32** %16, align 8
  br label %512

512:                                              ; preds = %509, %504
  %513 = load i32*, i32** %16, align 8
  %514 = call i32 @zval_ptr_dtor(i32* %513)
  %515 = load i32*, i32** %16, align 8
  %516 = call i32 @ZVAL_NULL(i32* %515)
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  switch i32 %519, label %521 [
    i32 128, label %520
  ]

520:                                              ; preds = %512
  br label %562

521:                                              ; preds = %512
  %522 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %523 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 8
  %526 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 1
  %528 = load i8*, i8** %527, align 8
  %529 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %530 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = sext i32 %531 to i64
  %533 = call i32 @pdo_odbc_ucs22utf8(%struct.TYPE_14__* %522, i32 %525, i8* %528, i64 %532, i64* %24)
  switch i32 %533, label %547 [
    i32 140, label %534
    i32 139, label %534
    i32 138, label %542
  ]

534:                                              ; preds = %521, %521
  %535 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %536 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %535, i32 0, i32 1
  %537 = load i8*, i8** %536, align 8
  store i8* %537, i8** %25, align 8
  %538 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %539 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %26, align 8
  br label %547

542:                                              ; preds = %521
  %543 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  store i8* %545, i8** %25, align 8
  %546 = load i64, i64* %24, align 8
  store i64 %546, i64* %26, align 8
  br label %547

547:                                              ; preds = %521, %542, %534
  %548 = load i32*, i32** %16, align 8
  %549 = load i64, i64* %26, align 8
  %550 = call i32 @zend_string_alloc(i64 %549, i32 0)
  %551 = call i32 @ZVAL_NEW_STR(i32* %548, i32 %550)
  %552 = load i32*, i32** %16, align 8
  %553 = call i8* @Z_STRVAL_P(i32* %552)
  %554 = load i8*, i8** %25, align 8
  %555 = load i64, i64* %26, align 8
  %556 = call i32 @memcpy(i8* %553, i8* %554, i64 %555)
  %557 = load i32*, i32** %16, align 8
  %558 = call i8* @Z_STRVAL_P(i32* %557)
  %559 = load i32*, i32** %16, align 8
  %560 = call i64 @Z_STRLEN_P(i32* %559)
  %561 = getelementptr inbounds i8, i8* %558, i64 %560
  store i8 0, i8* %561, align 1
  br label %562

562:                                              ; preds = %547, %520
  br label %563

563:                                              ; preds = %562, %490
  store i32 1, i32* %4, align 4
  br label %566

564:                                              ; preds = %35, %47, %37
  br label %565

565:                                              ; preds = %564, %3
  store i32 1, i32* %4, align 4
  br label %566

566:                                              ; preds = %565, %563, %489, %301, %265, %264, %220, %54
  %567 = load i32, i32* %4, align 4
  ret i32 %567
}

declare dso_local i32 @efree(%struct.TYPE_16__*) #1

declare dso_local i32 @PDO_PARAM_TYPE(i32) #1

declare dso_local i32 @SQLDescribeParam(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @pdo_odbc_sqltype_is_unicode(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pdo_odbc_stmt_error(i8*) #1

declare dso_local i32 @SQLBindParameter(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_stream_from_zval_no_verify(i32*, i32*) #1

declare dso_local i32 @php_stream_stat(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @php_stream_read(i32*, i8*, i32) #1

declare dso_local i8* @SQL_LEN_DATA_AT_EXEC(i64) #1

declare dso_local i32 @convert_to_string(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @pdo_odbc_utf82ucs2(%struct.TYPE_14__*, i32, i8*, i64, i64*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @pdo_odbc_ucs22utf8(%struct.TYPE_14__*, i32, i8*, i64, i64*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32) #1

declare dso_local i32 @zend_string_alloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
