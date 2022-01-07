; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_fetch_row_unbuffered.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_fetch_row_unbuffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_32__*, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i64, i32, i32*, %struct.TYPE_22__, %struct.TYPE_26__, %struct.TYPE_34__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_26__ = type { i64 (%struct.TYPE_22__*, i32*, i32, i32, i32, i32)*, i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_34__ = type { i32, i32, i64, %struct.TYPE_25__, %struct.TYPE_22__, %struct.TYPE_21__*, i32, i32, i32*, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32*)* }
%struct.TYPE_32__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"mysqlnd_stmt_fetch_row_unbuffered\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"EOF already reached\00", align 1
@PASS = common dso_local global i64 0, align 8
@CONN_FETCHING_DATA = common dso_local global i64 0, align 8
@CR_COMMANDS_OUT_OF_SYNC = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@mysqlnd_out_of_sync = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"command out of sync\00", align 1
@FAIL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@STAT_ROWS_FETCHED_FROM_CLIENT_PS_UNBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"skipping extraction\00", align 1
@CONN_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@SERVER_MORE_RESULTS_EXISTS = common dso_local global i32 0, align 4
@CONN_NEXT_RESULT_PENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"ret=%s fetched_anything=%u\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_stmt_fetch_row_unbuffered(%struct.TYPE_33__* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %22, %struct.TYPE_31__** %11, align 8
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %24 = icmp ne %struct.TYPE_31__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %27, align 8
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi %struct.TYPE_30__* [ %28, %25 ], [ null, %29 ]
  store %struct.TYPE_30__* %31, %struct.TYPE_30__** %12, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %14, align 8
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  store %struct.TYPE_32__* %37, %struct.TYPE_32__** %15, align 8
  %38 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @FALSE, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = call i32 @DBG_INF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* @PASS, align 8
  %50 = call i32 @DBG_RETURN(i64 %49)
  br label %51

51:                                               ; preds = %47, %30
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = call i64 @GET_CONNECTION_STATE(i32* %53)
  %55 = load i64, i64* @CONN_FETCHING_DATA, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CR_COMMANDS_OUT_OF_SYNC, align 4
  %62 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %63 = load i32, i32* @mysqlnd_out_of_sync, align 4
  %64 = call i32 @SET_CLIENT_ERROR(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = call i32 @DBG_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* @FAIL, align 8
  %67 = call i32 @DBG_RETURN(i64 %66)
  br label %68

68:                                               ; preds = %57, %51
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %72, align 8
  store %struct.TYPE_34__* %73, %struct.TYPE_34__** %13, align 8
  %74 = icmp ne %struct.TYPE_34__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i64, i64* @FAIL, align 8
  %77 = call i32 @DBG_RETURN(i64 %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %80 = icmp ne %struct.TYPE_30__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %83, align 8
  %85 = icmp ne %struct.TYPE_28__* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* @FALSE, align 8
  br label %90

88:                                               ; preds = %81, %78
  %89 = load i64, i64* @TRUE, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 9
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %16, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = call i32 @mysqlnd_mempool_save_state(%struct.TYPE_24__* %101)
  %103 = load i64, i64* @PASS, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %106 = call i64 @PACKET_READ(%struct.TYPE_20__* %104, %struct.TYPE_34__* %105)
  store i64 %106, i64* %10, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %300

108:                                              ; preds = %90
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %300, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %18, align 4
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %273, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  %127 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %126, align 8
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 %127(%struct.TYPE_23__* %130, i32 %133)
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 8
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 2
  store i32* %137, i32** %141, align 8
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 4
  %148 = bitcast %struct.TYPE_22__* %145 to i8*
  %149 = bitcast %struct.TYPE_22__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 8, i1 false)
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 8
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  store i32* null, i32** %154, align 8
  %155 = load i64, i64* @PASS, align 8
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load i64 (%struct.TYPE_22__*, i32*, i32, i32, i32, i32)*, i64 (%struct.TYPE_22__*, i32*, i32, i32, i32, i32)** %160, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i64 %161(%struct.TYPE_22__* %165, i32* %170, i32 %173, i32 %176, i32 %181, i32 %184)
  %186 = icmp ne i64 %155, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %121
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  %191 = call i32 @mysqlnd_mempool_restore_state(%struct.TYPE_24__* %190)
  %192 = load i8*, i8** %16, align 8
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  store i8* %192, i8** %196, align 8
  %197 = load i64, i64* @FAIL, align 8
  %198 = call i32 @DBG_RETURN(i64 %197)
  br label %199

199:                                              ; preds = %187, %121
  store i32 0, i32* %17, align 4
  br label %200

200:                                              ; preds = %264, %199
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %204, label %267

204:                                              ; preds = %200
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %206, align 8
  %208 = load i32, i32* %17, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  store i32* %211, i32** %19, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TRUE, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %263

222:                                              ; preds = %204
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %17, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32* %230, i32** %20, align 8
  %231 = load i32*, i32** %20, align 8
  %232 = call i64 @Z_TYPE_P(i32* %231)
  %233 = load i64, i64* @IS_STRING, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %257

235:                                              ; preds = %222
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i32*, i32** %20, align 8
  %245 = call i64 @Z_STRLEN_P(i32* %244)
  %246 = icmp slt i64 %243, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %235
  %248 = load i32*, i32** %20, align 8
  %249 = call i64 @Z_STRLEN_P(i32* %248)
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 0
  store i64 %249, i64* %256, align 8
  br label %257

257:                                              ; preds = %247, %235, %222
  %258 = load i32*, i32** %19, align 8
  %259 = load i32*, i32** %20, align 8
  %260 = call i32 @ZEND_TRY_ASSIGN_VALUE_EX(i32* %258, i32* %259, i32 0)
  %261 = load i32*, i32** %20, align 8
  %262 = call i32 @ZVAL_NULL(i32* %261)
  br label %263

263:                                              ; preds = %257, %204
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %17, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %17, align 4
  br label %200

267:                                              ; preds = %200
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @STAT_ROWS_FETCHED_FROM_CLIENT_PS_UNBUF, align 4
  %272 = call i32 @MYSQLND_INC_CONN_STATISTIC(i32 %270, i32 %271)
  br label %291

273:                                              ; preds = %113
  %274 = call i32 @DBG_INF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 5
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 0
  %279 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %278, align 8
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 %279(%struct.TYPE_21__* %282, i32* %286)
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  store i32* null, i32** %290, align 8
  br label %291

291:                                              ; preds = %273, %267
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 8
  %298 = load i64, i64* @TRUE, align 8
  %299 = load i64*, i64** %9, align 8
  store i64 %298, i64* %299, align 8
  br label %387

300:                                              ; preds = %108, %90
  %301 = load i64, i64* %10, align 8
  %302 = load i64, i64* @FAIL, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %337

304:                                              ; preds = %300
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %327

310:                                              ; preds = %304
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @COPY_CLIENT_ERROR(i32 %313, i64 %317)
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @COPY_CLIENT_ERROR(i32 %321, i64 %325)
  br label %327

327:                                              ; preds = %310, %304
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 0
  %330 = load i32, i32* @CONN_READY, align 4
  %331 = call i32 @SET_CONNECTION_STATE(i32* %329, i32 %330)
  %332 = load i64, i64* @TRUE, align 8
  %333 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  store i64 %332, i64* %336, align 8
  br label %386

337:                                              ; preds = %300
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %385

342:                                              ; preds = %337
  %343 = call i32 @DBG_INF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %344 = load i64, i64* @TRUE, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 2
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 0
  store i64 %344, i64* %348, align 8
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @UPSERT_STATUS_RESET(i32 %351)
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %355, i32 %358)
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %362, i32 %365)
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32 %369)
  %371 = load i32, i32* @SERVER_MORE_RESULTS_EXISTS, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %342
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = load i32, i32* @CONN_NEXT_RESULT_PENDING, align 4
  %378 = call i32 @SET_CONNECTION_STATE(i32* %376, i32 %377)
  br label %384

379:                                              ; preds = %342
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 0
  %382 = load i32, i32* @CONN_READY, align 4
  %383 = call i32 @SET_CONNECTION_STATE(i32* %381, i32 %382)
  br label %384

384:                                              ; preds = %379, %374
  br label %385

385:                                              ; preds = %384, %337
  br label %386

386:                                              ; preds = %385, %327
  br label %387

387:                                              ; preds = %386, %291
  %388 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %389, align 8
  %391 = call i32 @mysqlnd_mempool_restore_state(%struct.TYPE_24__* %390)
  %392 = load i8*, i8** %16, align 8
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 0
  store i8* %392, i8** %396, align 8
  %397 = load i64, i64* %10, align 8
  %398 = load i64, i64* @PASS, align 8
  %399 = icmp eq i64 %397, %398
  %400 = zext i1 %399 to i64
  %401 = select i1 %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %402 = load i64*, i64** %9, align 8
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %401, i64 %403)
  %405 = load i64, i64* %10, align 8
  %406 = call i32 @DBG_RETURN(i64 %405)
  %407 = load i64, i64* %5, align 8
  ret i64 %407
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF(i8*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

declare dso_local i64 @GET_CONNECTION_STATE(i32*) #1

declare dso_local i32 @SET_CLIENT_ERROR(i32, i32, i32, i32) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @mysqlnd_mempool_save_state(%struct.TYPE_24__*) #1

declare dso_local i64 @PACKET_READ(%struct.TYPE_20__*, %struct.TYPE_34__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mysqlnd_mempool_restore_state(%struct.TYPE_24__*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @ZEND_TRY_ASSIGN_VALUE_EX(i32*, i32*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC(i32, i32) #1

declare dso_local i32 @COPY_CLIENT_ERROR(i32, i64) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @UPSERT_STATUS_RESET(i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_WARNINGS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_GET_SERVER_STATUS(i32) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
