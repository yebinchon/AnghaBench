; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_result.c_mysqlnd_query_read_result_set_header.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_result.c_mysqlnd_query_read_result_set_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, %struct.TYPE_43__*, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_39__*, i32, i32, %struct.TYPE_38__ }
%struct.TYPE_43__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64 (%struct.TYPE_43__*, %struct.TYPE_32__*)*, i32 (%struct.TYPE_43__*)* }
%struct.TYPE_35__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)* }
%struct.TYPE_31__ = type { i32, i32, i32, %struct.TYPE_37__, i32, i32, %struct.TYPE_36__ }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_43__* (i32)* }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, %struct.TYPE_43__*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"mysqlnd_query_read_result_set_header\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stmt=%lu\00", align 1
@FAIL = common dso_local global i64 0, align 8
@CR_SERVER_GONE_ERROR = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Error reading result set's header\00", align 1
@SERVER_MORE_RESULTS_EXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"error=%s\00", align 1
@CONN_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"LOAD DATA\00", align 1
@QUERY_LOAD_LOCAL = common dso_local global i32 0, align 4
@CONN_SENDING_LOAD_DATA = common dso_local global i32 0, align 4
@PASS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CONN_QUIT_SENT = common dso_local global i32 0, align 4
@STAT_NON_RSET_QUERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"UPSERT\00", align 1
@QUERY_UPSERT = common dso_local global i32 0, align 4
@CONN_NEXT_RESULT_PENDING = common dso_local global i32 0, align 4
@STAT_LAST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Result set pending\00", align 1
@STAT_RSET_QUERY = common dso_local global i32 0, align 4
@QUERY_SELECT = common dso_local global i32 0, align 4
@CONN_FETCHING_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"This is 'SHOW'/'EXPLAIN'-like query.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Error occurred while reading metadata\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Error occurred while reading the EOF packet\00", align 1
@MYSQLND_STMT_INITTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"warnings=%u server_status=%u\00", align 1
@SERVER_QUERY_NO_GOOD_INDEX_USED = common dso_local global i32 0, align 4
@STAT_BAD_INDEX_USED = common dso_local global i32 0, align 4
@SERVER_QUERY_NO_INDEX_USED = common dso_local global i32 0, align 4
@STAT_NO_INDEX_USED = common dso_local global i32 0, align 4
@SERVER_QUERY_WAS_SLOW = common dso_local global i32 0, align 4
@STAT_QUERY_WAS_SLOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_query_read_result_set_header(%struct.TYPE_32__* %0, %struct.TYPE_42__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.TYPE_31__, align 8
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %5, align 8
  %13 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %14 = icmp ne %struct.TYPE_42__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi %struct.TYPE_41__* [ %18, %15 ], [ null, %19 ]
  store %struct.TYPE_41__* %21, %struct.TYPE_41__** %7, align 8
  %22 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %24 = icmp ne %struct.TYPE_41__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  %32 = call i32 (i8*, i32, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* @FAIL, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %39, align 8
  %41 = call i32 %40(%struct.TYPE_31__* %8)
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @UPSERT_STATUS_SET_AFFECTED_ROWS_TO_ERROR(i32 %44)
  %46 = load i64, i64* @FAIL, align 8
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %48 = call i64 @PACKET_READ(%struct.TYPE_32__* %47, %struct.TYPE_31__* %8)
  store i64 %48, i64* %6, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %34
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CR_SERVER_GONE_ERROR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @E_WARNING, align 4
  %60 = call i32 @php_error_docref(i32* null, i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %50
  br label %413

62:                                               ; preds = %34
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %62
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %73)
  %75 = load i32, i32* @SERVER_MORE_RESULTS_EXISTS, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %70, i32 %77)
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 6
  %83 = bitcast %struct.TYPE_36__* %82 to { i32, i64 }*
  %84 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @COPY_CLIENT_ERROR(%struct.TYPE_34__* %81, i32 %85, i64 %87)
  %89 = load i64, i64* @FAIL, align 8
  store i64 %89, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DBG_ERR_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 7
  %96 = load i32, i32* @CONN_READY, align 4
  %97 = call i32 @SET_CONNECTION_STATE(i32* %95, i32 %96)
  br label %413

98:                                               ; preds = %62
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %218 [
    i32 128, label %105
    i32 0, label %142
  ]

105:                                              ; preds = %98
  %106 = call i32 @DBG_INF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @QUERY_LOAD_LOCAL, align 4
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 7
  %114 = load i32, i32* @CONN_SENDING_LOAD_DATA, align 4
  %115 = call i32 @SET_CONNECTION_STATE(i32* %113, i32 %114)
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @mysqlnd_handle_local_infile(%struct.TYPE_32__* %116, i32 %119, i32* %10)
  store i64 %120, i64* %6, align 8
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 7
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @PASS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @TRUE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %105
  %131 = load i32, i32* @CONN_READY, align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @CONN_QUIT_SENT, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = call i32 @SET_CONNECTION_STATE(i32* %122, i32 %135)
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @STAT_NON_RSET_QUERY, align 4
  %141 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32 %139, i32 %140)
  br label %412

142:                                              ; preds = %98
  %143 = call i32 @DBG_INF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* @QUERY_UPSERT, align 4
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @UPSERT_STATUS_RESET(i32 %153)
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %157, i32 %159)
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %163, i32 %165)
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @UPSERT_STATUS_SET_AFFECTED_ROWS(i32 %169, i32 %171)
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @UPSERT_STATUS_SET_LAST_INSERT_ID(i32 %175, i32 %177)
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 9
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @SET_NEW_MESSAGE(i32 %182, i32 %186, i32 %189, i32 %192)
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %196)
  %198 = load i32, i32* @SERVER_MORE_RESULTS_EXISTS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %142
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 7
  %204 = load i32, i32* @CONN_NEXT_RESULT_PENDING, align 4
  %205 = call i32 @SET_CONNECTION_STATE(i32* %203, i32 %204)
  br label %211

206:                                              ; preds = %142
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 7
  %209 = load i32, i32* @CONN_READY, align 4
  %210 = call i32 @SET_CONNECTION_STATE(i32* %208, i32 %209)
  br label %211

211:                                              ; preds = %206, %201
  %212 = load i64, i64* @PASS, align 8
  store i64 %212, i64* %6, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @STAT_NON_RSET_QUERY, align 4
  %217 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32 %215, i32 %216)
  br label %412

218:                                              ; preds = %98
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* @STAT_LAST, align 4
  store i32 %220, i32* %12, align 4
  %221 = call i32 @DBG_INF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @SET_EMPTY_MESSAGE(i32 %225, i32 %229)
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @STAT_RSET_QUERY, align 4
  %235 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32 %233, i32 %234)
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @UPSERT_STATUS_RESET(i32 %238)
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @UPSERT_STATUS_SET_AFFECTED_ROWS_TO_ERROR(i32 %242)
  %244 = load i32, i32* @QUERY_SELECT, align 4
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 8
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 7
  %249 = load i32, i32* @CONN_FETCHING_DATA, align 4
  %250 = call i32 @SET_CONNECTION_STATE(i32* %248, i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %256 = icmp ne %struct.TYPE_41__* %255, null
  br i1 %256, label %268, label %257

257:                                              ; preds = %219
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 6
  %260 = load %struct.TYPE_39__*, %struct.TYPE_39__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_43__* (i32)*, %struct.TYPE_43__* (i32)** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call %struct.TYPE_43__* %262(i32 %264)
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %266, i32 0, i32 3
  store %struct.TYPE_43__* %265, %struct.TYPE_43__** %267, align 8
  store %struct.TYPE_43__* %265, %struct.TYPE_43__** %11, align 8
  br label %290

268:                                              ; preds = %219
  %269 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_43__*, %struct.TYPE_43__** %270, align 8
  %272 = icmp ne %struct.TYPE_43__* %271, null
  br i1 %272, label %285, label %273

273:                                              ; preds = %268
  %274 = call i32 @DBG_INF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 6
  %277 = load %struct.TYPE_39__*, %struct.TYPE_39__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_43__* (i32)*, %struct.TYPE_43__* (i32)** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %8, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call %struct.TYPE_43__* %279(i32 %281)
  %283 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %283, i32 0, i32 1
  store %struct.TYPE_43__* %282, %struct.TYPE_43__** %284, align 8
  store %struct.TYPE_43__* %282, %struct.TYPE_43__** %11, align 8
  br label %286

285:                                              ; preds = %268
  br label %286

286:                                              ; preds = %285, %273
  %287 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_43__*, %struct.TYPE_43__** %288, align 8
  store %struct.TYPE_43__* %289, %struct.TYPE_43__** %11, align 8
  br label %290

290:                                              ; preds = %286, %257
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %292 = icmp ne %struct.TYPE_43__* %291, null
  br i1 %292, label %299, label %293

293:                                              ; preds = %290
  %294 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %295, align 8
  %297 = call i32 @SET_OOM_ERROR(%struct.TYPE_34__* %296)
  %298 = load i64, i64* @FAIL, align 8
  store i64 %298, i64* %6, align 8
  br label %410

299:                                              ; preds = %290
  %300 = load i64, i64* @FAIL, align 8
  %301 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %302, i32 0, i32 0
  %304 = load i64 (%struct.TYPE_43__*, %struct.TYPE_32__*)*, i64 (%struct.TYPE_43__*, %struct.TYPE_32__*)** %303, align 8
  %305 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %307 = call i64 %304(%struct.TYPE_43__* %305, %struct.TYPE_32__* %306)
  store i64 %307, i64* %6, align 8
  %308 = icmp eq i64 %300, %307
  br i1 %308, label %309, label %326

309:                                              ; preds = %299
  %310 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %311 = icmp ne %struct.TYPE_41__* %310, null
  br i1 %311, label %324, label %312

312:                                              ; preds = %309
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_43__*, %struct.TYPE_43__** %314, align 8
  %316 = icmp ne %struct.TYPE_43__* %315, null
  br i1 %316, label %317, label %324

317:                                              ; preds = %312
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 3
  %320 = load %struct.TYPE_43__*, %struct.TYPE_43__** %319, align 8
  %321 = call i32 @mnd_efree(%struct.TYPE_43__* %320)
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 3
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %323, align 8
  br label %324

324:                                              ; preds = %317, %312, %309
  %325 = call i32 @DBG_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %410

326:                                              ; preds = %299
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_35__*, %struct.TYPE_35__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %330, i32 0, i32 0
  %332 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %331, align 8
  %333 = call i32 %332(%struct.TYPE_31__* %9)
  %334 = load i64, i64* @FAIL, align 8
  %335 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %336 = call i64 @PACKET_READ(%struct.TYPE_32__* %335, %struct.TYPE_31__* %9)
  store i64 %336, i64* %6, align 8
  %337 = icmp eq i64 %334, %336
  br i1 %337, label %338, label %360

338:                                              ; preds = %326
  %339 = call i32 @DBG_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %340 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %341, i32 0, i32 1
  %343 = load i32 (%struct.TYPE_43__*)*, i32 (%struct.TYPE_43__*)** %342, align 8
  %344 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %345 = call i32 %343(%struct.TYPE_43__* %344)
  %346 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %347 = icmp ne %struct.TYPE_41__* %346, null
  br i1 %347, label %351, label %348

348:                                              ; preds = %338
  %349 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %349, i32 0, i32 3
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %350, align 8
  br label %359

351:                                              ; preds = %338
  %352 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %352, i32 0, i32 1
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %353, align 8
  %354 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %355 = call i32 @memset(%struct.TYPE_41__* %354, i32 0, i32 24)
  %356 = load i32, i32* @MYSQLND_STMT_INITTED, align 4
  %357 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 8
  br label %359

359:                                              ; preds = %351, %348
  br label %409

360:                                              ; preds = %326
  %361 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 (i8*, i32, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %362, i32 %364)
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %368, i32 %370)
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %374, i32 %376)
  %378 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @SERVER_QUERY_NO_GOOD_INDEX_USED, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %360
  %384 = load i32, i32* @STAT_BAD_INDEX_USED, align 4
  store i32 %384, i32* %12, align 4
  br label %403

385:                                              ; preds = %360
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @SERVER_QUERY_NO_INDEX_USED, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %385
  %392 = load i32, i32* @STAT_NO_INDEX_USED, align 4
  store i32 %392, i32* %12, align 4
  br label %402

393:                                              ; preds = %385
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @SERVER_QUERY_WAS_SLOW, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %393
  %400 = load i32, i32* @STAT_QUERY_WAS_SLOW, align 4
  store i32 %400, i32* %12, align 4
  br label %401

401:                                              ; preds = %399, %393
  br label %402

402:                                              ; preds = %401, %391
  br label %403

403:                                              ; preds = %402, %383
  %404 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %12, align 4
  %408 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32 %406, i32 %407)
  br label %409

409:                                              ; preds = %403, %359
  br label %410

410:                                              ; preds = %409, %324, %293
  %411 = call i32 @PACKET_FREE(%struct.TYPE_31__* %9)
  br label %412

412:                                              ; preds = %410, %211, %134
  br label %413

413:                                              ; preds = %412, %67, %61
  %414 = call i32 @PACKET_FREE(%struct.TYPE_31__* %8)
  %415 = load i64, i64* %6, align 8
  %416 = load i64, i64* @PASS, align 8
  %417 = icmp eq i64 %415, %416
  %418 = zext i1 %417 to i64
  %419 = select i1 %417, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %420 = call i32 @DBG_INF(i8* %419)
  %421 = load i64, i64* %6, align 8
  %422 = call i32 @DBG_RETURN(i64 %421)
  %423 = load i64, i64* %3, align 8
  ret i64 %423
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32, ...) #1

declare dso_local i32 @UPSERT_STATUS_SET_AFFECTED_ROWS_TO_ERROR(i32) #1

declare dso_local i64 @PACKET_READ(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32) #1

declare dso_local i32 @COPY_CLIENT_ERROR(%struct.TYPE_34__*, i32, i64) #1

declare dso_local i32 @DBG_ERR_FMT(i8*, i32) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @DBG_INF(i8*) #1

declare dso_local i64 @mysqlnd_handle_local_infile(%struct.TYPE_32__*, i32, i32*) #1

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_RESET(i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_WARNINGS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_AFFECTED_ROWS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_LAST_INSERT_ID(i32, i32) #1

declare dso_local i32 @SET_NEW_MESSAGE(i32, i32, i32, i32) #1

declare dso_local i32 @SET_EMPTY_MESSAGE(i32, i32) #1

declare dso_local i32 @SET_OOM_ERROR(%struct.TYPE_34__*) #1

declare dso_local i32 @mnd_efree(%struct.TYPE_43__*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @PACKET_FREE(%struct.TYPE_31__*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
