; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_describe.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i8*, i32, i64, i32 }

@SQL_VARCHAR = common dso_local global i64 0, align 8
@SQL_LONGVARCHAR = common dso_local global i64 0, align 8
@SQL_VARBINARY = common dso_local global i64 0, align 8
@SQL_LONGVARBINARY = common dso_local global i64 0, align 8
@SQL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"SQLDescribeCol\00", align 1
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@SQL_DESC_DISPLAY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SQLColAttribute\00", align 1
@PDO_PARAM_STR = common dso_local global i32 0, align 4
@SQL_C_BINARY = common dso_local global i32 0, align 4
@SQL_C_CHAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SQLBindCol\00", align 1
@SQL_WLONGVARCHAR = common dso_local global i64 0, align 8
@SQL_WVARCHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @odbc_stmt_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_stmt_describe(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.pdo_column_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.pdo_column_data*, %struct.pdo_column_data** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %18, i64 %20
  store %struct.pdo_column_data* %21, %struct.pdo_column_data** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i64 @SQLDescribeCol(i32 %24, i32 %26, i32 %34, i32 3, i32* %9, i64* %41, i32* %10, i32* null, i32* null)
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 0, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SQL_VARCHAR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %89, label %56

56:                                               ; preds = %45
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SQL_LONGVARCHAR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %89, label %67

67:                                               ; preds = %56
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SQL_VARBINARY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %67
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SQL_LONGVARBINARY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78, %67, %56, %45
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %78, %2
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @SQL_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %260

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %92
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* @SQL_DESC_DISPLAY_SIZE, align 4
  %110 = call i64 @SQLColAttribute(i32 %106, i32 %108, i32 %109, i32* null, i32 0, i32* null, i32* %11)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @SQL_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %260

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 8
  %131 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %132 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %131, i32 0, i32 0
  store i32 %123, i32* %132, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @zend_string_init(i32 %140, i32 %141, i32 0)
  %143 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %144 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @pdo_odbc_sqltype_is_unicode(%struct.TYPE_8__* %145, i64 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 5
  store i64 %154, i64* %161, align 8
  %162 = load i32, i32* @PDO_PARAM_STR, align 4
  %163 = load %struct.pdo_column_data*, %struct.pdo_column_data** %7, align 8
  %164 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 256
  br i1 %166, label %167, label %241

167:                                              ; preds = %121
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %241, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i8* @emalloc(i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  store i8* %175, i8** %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  store i32 0, i32* %189, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %172
  %205 = load i32, i32* @SQL_C_BINARY, align 4
  br label %208

206:                                              ; preds = %172
  %207 = load i32, i32* @SQL_C_CHAR, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 4
  %234 = call i64 @SQLBindCol(i32 %192, i32 %194, i32 %209, i8* %217, i32 %226, i32* %233)
  store i64 %234, i64* %8, align 8
  %235 = load i64, i64* %8, align 8
  %236 = load i64, i64* @SQL_SUCCESS, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %208
  %239 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %260

240:                                              ; preds = %208
  br label %259

241:                                              ; preds = %167, %121
  %242 = call i8* @emalloc(i32 256)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 3
  store i8* %242, i8** %249, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  store i32 1, i32* %251, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  store i32 1, i32* %258, align 4
  br label %259

259:                                              ; preds = %241, %240
  store i32 1, i32* %3, align 4
  br label %260

260:                                              ; preds = %259, %238, %119, %101
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i64 @SQLDescribeCol(i32, i32, i32, i32, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @pdo_odbc_stmt_error(i8*) #1

declare dso_local i64 @SQLColAttribute(i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @zend_string_init(i32, i32, i32) #1

declare dso_local i64 @pdo_odbc_sqltype_is_unicode(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i64 @SQLBindCol(i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
