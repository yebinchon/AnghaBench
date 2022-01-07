; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_auth_handshake.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_auth_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_32__, %struct.TYPE_27__*, i32, %struct.TYPE_30__*, %struct.TYPE_29__*, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)* }
%struct.TYPE_34__ = type { i64, i32, i64, i8*, i8*, i64, i8*, i32, i64, i64, i32, i32, i32, i32, i64*, i64, i32, i32, i32*, i32, i32 }
%struct.TYPE_33__ = type { i64, i32 }
%struct.st_mysqlnd_authentication_plugin = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 (%struct.st_mysqlnd_authentication_plugin.0*, %struct.TYPE_25__*, i32*, i64, i8*, i64)* }
%struct.st_mysqlnd_authentication_plugin.0 = type opaque
%struct.TYPE_26__ = type { i32 }

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"mysqlnd_auth_handshake\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CONN_QUIT_SENT = common dso_local global i32 0, align 4
@CR_SERVER_GONE_ERROR = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@mysqlnd_server_gone = common dso_local global i32 0, align 4
@CLIENT_CONNECT_ATTRS = common dso_local global i32 0, align 4
@mysqlnd_old_passwd = common dso_local global i32 0, align 4
@CR_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ERROR:%u [SQLSTATE:%s] %s\00", align 1
@PASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mysqlnd_auth_handshake(%struct.TYPE_25__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, %struct.TYPE_33__* %6, i32 %7, i32 %8, i64 %9, i8* %10, %struct.st_mysqlnd_authentication_plugin* %11, i32* %12, i64 %13, i32* %14, i64 %15, i8** %16, i64* %17, i32** %18, i64* %19) #0 {
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_33__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.st_mysqlnd_authentication_plugin*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8**, align 8
  %39 = alloca i64*, align 8
  %40 = alloca i32**, align 8
  %41 = alloca i64*, align 8
  %42 = alloca i64, align 8
  %43 = alloca %struct.TYPE_26__*, align 8
  %44 = alloca %struct.TYPE_34__, align 8
  %45 = alloca %struct.TYPE_34__, align 8
  %46 = alloca %struct.TYPE_34__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %22, align 8
  store i8* %1, i8** %23, align 8
  store i8* %2, i8** %24, align 8
  store i64 %3, i64* %25, align 8
  store i8* %4, i8** %26, align 8
  store i64 %5, i64* %27, align 8
  store %struct.TYPE_33__* %6, %struct.TYPE_33__** %28, align 8
  store i32 %7, i32* %29, align 4
  store i32 %8, i32* %30, align 4
  store i64 %9, i64* %31, align 8
  store i8* %10, i8** %32, align 8
  store %struct.st_mysqlnd_authentication_plugin* %11, %struct.st_mysqlnd_authentication_plugin** %33, align 8
  store i32* %12, i32** %34, align 8
  store i64 %13, i64* %35, align 8
  store i32* %14, i32** %36, align 8
  store i64 %15, i64* %37, align 8
  store i8** %16, i8*** %38, align 8
  store i64* %17, i64** %39, align 8
  store i32** %18, i32*** %40, align 8
  store i64* %19, i64** %41, align 8
  %47 = load i64, i64* @FAIL, align 8
  store i64 %47, i64* %42, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %43, align 8
  %48 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 2
  %54 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %53, align 8
  %55 = call i32 %54(%struct.TYPE_34__* %44)
  %56 = load i64, i64* %31, align 8
  %57 = load i64, i64* @TRUE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %20
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %64, align 8
  %66 = call i32 %65(%struct.TYPE_34__* %45)
  %67 = load i32*, i32** %36, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 18
  store i32* %67, i32** %68, align 8
  %69 = load i64, i64* %37, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %72 = call i32 @PACKET_WRITE(%struct.TYPE_25__* %71, %struct.TYPE_34__* %45)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %59
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 6
  %77 = load i32, i32* @CONN_QUIT_SENT, align 4
  %78 = call i32 @SET_CONNECTION_STATE(i32* %76, i32 %77)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %80, align 8
  %82 = load i32, i32* @CR_SERVER_GONE_ERROR, align 4
  %83 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %84 = load i32, i32* @mysqlnd_server_gone, align 4
  %85 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_27__* %81, i32 %82, i32 %83, i32 %84)
  %86 = call i32 @PACKET_FREE(%struct.TYPE_34__* %45)
  br label %303

87:                                               ; preds = %59
  %88 = call i32 @PACKET_FREE(%struct.TYPE_34__* %45)
  br label %167

89:                                               ; preds = %20
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %94, align 8
  %96 = call i32 %95(%struct.TYPE_34__* %46)
  %97 = load i32, i32* %29, align 4
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 20
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 19
  store i32 %101, i32* %102, align 8
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %89
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call %struct.TYPE_26__* @mysqlnd_find_charset_name(i64 %110)
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %43, align 8
  %112 = icmp ne %struct.TYPE_26__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  br label %121

118:                                              ; preds = %107, %89
  %119 = load i32, i32* %30, align 4
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i64, i64* @TRUE, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 2
  store i64 %122, i64* %123, align 8
  %124 = load i8*, i8** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 3
  store i8* %124, i8** %125, align 8
  %126 = load i8*, i8** %26, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 4
  store i8* %126, i8** %127, align 8
  %128 = load i64, i64* %27, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 5
  store i64 %128, i64* %129, align 8
  %130 = load i32*, i32** %36, align 8
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 18
  store i32* %130, i32** %131, align 8
  %132 = load i64, i64* %37, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  %134 = load i8*, i8** %32, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 6
  store i8* %134, i8** %135, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CLIENT_CONNECT_ATTRS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %121
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 17
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %121
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %151 = call i32 @PACKET_WRITE(%struct.TYPE_25__* %150, %struct.TYPE_34__* %46)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = call i32 @PACKET_FREE(%struct.TYPE_34__* %46)
  br label %303

155:                                              ; preds = %149
  %156 = load i64, i64* %31, align 8
  %157 = load i64, i64* @TRUE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @mysqlnd_find_charset_nr(i32 %161)
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %155
  %166 = call i32 @PACKET_FREE(%struct.TYPE_34__* %46)
  br label %167

167:                                              ; preds = %165, %87
  %168 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %33, align 8
  %169 = icmp ne %struct.st_mysqlnd_authentication_plugin* %168, null
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %33, align 8
  %172 = getelementptr inbounds %struct.st_mysqlnd_authentication_plugin, %struct.st_mysqlnd_authentication_plugin* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i32 (%struct.st_mysqlnd_authentication_plugin.0*, %struct.TYPE_25__*, i32*, i64, i8*, i64)*, i32 (%struct.st_mysqlnd_authentication_plugin.0*, %struct.TYPE_25__*, i32*, i64, i8*, i64)** %173, align 8
  %175 = icmp ne i32 (%struct.st_mysqlnd_authentication_plugin.0*, %struct.TYPE_25__*, i32*, i64, i8*, i64)* %174, null
  br i1 %175, label %176, label %189

176:                                              ; preds = %170
  %177 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %33, align 8
  %178 = getelementptr inbounds %struct.st_mysqlnd_authentication_plugin, %struct.st_mysqlnd_authentication_plugin* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i32 (%struct.st_mysqlnd_authentication_plugin.0*, %struct.TYPE_25__*, i32*, i64, i8*, i64)*, i32 (%struct.st_mysqlnd_authentication_plugin.0*, %struct.TYPE_25__*, i32*, i64, i8*, i64)** %179, align 8
  %181 = load %struct.st_mysqlnd_authentication_plugin*, %struct.st_mysqlnd_authentication_plugin** %33, align 8
  %182 = bitcast %struct.st_mysqlnd_authentication_plugin* %181 to %struct.st_mysqlnd_authentication_plugin.0*
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %184 = load i32*, i32** %34, align 8
  %185 = load i64, i64* %35, align 8
  %186 = load i8*, i8** %24, align 8
  %187 = load i64, i64* %25, align 8
  %188 = call i32 %180(%struct.st_mysqlnd_authentication_plugin.0* %182, %struct.TYPE_25__* %183, i32* %184, i64 %185, i8* %186, i64 %187)
  br label %189

189:                                              ; preds = %176, %170, %167
  %190 = load i64, i64* @FAIL, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %192 = call i64 @PACKET_READ(%struct.TYPE_25__* %191, %struct.TYPE_34__* %44)
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 254
  br i1 %197, label %198, label %288

198:                                              ; preds = %194, %189
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 254
  br i1 %201, label %202, label %250

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 16
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* @mysqlnd_old_passwd, align 4
  %208 = call i32 @DBG_ERR(i32 %207)
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %210, align 8
  %212 = load i32, i32* @CR_UNKNOWN_ERROR, align 4
  %213 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %214 = load i32, i32* @mysqlnd_old_passwd, align 4
  %215 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_27__* %211, i32 %212, i32 %213, i32 %214)
  br label %249

216:                                              ; preds = %202
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 16
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 8
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* @FALSE, align 4
  %222 = call i8* @mnd_pestrndup(i32 %218, i64 %220, i32 %221)
  %223 = load i8**, i8*** %38, align 8
  store i8* %222, i8** %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 8
  %225 = load i64, i64* %224, align 8
  %226 = load i64*, i64** %39, align 8
  store i64 %225, i64* %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 15
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %216
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %41, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i64*, i64** %41, align 8
  %235 = load i64, i64* %234, align 8
  %236 = call i32* @mnd_emalloc(i64 %235)
  %237 = load i32**, i32*** %40, align 8
  store i32* %236, i32** %237, align 8
  %238 = load i32**, i32*** %40, align 8
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 15
  %241 = load i64, i64* %240, align 8
  %242 = load i64*, i64** %41, align 8
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @memcpy(i32* %239, i64 %241, i64 %243)
  br label %248

245:                                              ; preds = %216
  %246 = load i32**, i32*** %40, align 8
  store i32* null, i32** %246, align 8
  %247 = load i64*, i64** %41, align 8
  store i64 0, i64* %247, align 8
  br label %248

248:                                              ; preds = %245, %230
  br label %249

249:                                              ; preds = %248, %206
  br label %287

250:                                              ; preds = %198
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 255
  br i1 %253, label %254, label %286

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 14
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %254
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 14
  %267 = load i64*, i64** %266, align 8
  %268 = call i32 @strlcpy(i32 %265, i64* %267, i32 4)
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 13
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 14
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 12
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @DBG_ERR_FMT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %270, i64* %272, i32 %274)
  br label %276

276:                                              ; preds = %260, %254
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 13
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 12
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @SET_CLIENT_ERROR(%struct.TYPE_27__* %279, i32 %281, i32 %282, i32 %284)
  br label %286

286:                                              ; preds = %276, %250
  br label %287

287:                                              ; preds = %286, %249
  br label %303

288:                                              ; preds = %194
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 11
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 10
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @SET_NEW_MESSAGE(i32 %292, i32 %296, i32 %298, i32 %300)
  %302 = load i64, i64* @PASS, align 8
  store i64 %302, i64* %42, align 8
  br label %303

303:                                              ; preds = %288, %287, %153, %74
  %304 = call i32 @PACKET_FREE(%struct.TYPE_34__* %44)
  %305 = load i64, i64* %42, align 8
  %306 = call i32 @DBG_RETURN(i64 %305)
  %307 = load i64, i64* %21, align 8
  ret i64 %307
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @PACKET_WRITE(%struct.TYPE_25__*, %struct.TYPE_34__*) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @SET_CLIENT_ERROR(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_FREE(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_26__* @mysqlnd_find_charset_name(i64) #1

declare dso_local i32 @mysqlnd_find_charset_nr(i32) #1

declare dso_local i64 @PACKET_READ(%struct.TYPE_25__*, %struct.TYPE_34__*) #1

declare dso_local i32 @DBG_ERR(i32) #1

declare dso_local i8* @mnd_pestrndup(i32, i64, i32) #1

declare dso_local i32* @mnd_emalloc(i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @strlcpy(i32, i64*, i32) #1

declare dso_local i32 @DBG_ERR_FMT(i8*, i32, i64*, i32) #1

declare dso_local i32 @SET_NEW_MESSAGE(i32, i32, i32, i32) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
