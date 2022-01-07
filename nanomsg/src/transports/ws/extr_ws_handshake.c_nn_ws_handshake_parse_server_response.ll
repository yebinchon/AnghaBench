; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_parse_server_response.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_parse_server_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ws_handshake = type { i8*, i8*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32* }

@NN_WS_HANDSHAKE_TERMSEQ = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_RECV_MORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@CRLF = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Server:\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Sec-WebSocket-Accept:\00", align 1
@NN_WS_HANDSHAKE_MATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Upgrade:\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Connection:\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Sec-WebSocket-Version-Server:\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Sec-WebSocket-Protocol-Server:\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Sec-WebSocket-Extensions:\00", align 1
@NN_WS_HANDSHAKE_INVALID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"101\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@NN_WS_HANDSHAKE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_ws_handshake*)* @nn_ws_handshake_parse_server_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_ws_handshake_parse_server_response(%struct.nn_ws_handshake* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_ws_handshake*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.nn_ws_handshake* %0, %struct.nn_ws_handshake** %3, align 8
  %6 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %7 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @memchr(i8* %8, i8 signext 0, i32 8)
  %10 = call i32 @nn_assert(i32 %9)
  %11 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %12 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = icmp ult i64 %14, 8
  %16 = zext i1 %15 to i32
  %17 = call i32 @nn_assert(i32 %16)
  %18 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %19 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @NN_WS_HANDSHAKE_TERMSEQ, align 4
  %23 = call i32 @strstr(i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @NN_WS_HANDSHAKE_RECV_MORE, align 4
  store i32 %26, i32* %2, align 4
  br label %267

27:                                               ; preds = %1
  %28 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %29 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %28, i32 0, i32 9
  store i32* null, i32** %29, align 8
  %30 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %31 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %30, i32 0, i32 19
  store i32* null, i32** %31, align 8
  %32 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %33 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %32, i32 0, i32 17
  store i32* null, i32** %33, align 8
  %34 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %35 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %37 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %39 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %41 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %40, i32 0, i32 15
  store i32* null, i32** %41, align 8
  %42 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %43 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %42, i32 0, i32 13
  store i32* null, i32** %43, align 8
  %44 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %45 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %44, i32 0, i32 8
  store i32 0, i32* %45, align 8
  %46 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %47 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %46, i32 0, i32 18
  store i32 0, i32* %47, align 8
  %48 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %49 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %48, i32 0, i32 16
  store i32 0, i32* %49, align 8
  %50 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %51 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %53 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %52, i32 0, i32 6
  store i32 0, i32* %53, align 8
  %54 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %55 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  %56 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %57 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %56, i32 0, i32 14
  store i32 0, i32* %57, align 8
  %58 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %59 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %58, i32 0, i32 12
  store i32 0, i32* %59, align 8
  %60 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, i32 0, i32 0)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %27
  %63 = load i32, i32* @NN_WS_HANDSHAKE_RECV_MORE, align 4
  store i32 %63, i32* %2, align 4
  br label %267

64:                                               ; preds = %27
  %65 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %66 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %65, i32 0, i32 9
  %67 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %68 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %67, i32 0, i32 8
  %69 = call i32 @nn_ws_match_value(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, i32 0, i32 0, i32** %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @NN_WS_HANDSHAKE_RECV_MORE, align 4
  store i32 %72, i32* %2, align 4
  br label %267

73:                                               ; preds = %64
  %74 = load i8*, i8** @CRLF, align 8
  %75 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %76 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %75, i32 0, i32 19
  %77 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %78 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %77, i32 0, i32 18
  %79 = call i32 @nn_ws_match_value(i8* %74, i8** %5, i32 0, i32 0, i32** %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @NN_WS_HANDSHAKE_RECV_MORE, align 4
  store i32 %82, i32* %2, align 4
  br label %267

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %186, %83
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %187

88:                                               ; preds = %84
  %89 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i8*, i8** @CRLF, align 8
  %93 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %94 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %93, i32 0, i32 17
  %95 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %96 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %95, i32 0, i32 16
  %97 = call i32 @nn_ws_match_value(i8* %92, i8** %5, i32 1, i32 1, i32** %94, i32* %96)
  store i32 %97, i32* %4, align 4
  br label %180

98:                                               ; preds = %88
  %99 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %100 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i8*, i8** @CRLF, align 8
  %104 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %105 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %104, i32 0, i32 3
  %106 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %107 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %106, i32 0, i32 2
  %108 = call i32 @nn_ws_match_value(i8* %103, i8** %5, i32 1, i32 1, i32** %105, i32* %107)
  store i32 %108, i32* %4, align 4
  br label %179

109:                                              ; preds = %98
  %110 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %111 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i8*, i8** @CRLF, align 8
  %115 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %116 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %115, i32 0, i32 7
  %117 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %118 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %117, i32 0, i32 6
  %119 = call i32 @nn_ws_match_value(i8* %114, i8** %5, i32 1, i32 1, i32** %116, i32* %118)
  store i32 %119, i32* %4, align 4
  br label %178

120:                                              ; preds = %109
  %121 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %122 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i8*, i8** @CRLF, align 8
  %126 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %127 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %126, i32 0, i32 5
  %128 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %129 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %128, i32 0, i32 4
  %130 = call i32 @nn_ws_match_value(i8* %125, i8** %5, i32 1, i32 1, i32** %127, i32* %129)
  store i32 %130, i32* %4, align 4
  br label %177

131:                                              ; preds = %120
  %132 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %133 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i8*, i8** @CRLF, align 8
  %137 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %138 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %137, i32 0, i32 15
  %139 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %140 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %139, i32 0, i32 14
  %141 = call i32 @nn_ws_match_value(i8* %136, i8** %5, i32 1, i32 1, i32** %138, i32* %140)
  store i32 %141, i32* %4, align 4
  br label %176

142:                                              ; preds = %131
  %143 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %144 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i8*, i8** @CRLF, align 8
  %148 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %149 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %148, i32 0, i32 13
  %150 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %151 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %150, i32 0, i32 12
  %152 = call i32 @nn_ws_match_value(i8* %147, i8** %5, i32 1, i32 1, i32** %149, i32* %151)
  store i32 %152, i32* %4, align 4
  br label %175

153:                                              ; preds = %142
  %154 = call i32 @nn_ws_match_token(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8** %5, i32 1, i32 0)
  %155 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i8*, i8** @CRLF, align 8
  %159 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %160 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %159, i32 0, i32 11
  %161 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %162 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %161, i32 0, i32 10
  %163 = call i32 @nn_ws_match_value(i8* %158, i8** %5, i32 1, i32 1, i32** %160, i32* %162)
  store i32 %163, i32* %4, align 4
  br label %174

164:                                              ; preds = %153
  %165 = load i8*, i8** @CRLF, align 8
  %166 = call i32 @nn_ws_match_token(i8* %165, i8** %5, i32 1, i32 0)
  %167 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %187

170:                                              ; preds = %164
  %171 = load i8*, i8** @CRLF, align 8
  %172 = call i32 @nn_ws_match_value(i8* %171, i8** %5, i32 1, i32 1, i32** null, i32* null)
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174, %146
  br label %176

176:                                              ; preds = %175, %135
  br label %177

177:                                              ; preds = %176, %124
  br label %178

178:                                              ; preds = %177, %113
  br label %179

179:                                              ; preds = %178, %102
  br label %180

180:                                              ; preds = %179, %91
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @NN_WS_HANDSHAKE_RECV_MORE, align 4
  store i32 %185, i32* %2, align 4
  br label %267

186:                                              ; preds = %180
  br label %84

187:                                              ; preds = %169, %84
  %188 = load i8*, i8** %5, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @nn_assert(i32 %191)
  %193 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %194 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %193, i32 0, i32 9
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %212

197:                                              ; preds = %187
  %198 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %199 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %204 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %209 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %207, %202, %197, %187
  %213 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %213, i32* %2, align 4
  br label %267

214:                                              ; preds = %207
  %215 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %216 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %215, i32 0, i32 9
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %219 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @nn_ws_validate_value(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %217, i32 %220, i32 1)
  %222 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %214
  %225 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %225, i32* %2, align 4
  br label %267

226:                                              ; preds = %214
  %227 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %228 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %227, i32 0, i32 7
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %231 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @nn_ws_validate_value(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %229, i32 %232, i32 1)
  %234 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %237, i32* %2, align 4
  br label %267

238:                                              ; preds = %226
  %239 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %240 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %243 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @nn_ws_validate_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* %241, i32 %244, i32 1)
  %246 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %238
  %249 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %249, i32* %2, align 4
  br label %267

250:                                              ; preds = %238
  %251 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %252 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %255 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %3, align 8
  %258 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @nn_ws_validate_value(i8* %253, i32* %256, i32 %259, i32 1)
  %261 = load i32, i32* @NN_WS_HANDSHAKE_MATCH, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %250
  %264 = load i32, i32* @NN_WS_HANDSHAKE_INVALID, align 4
  store i32 %264, i32* %2, align 4
  br label %267

265:                                              ; preds = %250
  %266 = load i32, i32* @NN_WS_HANDSHAKE_VALID, align 4
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %265, %263, %248, %236, %224, %212, %184, %81, %71, %62, %25
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strstr(i8*, i32) #1

declare dso_local i32 @nn_ws_match_token(i8*, i8**, i32, i32) #1

declare dso_local i32 @nn_ws_match_value(i8*, i8**, i32, i32, i32**, i32*) #1

declare dso_local i32 @nn_ws_validate_value(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
