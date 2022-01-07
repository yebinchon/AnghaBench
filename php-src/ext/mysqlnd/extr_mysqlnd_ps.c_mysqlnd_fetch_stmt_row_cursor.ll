; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_fetch_stmt_row_cursor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_fetch_stmt_row_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_35__*, i32 }
%struct.TYPE_27__ = type { i64, i32, i32*, %struct.TYPE_26__, %struct.TYPE_30__, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_30__ = type { i64 (%struct.TYPE_26__*, i32*, i32, i32, i32, i32)*, i32 (%struct.TYPE_27__*, i32)* }
%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_26__, %struct.TYPE_25__*, i32, i32, i32*, i64 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*, i32*)* }
%struct.TYPE_35__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i64, i32, %struct.TYPE_32__*, i32*, %struct.TYPE_24__* }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_31__*, i32*, %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i64 (%struct.TYPE_24__*, i8*, i32)* }
%struct.TYPE_23__ = type { i8*, i32 }

@MYSQLND_STMT_ID_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mysqlnd_fetch_stmt_row_cursor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"no statement\00", align 1
@FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"stmt=%lu flags=%u\00", align 1
@MYSQLND_STMT_USER_FETCHING = common dso_local global i64 0, align 8
@CR_COMMANDS_OUT_OF_SYNC = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@mysqlnd_out_of_sync = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"command out of sync\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PASS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"i=%u bound_var=%p type=%u refc=%u\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"skipping extraction\00", align 1
@STAT_ROWS_FETCHED_FROM_CLIENT_PS_CURSOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"ret=%s fetched=%u server_status=%u warnings=%u eof=%u\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_fetch_stmt_row_cursor(%struct.TYPE_36__* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca %struct.TYPE_35__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %11, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %26 = icmp ne %struct.TYPE_34__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi %struct.TYPE_33__* [ %30, %27 ], [ null, %31 ]
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %12, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %35 = icmp ne %struct.TYPE_33__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi %struct.TYPE_24__* [ %39, %36 ], [ null, %40 ]
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %13, align 8
  %43 = load i32, i32* @MYSQLND_STMT_ID_LENGTH, align 4
  %44 = add nsw i32 %43, 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %14, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %15, align 8
  %48 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %50 = icmp ne %struct.TYPE_33__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %41
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = icmp ne %struct.TYPE_24__* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %58 = icmp ne %struct.TYPE_36__* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  %68 = icmp ne %struct.TYPE_27__* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64, %59, %56, %51, %41
  %70 = call i32 @DBG_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* @FAIL, align 8
  %72 = call i32 @DBG_RETURN(i64 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MYSQLND_STMT_USER_FETCHING, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @CR_COMMANDS_OUT_OF_SYNC, align 4
  %89 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %90 = load i32, i32* @mysqlnd_out_of_sync, align 4
  %91 = call i32 @SET_CLIENT_ERROR(i32* %87, i32 %88, i32 %89, i32 %90)
  %92 = call i32 @DBG_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i64, i64* @FAIL, align 8
  %94 = call i32 @DBG_RETURN(i64 %93)
  br label %95

95:                                               ; preds = %84, %73
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %99, align 8
  store %struct.TYPE_22__* %100, %struct.TYPE_22__** %16, align 8
  %101 = icmp ne %struct.TYPE_22__* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i64, i64* @FAIL, align 8
  %104 = call i32 @DBG_RETURN(i64 %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @SET_EMPTY_ERROR(i32* %108)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @SET_EMPTY_ERROR(i32* %112)
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @int4store(i32* %47, i32 %116)
  %118 = load i32, i32* @MYSQLND_STMT_ID_LENGTH, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %47, i64 %119
  %121 = call i32 @int4store(i32* %120, i32 1)
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %123 = bitcast i32* %47 to i8*
  store i8* %123, i8** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %125 = mul nuw i64 4, %45
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %124, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load i64 (%struct.TYPE_24__*, i8*, i32)*, i64 (%struct.TYPE_24__*, i8*, i32)** %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %133 = bitcast %struct.TYPE_23__* %17 to { i8*, i32 }*
  %134 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %133, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i64 %131(%struct.TYPE_24__* %132, i8* %135, i32 %137)
  store i64 %138, i64* %10, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* @FAIL, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %105
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @COPY_CLIENT_ERROR(i32* %145, i32 %149)
  %151 = load i64, i64* @FAIL, align 8
  %152 = call i32 @DBG_RETURN(i64 %151)
  br label %153

153:                                              ; preds = %142, %105
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %155, align 8
  %157 = icmp ne %struct.TYPE_32__* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i64, i64* @FALSE, align 8
  br label %162

160:                                              ; preds = %153
  %161 = load i64, i64* @TRUE, align 8
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i64 [ %159, %158 ], [ %161, %160 ]
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 8
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @UPSERT_STATUS_RESET(i32 %168)
  %170 = load i64, i64* @PASS, align 8
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %173 = call i64 @PACKET_READ(%struct.TYPE_24__* %171, %struct.TYPE_22__* %172)
  store i64 %173, i64* %10, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %421

175:                                              ; preds = %162
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %421, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_35__*, %struct.TYPE_35__** %182, align 8
  store %struct.TYPE_35__* %183, %struct.TYPE_35__** %18, align 8
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %20, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %363, label %191

191:                                              ; preds = %180
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 1
  %197 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %196, align 8
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %199, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 %197(%struct.TYPE_27__* %200, i32 %203)
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 7
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 2
  store i32* %207, i32** %211, align 8
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 3
  %218 = bitcast %struct.TYPE_26__* %215 to i8*
  %219 = bitcast %struct.TYPE_26__* %217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %218, i8* align 8 %219, i64 8, i1 false)
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 7
  store i32* null, i32** %221, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  store i32* null, i32** %224, align 8
  %225 = load i64, i64* @PASS, align 8
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 0
  %231 = load i64 (%struct.TYPE_26__*, i32*, i32, i32, i32, i32)*, i64 (%struct.TYPE_26__*, i32*, i32, i32, i32, i32)** %230, align 8
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i64 %231(%struct.TYPE_26__* %235, i32* %240, i32 %243, i32 %246, i32 %251, i32 %254)
  %256 = icmp ne i64 %225, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %191
  %258 = load i64, i64* @FAIL, align 8
  %259 = call i32 @DBG_RETURN(i64 %258)
  br label %260

260:                                              ; preds = %257, %191
  store i32 0, i32* %19, align 4
  br label %261

261:                                              ; preds = %359, %260
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %20, align 4
  %264 = icmp ult i32 %262, %263
  br i1 %264, label %265, label %362

265:                                              ; preds = %261
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %267, align 8
  %269 = load i32, i32* %19, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 1
  store i32* %272, i32** %21, align 8
  %273 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @TRUE, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %358

283:                                              ; preds = %265
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %19, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32* %291, i32** %22, align 8
  %292 = load i32, i32* %19, align 4
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 3
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %294, align 8
  %296 = load i32, i32* %19, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 1
  %300 = load i32*, i32** %22, align 8
  %301 = call i64 @Z_TYPE_P(i32* %300)
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %303, align 8
  %305 = load i32, i32* %19, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = call i64 @Z_REFCOUNTED(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %283
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %314, align 8
  %316 = load i32, i32* %19, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @Z_REFCOUNT(i32 %320)
  br label %323

322:                                              ; preds = %283
  br label %323

323:                                              ; preds = %322, %312
  %324 = phi i32 [ %321, %312 ], [ 0, %322 ]
  %325 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %292, i32* %299, i64 %301, i32 %324)
  %326 = load i32*, i32** %22, align 8
  %327 = call i64 @Z_TYPE_P(i32* %326)
  %328 = load i64, i64* @IS_STRING, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %352

330:                                              ; preds = %323
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %332, align 8
  %334 = load i32, i32* %19, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i32*, i32** %22, align 8
  %340 = call i64 @Z_STRLEN_P(i32* %339)
  %341 = icmp slt i64 %338, %340
  br i1 %341, label %342, label %352

342:                                              ; preds = %330
  %343 = load i32*, i32** %22, align 8
  %344 = call i64 @Z_STRLEN_P(i32* %343)
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %346, align 8
  %348 = load i32, i32* %19, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 0
  store i64 %344, i64* %351, align 8
  br label %352

352:                                              ; preds = %342, %330, %323
  %353 = load i32*, i32** %21, align 8
  %354 = load i32*, i32** %22, align 8
  %355 = call i32 @ZEND_TRY_ASSIGN_VALUE_EX(i32* %353, i32* %354, i32 0)
  %356 = load i32*, i32** %22, align 8
  %357 = call i32 @ZVAL_NULL(i32* %356)
  br label %358

358:                                              ; preds = %352, %265
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %19, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %19, align 4
  br label %261

362:                                              ; preds = %261
  br label %381

363:                                              ; preds = %180
  %364 = call i32 @DBG_INF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 4
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 0
  %369 = load i32 (%struct.TYPE_25__*, i32*)*, i32 (%struct.TYPE_25__*, i32*)** %368, align 8
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 4
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %371, align 8
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = call i32 %369(%struct.TYPE_25__* %372, i32* %376)
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %379, i32 0, i32 0
  store i32* null, i32** %380, align 8
  br label %381

381:                                              ; preds = %363, %362
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %384 = call i64 @PACKET_READ(%struct.TYPE_24__* %382, %struct.TYPE_22__* %383)
  store i64 %384, i64* %10, align 8
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = icmp ne i32* %388, null
  br i1 %389, label %390, label %407

390:                                              ; preds = %381
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 4
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 0
  %395 = load i32 (%struct.TYPE_25__*, i32*)*, i32 (%struct.TYPE_25__*, i32*)** %394, align 8
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 4
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %397, align 8
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = call i32 %395(%struct.TYPE_25__* %398, i32* %402)
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %405 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 0
  store i32* null, i32** %406, align 8
  br label %407

407:                                              ; preds = %390, %381
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @STAT_ROWS_FETCHED_FROM_CLIENT_PS_CURSOR, align 4
  %412 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32 %410, i32 %411)
  %413 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_27__*, %struct.TYPE_27__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %416, align 8
  %419 = load i64, i64* @TRUE, align 8
  %420 = load i64*, i64** %9, align 8
  store i64 %419, i64* %420, align 8
  br label %459

421:                                              ; preds = %175, %162
  %422 = load i64, i64* @FALSE, align 8
  %423 = load i64*, i64** %9, align 8
  store i64 %422, i64* %423, align 8
  %424 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %426, i32 %429)
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %433, i32 %436)
  %438 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %439 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %440, i32 %443)
  %445 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %447, i32 %450)
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_27__*, %struct.TYPE_27__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 0
  store i64 %454, i64* %458, align 8
  br label %459

459:                                              ; preds = %421, %407
  %460 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %461 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %462, i32 %465)
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %469, i32 %472)
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %475 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %478 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %476, i32 %479)
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %483, i32 %486)
  %488 = load i64, i64* %10, align 8
  %489 = load i64, i64* @PASS, align 8
  %490 = icmp eq i64 %488, %489
  %491 = zext i1 %490 to i64
  %492 = select i1 %490, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %493 = load i64*, i64** %9, align 8
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_27__*, %struct.TYPE_27__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = call i32 (i8*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i8* %492, i64 %494, i32 %497, i32 %500, i64 %505)
  %507 = load i64, i64* %10, align 8
  %508 = call i32 @DBG_RETURN(i64 %507)
  %509 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %509)
  %510 = load i64, i64* %5, align 8
  ret i64 %510
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DBG_ENTER(i8*) #2

declare dso_local i32 @DBG_ERR(i8*) #2

declare dso_local i32 @DBG_RETURN(i64) #2

declare dso_local i32 @DBG_INF_FMT(i8*, ...) #2

declare dso_local i32 @SET_CLIENT_ERROR(i32*, i32, i32, i32) #2

declare dso_local i32 @SET_EMPTY_ERROR(i32*) #2

declare dso_local i32 @int4store(i32*, i32) #2

declare dso_local i32 @COPY_CLIENT_ERROR(i32*, i32) #2

declare dso_local i32 @UPSERT_STATUS_RESET(i32) #2

declare dso_local i64 @PACKET_READ(%struct.TYPE_24__*, %struct.TYPE_22__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @Z_TYPE_P(i32*) #2

declare dso_local i64 @Z_REFCOUNTED(i32) #2

declare dso_local i32 @Z_REFCOUNT(i32) #2

declare dso_local i64 @Z_STRLEN_P(i32*) #2

declare dso_local i32 @ZEND_TRY_ASSIGN_VALUE_EX(i32*, i32*, i32) #2

declare dso_local i32 @ZVAL_NULL(i32*) #2

declare dso_local i32 @DBG_INF(i8*) #2

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC(i32, i32) #2

declare dso_local i32 @UPSERT_STATUS_SET_WARNINGS(i32, i32) #2

declare dso_local i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
