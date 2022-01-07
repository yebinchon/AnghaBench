; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_auth_change_user.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_auth_change_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_35__*, %struct.TYPE_38__*, i32, %struct.TYPE_41__, i32, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_37__*, i32, %struct.TYPE_33__*, %struct.TYPE_34__* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_38__ = type { i32 (%struct.TYPE_32__*)*, i64 (%struct.TYPE_32__*, i32)* }
%struct.TYPE_41__ = type { i8* }
%struct.TYPE_40__ = type { i8* }
%struct.TYPE_39__ = type { i8* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)* }
%struct.TYPE_42__ = type { i64, i64, i8*, i8*, i64, i64, i8*, i32, i8*, i64, i64, i64, i64, i32, i32, i32, i32* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32 }

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"mysqlnd_auth_change_user\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CONN_QUIT_SENT = common dso_local global i32 0, align 4
@CR_SERVER_GONE_ERROR = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@mysqlnd_server_gone = common dso_local global i32 0, align 4
@CLIENT_CONNECT_ATTRS = common dso_local global i32 0, align 4
@mysqlnd_old_passwd = common dso_local global i32 0, align 4
@CR_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Server is %u, buggy, sends two ERR messages\00", align 1
@PASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_auth_change_user(%struct.TYPE_32__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i64 %7, i64 %8, i8* %9, i32* %10, i64 %11, i8** %12, i64* %13, i32** %14, i64* %15) #0 {
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32**, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_33__*, align 8
  %36 = alloca %struct.TYPE_42__, align 8
  %37 = alloca %struct.TYPE_42__, align 8
  %38 = alloca %struct.TYPE_42__, align 8
  %39 = alloca %struct.TYPE_42__, align 8
  %40 = alloca i8*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %18, align 8
  store i8* %1, i8** %19, align 8
  store i64 %2, i64* %20, align 8
  store i8* %3, i8** %21, align 8
  store i64 %4, i64* %22, align 8
  store i8* %5, i8** %23, align 8
  store i64 %6, i64* %24, align 8
  store i64 %7, i64* %25, align 8
  store i64 %8, i64* %26, align 8
  store i8* %9, i8** %27, align 8
  store i32* %10, i32** %28, align 8
  store i64 %11, i64* %29, align 8
  store i8** %12, i8*** %30, align 8
  store i64* %13, i64** %31, align 8
  store i32** %14, i32*** %32, align 8
  store i64* %15, i64** %33, align 8
  %41 = load i64, i64* @FAIL, align 8
  store i64 %41, i64* %34, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %43, align 8
  store %struct.TYPE_33__* %44, %struct.TYPE_33__** %35, align 8
  %45 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i32 0, i32 3
  %51 = load i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)** %50, align 8
  %52 = call i32 %51(%struct.TYPE_42__* %36)
  %53 = load i64, i64* %26, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %16
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 8
  %59 = load %struct.TYPE_37__*, %struct.TYPE_37__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 2
  %62 = load i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)** %61, align 8
  %63 = call i32 %62(%struct.TYPE_42__* %37)
  %64 = load i32*, i32** %28, align 8
  %65 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %37, i32 0, i32 16
  store i32* %64, i32** %65, align 8
  %66 = load i64, i64* %29, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %37, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %69 = call i32 @PACKET_WRITE(%struct.TYPE_32__* %68, %struct.TYPE_42__* %37)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %56
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 9
  %74 = load i32, i32* @CONN_QUIT_SENT, align 4
  %75 = call i32 @SET_CONNECTION_STATE(i32* %73, i32 %74)
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %77, align 8
  %79 = load i32, i32* @CR_SERVER_GONE_ERROR, align 4
  %80 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %81 = load i32, i32* @mysqlnd_server_gone, align 4
  %82 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_35__* %78, i32 %79, i32 %80, i32 %81)
  %83 = call i32 @PACKET_FREE(%struct.TYPE_42__* %37)
  br label %385

84:                                               ; preds = %56
  %85 = call i32 @PACKET_FREE(%struct.TYPE_42__* %37)
  br label %158

86:                                               ; preds = %16
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 1
  %92 = load i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)** %91, align 8
  %93 = call i32 %92(%struct.TYPE_42__* %38)
  %94 = load i64, i64* @TRUE, align 8
  %95 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  %100 = load i64, i64* %24, align 8
  %101 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 4
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %25, align 8
  %103 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 5
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** %28, align 8
  %105 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 16
  store i32* %104, i32** %105, align 8
  %106 = load i64, i64* %29, align 8
  %107 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load i8*, i8** %27, align 8
  %109 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 6
  store i8* %108, i8** %109, align 8
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CLIENT_CONNECT_ATTRS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %86
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 11
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 15
  store i32 %121, i32* %122, align 8
  br label %123

123:                                              ; preds = %116, %86
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %127, align 8
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %130 = call i32 %128(%struct.TYPE_32__* %129)
  %131 = icmp sge i32 %130, 50123
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 10
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 14
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %123
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %141 = call i32 @PACKET_WRITE(%struct.TYPE_32__* %140, %struct.TYPE_42__* %38)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %139
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 9
  %146 = load i32, i32* @CONN_QUIT_SENT, align 4
  %147 = call i32 @SET_CONNECTION_STATE(i32* %145, i32 %146)
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %149, align 8
  %151 = load i32, i32* @CR_SERVER_GONE_ERROR, align 4
  %152 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %153 = load i32, i32* @mysqlnd_server_gone, align 4
  %154 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_35__* %150, i32 %151, i32 %152, i32 %153)
  %155 = call i32 @PACKET_FREE(%struct.TYPE_42__* %38)
  br label %385

156:                                              ; preds = %139
  %157 = call i32 @PACKET_FREE(%struct.TYPE_42__* %38)
  br label %158

158:                                              ; preds = %156, %84
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %160 = call i64 @PACKET_READ(%struct.TYPE_32__* %159, %struct.TYPE_42__* %36)
  store i64 %160, i64* %34, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_35__*, %struct.TYPE_35__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 13
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @COPY_CLIENT_ERROR(%struct.TYPE_35__* %163, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 254, %168
  br i1 %169, label %170, label %219

170:                                              ; preds = %158
  %171 = load i64, i64* @FAIL, align 8
  store i64 %171, i64* %34, align 8
  %172 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 8
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %185, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @mysqlnd_old_passwd, align 4
  %177 = call i32 @DBG_ERR(i32 %176)
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %179, align 8
  %181 = load i32, i32* @CR_UNKNOWN_ERROR, align 4
  %182 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %183 = load i32, i32* @mysqlnd_old_passwd, align 4
  %184 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_35__* %180, i32 %181, i32 %182, i32 %183)
  br label %218

185:                                              ; preds = %170
  %186 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 8
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 9
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @FALSE, align 4
  %191 = call i8* @mnd_pestrndup(i8* %187, i64 %189, i32 %190)
  %192 = load i8**, i8*** %30, align 8
  store i8* %191, i8** %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %31, align 8
  store i64 %194, i64* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 12
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %185
  %200 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 10
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %33, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i64*, i64** %33, align 8
  %204 = load i64, i64* %203, align 8
  %205 = call i32* @mnd_emalloc(i64 %204)
  %206 = load i32**, i32*** %32, align 8
  store i32* %205, i32** %206, align 8
  %207 = load i32**, i32*** %32, align 8
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 12
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %33, align 8
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @memcpy(i32* %208, i64 %210, i64 %212)
  br label %217

214:                                              ; preds = %185
  %215 = load i32**, i32*** %32, align 8
  store i32* null, i32** %215, align 8
  %216 = load i64*, i64** %33, align 8
  store i64 0, i64* %216, align 8
  br label %217

217:                                              ; preds = %214, %199
  br label %218

218:                                              ; preds = %217, %175
  br label %219

219:                                              ; preds = %218, %158
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_35__*, %struct.TYPE_35__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %268

226:                                              ; preds = %219
  %227 = load i64, i64* @FAIL, align 8
  store i64 %227, i64* %34, align 8
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %231, align 8
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %234 = call i32 %232(%struct.TYPE_32__* %233)
  %235 = sext i32 %234 to i64
  %236 = icmp sgt i64 %235, 50113
  br i1 %236, label %237, label %267

237:                                              ; preds = %226
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 0
  %242 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %241, align 8
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %244 = call i32 %242(%struct.TYPE_32__* %243)
  %245 = sext i32 %244 to i64
  %246 = icmp slt i64 %245, 50118
  br i1 %246, label %247, label %267

247:                                              ; preds = %237
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 8
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = load i32 (%struct.TYPE_42__*)*, i32 (%struct.TYPE_42__*)** %252, align 8
  %254 = call i32 %253(%struct.TYPE_42__* %39)
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %256 = call i64 @PACKET_READ(%struct.TYPE_32__* %255, %struct.TYPE_42__* %39)
  %257 = call i32 @PACKET_FREE(%struct.TYPE_42__* %39)
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 0
  %262 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %261, align 8
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %264 = call i32 %262(%struct.TYPE_32__* %263)
  %265 = sext i32 %264 to i64
  %266 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %265)
  br label %267

267:                                              ; preds = %247, %237, %226
  br label %268

268:                                              ; preds = %267, %219
  %269 = load i64, i64* %34, align 8
  %270 = load i64, i64* @PASS, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %364

272:                                              ; preds = %268
  store i8* null, i8** %40, align 8
  %273 = load i8*, i8** %19, align 8
  %274 = load i64, i64* %20, align 8
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = call i8* @mnd_pestrndup(i8* %273, i64 %274, i32 %277)
  store i8* %278, i8** %40, align 8
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %272
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @mnd_pefree(i8* %288, i32 %291)
  br label %293

293:                                              ; preds = %284, %272
  %294 = load i8*, i8** %40, align 8
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i32 0, i32 7
  %297 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %296, i32 0, i32 0
  store i8* %294, i8** %297, align 8
  %298 = load i8*, i8** %21, align 8
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = call i8* @mnd_pestrdup(i8* %298, i32 %301)
  store i8* %302, i8** %40, align 8
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %317

308:                                              ; preds = %293
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 6
  %311 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %314 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @mnd_pefree(i8* %312, i32 %315)
  br label %317

317:                                              ; preds = %308, %293
  %318 = load i8*, i8** %40, align 8
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 6
  %321 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %320, i32 0, i32 0
  store i8* %318, i8** %321, align 8
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %339

327:                                              ; preds = %317
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %329 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %328, i32 0, i32 4
  %330 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %333 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @mnd_pefree(i8* %331, i32 %334)
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %337, i32 0, i32 0
  store i8* null, i8** %338, align 8
  br label %339

339:                                              ; preds = %327, %317
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @UPSERT_STATUS_RESET(i32 %342)
  %344 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_38__*, %struct.TYPE_38__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 0
  %348 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %347, align 8
  %349 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %350 = call i32 %348(%struct.TYPE_32__* %349)
  %351 = icmp slt i32 %350, 50123
  br i1 %351, label %352, label %363

352:                                              ; preds = %339
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 2
  %355 = load %struct.TYPE_38__*, %struct.TYPE_38__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %355, i32 0, i32 1
  %357 = load i64 (%struct.TYPE_32__*, i32)*, i64 (%struct.TYPE_32__*, i32)** %356, align 8
  %358 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %359 = load %struct.TYPE_33__*, %struct.TYPE_33__** %35, align 8
  %360 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i64 %357(%struct.TYPE_32__* %358, i32 %361)
  store i64 %362, i64* %34, align 8
  br label %363

363:                                              ; preds = %352, %339
  br label %384

364:                                              ; preds = %268
  %365 = load i64, i64* %34, align 8
  %366 = load i64, i64* @FAIL, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %383

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 11
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @TRUE, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %368
  %374 = load i32, i32* @mysqlnd_old_passwd, align 4
  %375 = call i32 @DBG_ERR(i32 %374)
  %376 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_35__*, %struct.TYPE_35__** %377, align 8
  %379 = load i32, i32* @CR_UNKNOWN_ERROR, align 4
  %380 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %381 = load i32, i32* @mysqlnd_old_passwd, align 4
  %382 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_35__* %378, i32 %379, i32 %380, i32 %381)
  br label %383

383:                                              ; preds = %373, %368, %364
  br label %384

384:                                              ; preds = %383, %363
  br label %385

385:                                              ; preds = %384, %143, %71
  %386 = call i32 @PACKET_FREE(%struct.TYPE_42__* %36)
  %387 = load i64, i64* %34, align 8
  %388 = call i32 @DBG_RETURN(i64 %387)
  %389 = load i64, i64* %17, align 8
  ret i64 %389
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @PACKET_WRITE(%struct.TYPE_32__*, %struct.TYPE_42__*) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @SET_CLIENT_ERROR(%struct.TYPE_35__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_FREE(%struct.TYPE_42__*) #1

declare dso_local i64 @PACKET_READ(%struct.TYPE_32__*, %struct.TYPE_42__*) #1

declare dso_local i32 @COPY_CLIENT_ERROR(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @DBG_ERR(i32) #1

declare dso_local i8* @mnd_pestrndup(i8*, i64, i32) #1

declare dso_local i32* @mnd_emalloc(i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i64) #1

declare dso_local i32 @mnd_pefree(i8*, i32) #1

declare dso_local i8* @mnd_pestrdup(i8*, i32) #1

declare dso_local i32 @UPSERT_STATUS_RESET(i32) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
