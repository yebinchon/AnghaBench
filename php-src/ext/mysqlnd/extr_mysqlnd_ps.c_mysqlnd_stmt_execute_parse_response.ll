; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_execute_parse_response.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_execute_parse_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*)*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_17__*, i32*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, i64, i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32, i32, i64, %struct.TYPE_14__*, i32, i32* }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_21__*, %struct.TYPE_20__*)*, i64 (%struct.TYPE_21__*)* }

@.str = private unnamed_addr constant [36 x i8] c"mysqlnd_stmt_execute_parse_response\00", align 1
@FAIL = common dso_local global i64 0, align 8
@CONN_QUERY_SENT = common dso_local global i32 0, align 4
@CONN_QUIT_SENT = common dso_local global i64 0, align 8
@MYSQLND_STMT_PREPARED = common dso_local global i32 0, align 4
@MYSQLND_STMT_EXECUTED = common dso_local global i32 0, align 4
@QUERY_UPSERT = common dso_local global i64 0, align 8
@QUERY_LOAD_LOCAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@PASS = common dso_local global i64 0, align 8
@MYSQLND_RES_PS_BUF = common dso_local global i32 0, align 4
@MYSQLND_STMT_WAITING_USE_OR_STORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"server_status=%u cursor=%u\00", align 1
@SERVER_STATUS_CURSOR_EXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"cursor exists\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CONN_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"use_result\00", align 1
@CURSOR_TYPE_READ_ONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"asked for cursor but got none\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"store_result\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no cursor\00", align 1
@SERVER_PS_OUT_PARAMS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"PS OUT Variable RSet, skipping\00", align 1
@MYSQLND_PARSE_EXEC_RESPONSE_IMPLICIT_OUT_VARIABLES = common dso_local global i32 0, align 4
@STAT_ROWS_AFFECTED_PS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32)* @mysqlnd_stmt_execute_parse_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mysqlnd_stmt_execute_parse_response(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = icmp ne %struct.TYPE_20__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.TYPE_19__* [ %14, %11 ], [ null, %15 ]
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 9
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi %struct.TYPE_21__* [ %23, %20 ], [ null, %24 ]
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %7, align 8
  %27 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = icmp ne %struct.TYPE_19__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = icmp ne %struct.TYPE_21__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* @FAIL, align 8
  %35 = call i32 @DBG_RETURN(i64 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load i32, i32* @CONN_QUERY_SENT, align 4
  %40 = call i32 @SET_CONNECTION_STATE(i32* %38, i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64 (%struct.TYPE_21__*, %struct.TYPE_20__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_20__*)** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = call i64 %45(%struct.TYPE_21__* %46, %struct.TYPE_20__* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @FAIL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %36
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @COPY_CLIENT_ERROR(i32* %55, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @UPSERT_STATUS_RESET(i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @UPSERT_STATUS_GET_AFFECTED_ROWS(i32 %70)
  %72 = call i32 @UPSERT_STATUS_SET_AFFECTED_ROWS(i32 %67, i64 %71)
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = call i64 @GET_CONNECTION_STATE(i32* %74)
  %76 = load i64, i64* @CONN_QUIT_SENT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* @MYSQLND_STMT_PREPARED, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %280

85:                                               ; preds = %36
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @SET_EMPTY_ERROR(i32* %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @SET_EMPTY_ERROR(i32* %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @UPSERT_STATUS_GET_WARNINGS(i32 %99)
  %101 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %96, i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @UPSERT_STATUS_GET_AFFECTED_ROWS(i32 %107)
  %109 = call i32 @UPSERT_STATUS_SET_AFFECTED_ROWS(i32 %104, i64 %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %115)
  %117 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %112, i32 %116)
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @UPSERT_STATUS_GET_LAST_INSERT_ID(i32 %123)
  %125 = call i32 @UPSERT_STATUS_SET_LAST_INSERT_ID(i32 %120, i32 %124)
  %126 = load i32, i32* @MYSQLND_STMT_EXECUTED, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @QUERY_UPSERT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %85
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @QUERY_LOAD_LOCAL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134, %85
  %141 = call i32 @DBG_INF(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i64, i64* @PASS, align 8
  %143 = call i32 @DBG_RETURN(i64 %142)
  br label %144

144:                                              ; preds = %140, %134
  %145 = load i32, i32* @MYSQLND_RES_PS_BUF, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 4
  store i32 %145, i32* %149, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 7
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %144
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i64 (%struct.TYPE_21__*)*, i64 (%struct.TYPE_21__*)** %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = call i64 %161(%struct.TYPE_21__* %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  store i64 %163, i64* %167, align 8
  br label %168

168:                                              ; preds = %156, %144
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  store i64 %171, i64* %175, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 6
  store i64 %171, i64* %177, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = icmp ne %struct.TYPE_15__* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %168
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  store i32* null, i32** %190, align 8
  br label %206

191:                                              ; preds = %168
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = icmp ne %struct.TYPE_16__* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  store i32* null, i32** %204, align 8
  br label %205

205:                                              ; preds = %198, %191
  br label %206

206:                                              ; preds = %205, %184
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %279

211:                                              ; preds = %206
  %212 = load i32, i32* @MYSQLND_STMT_WAITING_USE_OR_STORE, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %217)
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %221)
  %223 = load i32, i32* @SERVER_STATUS_CURSOR_EXISTS, align 4
  %224 = and i32 %222, %223
  %225 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %218, i32 %224)
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %228)
  %230 = load i32, i32* @SERVER_STATUS_CURSOR_EXISTS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %211
  %234 = call i32 @DBG_INF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %235 = load i32, i32* @TRUE, align 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 2
  %240 = load i32, i32* @CONN_READY, align 4
  %241 = call i32 @SET_CONNECTION_STATE(i32* %239, i32 %240)
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = call i32 @DBG_INF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %278

250:                                              ; preds = %211
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @CURSOR_TYPE_READ_ONLY, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %250
  %258 = call i32 @DBG_INF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = call i32 @DBG_INF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %277

267:                                              ; preds = %250
  %268 = call i32 @DBG_INF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 4
  %276 = call i32 @DBG_INF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %277

277:                                              ; preds = %267, %257
  br label %278

278:                                              ; preds = %277, %233
  br label %279

279:                                              ; preds = %278, %206
  br label %280

280:                                              ; preds = %279, %79
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %283)
  %285 = load i32, i32* @SERVER_PS_OUT_PARAMS, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %280
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %292, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %295 = call i32 %293(%struct.TYPE_20__* %294)
  %296 = call i32 @DBG_INF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %298 = load i32, i32* @MYSQLND_PARSE_EXEC_RESPONSE_IMPLICIT_OUT_VARIABLES, align 4
  %299 = call i64 @mysqlnd_stmt_execute_parse_response(%struct.TYPE_20__* %297, i32 %298)
  store i64 %299, i64* %8, align 8
  br label %300

300:                                              ; preds = %288, %280
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %303)
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %307)
  %309 = load i32, i32* @SERVER_STATUS_CURSOR_EXISTS, align 4
  %310 = and i32 %308, %309
  %311 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %304, i32 %310)
  %312 = load i64, i64* %8, align 8
  %313 = load i64, i64* @PASS, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %337

315:                                              ; preds = %300
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @QUERY_UPSERT, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %337

321:                                              ; preds = %315
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i64 @UPSERT_STATUS_GET_AFFECTED_ROWS(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %321
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @STAT_ROWS_AFFECTED_PS, align 4
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i64 @UPSERT_STATUS_GET_AFFECTED_ROWS(i32 %334)
  %336 = call i32 @MYSQLND_INC_CONN_STATISTIC_W_VALUE(i32 %330, i32 %331, i64 %335)
  br label %337

337:                                              ; preds = %327, %321, %315, %300
  %338 = load i64, i64* %8, align 8
  %339 = load i64, i64* @PASS, align 8
  %340 = icmp eq i64 %338, %339
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %343 = call i32 @DBG_INF(i8* %342)
  %344 = load i64, i64* %8, align 8
  %345 = call i32 @DBG_RETURN(i64 %344)
  %346 = load i64, i64* %3, align 8
  ret i64 %346
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @COPY_CLIENT_ERROR(i32*, i32) #1

declare dso_local i32 @UPSERT_STATUS_RESET(i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_AFFECTED_ROWS(i32, i64) #1

declare dso_local i64 @UPSERT_STATUS_GET_AFFECTED_ROWS(i32) #1

declare dso_local i64 @GET_CONNECTION_STATE(i32*) #1

declare dso_local i32 @SET_EMPTY_ERROR(i32*) #1

declare dso_local i32 @UPSERT_STATUS_SET_WARNINGS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_GET_WARNINGS(i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_LAST_INSERT_ID(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_GET_LAST_INSERT_ID(i32) #1

declare dso_local i32 @DBG_INF(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32, i32) #1

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC_W_VALUE(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
