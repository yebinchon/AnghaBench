; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_parse_client_opening.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_parse_client_opening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.nn_ws_handshake = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@NN_WS_HANDSHAKE_TERMSEQ = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_RECV_MORE = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_RESPONSE_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@NN_WS_HANDSHAKE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@CRLF = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Host:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Origin:\00", align 1
@NN_WS_HANDSHAKE_MATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Sec-WebSocket-Key:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Upgrade:\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Connection:\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"upgrade\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Sec-WebSocket-Version:\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Sec-WebSocket-Protocol:\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Sec-WebSocket-Extensions:\00", align 1
@NN_WS_HANDSHAKE_RESPONSE_WSPROTO = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@NN_WS_HANDSHAKE_RESPONSE_WSVERSION = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@NN_WS_HANDSHAKE_SP_MAP_LEN = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_SP_MAP = common dso_local global %struct.TYPE_8__* null, align 8
@NN_WS_HANDSHAKE_RESPONSE_OK = common dso_local global i8* null, align 8
@NN_WS_HANDSHAKE_VALID = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_RESPONSE_NOTPEER = common dso_local global i8* null, align 8
@NN_WS_HANDSHAKE_RESPONSE_UNKNOWNTYPE = common dso_local global i8* null, align 8
@NN_PAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_ws_handshake*)* @nn_ws_handshake_parse_client_opening to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_ws_handshake_parse_client_opening(%struct.nn_ws_handshake* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ws_handshake*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.nn_ws_handshake* %0, %struct.nn_ws_handshake** %3, align 8
  %9 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %10 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @memchr(i8* %11, i8 signext 0, i32 8)
  %13 = call i32 @nn_assert(i32 %12)
  %14 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %15 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ult i64 %17, 8
  %19 = zext i1 %18 to i32
  %20 = call i32 @nn_assert(i32 %19)
  %21 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %22 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @NN_WS_HANDSHAKE_TERMSEQ, align 4
  %26 = call i32 @strstr(i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @NN_WS_HANDSHAKE_RECV_MORE, align 4
  store i32 %29, i32* %2, align 4
  br label %373

30:                                               ; preds = %1
  %31 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %32 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %31, i32 0, i32 1
  store i8* null, i8** %32, align 8
  %33 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %34 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %33, i32 0, i32 2
  store i8* null, i8** %34, align 8
  %35 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %36 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %35, i32 0, i32 3
  store i8* null, i8** %36, align 8
  %37 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %38 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %37, i32 0, i32 4
  store i8* null, i8** %38, align 8
  %39 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %40 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %39, i32 0, i32 5
  store i8* null, i8** %40, align 8
  %41 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %42 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %41, i32 0, i32 6
  store i8* null, i8** %42, align 8
  %43 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %44 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %43, i32 0, i32 7
  store i8* null, i8** %44, align 8
  %45 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %46 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %45, i32 0, i32 8
  store i8* null, i8** %46, align 8
  %47 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %48 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %47, i32 0, i32 9
  store i64 0, i64* %48, align 8
  %49 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %50 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %49, i32 0, i32 10
  store i64 0, i64* %50, align 8
  %51 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %52 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %51, i32 0, i32 11
  store i64 0, i64* %52, align 8
  %53 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %54 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %53, i32 0, i32 12
  store i64 0, i64* %54, align 8
  %55 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %56 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %55, i32 0, i32 13
  store i64 0, i64* %56, align 8
  %57 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %58 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %57, i32 0, i32 14
  store i64 0, i64* %58, align 8
  %59 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %60 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %59, i32 0, i32 15
  store i64 0, i64* %60, align 8
  %61 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %62 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %61, i32 0, i32 16
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_NULL, align 8
  %64 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %65 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %64, i32 0, i32 19
  store i8* %63, i8** %65, align 8
  %66 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, i32 0, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %30
  %69 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %69, i32* %2, align 4
  br label %373

70:                                               ; preds = %30
  %71 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %72 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %71, i32 0, i32 8
  %73 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %74 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %73, i32 0, i32 16
  %75 = call i32 @nn_ws_match_value(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, i32 0, i32 0, i8** %72, i64* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %78, i32* %2, align 4
  br label %373

79:                                               ; preds = %70
  %80 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %5, i32 0, i32 0)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %83, i32* %2, align 4
  br label %373

84:                                               ; preds = %79
  %85 = load i8*, i8** @CRLF, align 8
  %86 = call i32 @nn_ws_match_token(i8* %85, i8** %5, i32 0, i32 0)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %89, i32* %2, align 4
  br label %373

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %214, %90
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %215

95:                                               ; preds = %91
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %96 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** @CRLF, align 8
  %100 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %101 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %100, i32 0, i32 1
  %102 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %103 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %102, i32 0, i32 9
  %104 = call i32 @nn_ws_match_value(i8* %99, i8** %5, i32 1, i32 1, i8** %101, i64* %103)
  store i32 %104, i32* %4, align 4
  br label %208

105:                                              ; preds = %95
  %106 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %107 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i8*, i8** @CRLF, align 8
  %111 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %112 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %111, i32 0, i32 2
  %113 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %114 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %113, i32 0, i32 10
  %115 = call i32 @nn_ws_match_value(i8* %110, i8** %5, i32 1, i32 1, i8** %112, i64* %114)
  store i32 %115, i32* %4, align 4
  br label %207

116:                                              ; preds = %105
  %117 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %118 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i8*, i8** @CRLF, align 8
  %122 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %123 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %122, i32 0, i32 3
  %124 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %125 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %124, i32 0, i32 11
  %126 = call i32 @nn_ws_match_value(i8* %121, i8** %5, i32 1, i32 1, i8** %123, i64* %125)
  store i32 %126, i32* %4, align 4
  br label %206

127:                                              ; preds = %116
  %128 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %129 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i8*, i8** @CRLF, align 8
  %133 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %134 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %133, i32 0, i32 4
  %135 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %136 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %135, i32 0, i32 12
  %137 = call i32 @nn_ws_match_value(i8* %132, i8** %5, i32 1, i32 1, i8** %134, i64* %136)
  store i32 %137, i32* %4, align 4
  br label %205

138:                                              ; preds = %127
  %139 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %140 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %138
  %143 = load i8*, i8** @CRLF, align 8
  %144 = call i32 @nn_ws_match_value(i8* %143, i8** %5, i32 1, i32 1, i8** %7, i64* %8)
  store i32 %144, i32* %4, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i8* @nn_strcasestr(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %147 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %148 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %150 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %155 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %156 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %155, i32 0, i32 13
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %142
  br label %204

158:                                              ; preds = %138
  %159 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %160 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i8*, i8** @CRLF, align 8
  %164 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %165 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %164, i32 0, i32 6
  %166 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %167 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %166, i32 0, i32 14
  %168 = call i32 @nn_ws_match_value(i8* %163, i8** %5, i32 1, i32 1, i8** %165, i64* %167)
  store i32 %168, i32* %4, align 4
  br label %203

169:                                              ; preds = %158
  %170 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %171 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load i8*, i8** @CRLF, align 8
  %175 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %176 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %175, i32 0, i32 7
  %177 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %178 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %177, i32 0, i32 15
  %179 = call i32 @nn_ws_match_value(i8* %174, i8** %5, i32 1, i32 1, i8** %176, i64* %178)
  store i32 %179, i32* %4, align 4
  br label %202

180:                                              ; preds = %169
  %181 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %182 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i8*, i8** @CRLF, align 8
  %186 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %187 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %186, i32 0, i32 17
  %188 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %189 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %188, i32 0, i32 18
  %190 = call i32 @nn_ws_match_value(i8* %185, i8** %5, i32 1, i32 1, i8** %187, i64* %189)
  store i32 %190, i32* %4, align 4
  br label %201

191:                                              ; preds = %180
  %192 = load i8*, i8** @CRLF, align 8
  %193 = call i32 @nn_ws_match_token(i8* %192, i8** %5, i32 1, i32 0)
  %194 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %215

197:                                              ; preds = %191
  %198 = load i8*, i8** @CRLF, align 8
  %199 = call i32 @nn_ws_match_value(i8* %198, i8** %5, i32 1, i32 1, i8** null, i64* null)
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %200, %184
  br label %202

202:                                              ; preds = %201, %173
  br label %203

203:                                              ; preds = %202, %162
  br label %204

204:                                              ; preds = %203, %157
  br label %205

205:                                              ; preds = %204, %131
  br label %206

206:                                              ; preds = %205, %120
  br label %207

207:                                              ; preds = %206, %109
  br label %208

208:                                              ; preds = %207, %98
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %213, i32* %2, align 4
  br label %373

214:                                              ; preds = %208
  br label %91

215:                                              ; preds = %196, %91
  %216 = load i8*, i8** %5, align 8
  %217 = call i64 @strlen(i8* %216)
  %218 = icmp eq i64 %217, 0
  %219 = zext i1 %218 to i32
  %220 = call i32 @nn_assert(i32 %219)
  %221 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %222 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %245

225:                                              ; preds = %215
  %226 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %227 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %226, i32 0, i32 4
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %232 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %231, i32 0, i32 5
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %245

235:                                              ; preds = %230
  %236 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %237 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %236, i32 0, i32 3
  %238 = load i8*, i8** %237, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %242 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %241, i32 0, i32 6
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %240, %235, %230, %225, %215
  %246 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_WSPROTO, align 8
  %247 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %248 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %247, i32 0, i32 19
  store i8* %246, i8** %248, align 8
  %249 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %249, i32* %2, align 4
  br label %373

250:                                              ; preds = %240
  %251 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %252 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %251, i32 0, i32 6
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %255 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %254, i32 0, i32 14
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @nn_ws_validate_value(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %253, i64 %256, i32 1)
  %258 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %250
  %261 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_WSVERSION, align 8
  %262 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %263 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %262, i32 0, i32 19
  store i8* %261, i8** %263, align 8
  %264 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %264, i32* %2, align 4
  br label %373

265:                                              ; preds = %250
  %266 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %267 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %266, i32 0, i32 4
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %270 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %269, i32 0, i32 12
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @nn_ws_validate_value(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %268, i64 %271, i32 1)
  %273 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %265
  %276 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_WSPROTO, align 8
  %277 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %278 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %277, i32 0, i32 19
  store i8* %276, i8** %278, align 8
  %279 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %279, i32* %2, align 4
  br label %373

280:                                              ; preds = %265
  %281 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %282 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %281, i32 0, i32 5
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %285 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %284, i32 0, i32 13
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @nn_ws_validate_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %283, i64 %286, i32 1)
  %288 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %280
  %291 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_WSPROTO, align 8
  %292 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %293 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %292, i32 0, i32 19
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %294, i32* %2, align 4
  br label %373

295:                                              ; preds = %280
  %296 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %297 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %296, i32 0, i32 7
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %356

300:                                              ; preds = %295
  store i32 0, i32* %6, align 4
  br label %301

301:                                              ; preds = %348, %300
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* @NN_WS_HANDSHAKE_SP_MAP_LEN, align 4
  %304 = icmp ult i32 %302, %303
  br i1 %304, label %305, label %351

305:                                              ; preds = %301
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NN_WS_HANDSHAKE_SP_MAP, align 8
  %307 = load i32, i32* %6, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %313 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %312, i32 0, i32 7
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %316 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %315, i32 0, i32 15
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @nn_ws_validate_value(i8* %311, i8* %314, i64 %317, i32 1)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %347

320:                                              ; preds = %305
  %321 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %322 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %321, i32 0, i32 20
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NN_WS_HANDSHAKE_SP_MAP, align 8
  %331 = load i32, i32* %6, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %329, %335
  br i1 %336, label %337, label %342

337:                                              ; preds = %320
  %338 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_OK, align 8
  %339 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %340 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %339, i32 0, i32 19
  store i8* %338, i8** %340, align 8
  %341 = load i32, i32* @NN_WS_HANDSHAKE_VALID, align 4
  store i32 %341, i32* %2, align 4
  br label %373

342:                                              ; preds = %320
  %343 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_NOTPEER, align 8
  %344 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %345 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %344, i32 0, i32 19
  store i8* %343, i8** %345, align 8
  %346 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %346, i32* %2, align 4
  br label %373

347:                                              ; preds = %305
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %6, align 4
  %350 = add i32 %349, 1
  store i32 %350, i32* %6, align 4
  br label %301

351:                                              ; preds = %301
  %352 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_UNKNOWNTYPE, align 8
  %353 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %354 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %353, i32 0, i32 19
  store i8* %352, i8** %354, align 8
  %355 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %355, i32* %2, align 4
  br label %373

356:                                              ; preds = %295
  %357 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %358 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %357, i32 0, i32 20
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %358, align 8
  %360 = load i32, i32* @NN_PAIR, align 4
  %361 = call i64 @nn_pipebase_ispeer(%struct.TYPE_7__* %359, i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %356
  %364 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_OK, align 8
  %365 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %366 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %365, i32 0, i32 19
  store i8* %364, i8** %366, align 8
  %367 = load i32, i32* @NN_WS_HANDSHAKE_VALID, align 4
  store i32 %367, i32* %2, align 4
  br label %373

368:                                              ; preds = %356
  %369 = load i8*, i8** @NN_WS_HANDSHAKE_RESPONSE_NOTPEER, align 8
  %370 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %371 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %370, i32 0, i32 19
  store i8* %369, i8** %371, align 8
  %372 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %368, %363, %351, %342, %337, %290, %275, %260, %245, %212, %88, %82, %77, %68, %28
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strstr(i8*, i32) #1

declare dso_local i32 @nn_ws_match_token(i8*, i8**, i32, i32) #1

declare dso_local i32 @nn_ws_match_value(i8*, i8**, i32, i32, i8**, i64*) #1

declare dso_local i8* @nn_strcasestr(i8*, i8*) #1

declare dso_local i32 @nn_ws_validate_value(i8*, i8*, i64, i32) #1

declare dso_local i64 @nn_pipebase_ispeer(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
