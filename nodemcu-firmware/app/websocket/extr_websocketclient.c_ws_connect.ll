; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_connect.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.espconn*, i64, i64, i64, i32*, i64, i32*, i64, i32*, i8*, i8*, i32 (%struct.TYPE_10__*, i32)* }
%struct.espconn = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ws_connect called\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ws_connect ws_info argument is null!\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"url is null!\00", align 1
@PROTOCOL_SECURE = common dso_local global i8* null, align 8
@PROTOCOL_INSECURE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to extract protocol from: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Hostname too large\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PORT_MAX_VALUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Invalid port number\0A\00", align 1
@PORT_SECURE = common dso_local global i32 0, align 4
@PORT_INSECURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to extract hostname\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"secure protocol = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"hostname = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"port = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"path = %s\0A\00", align 1
@ESPCONN_TCP = common dso_local global i32 0, align 4
@ESPCONN_NONE = common dso_local global i32 0, align 4
@ESPCONN_INPROGRESS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"DNS pending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ws_connect(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.espconn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %261

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %261

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** @PROTOCOL_SECURE, align 8
  %26 = load i8*, i8** @PROTOCOL_SECURE, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = call i64 @strncasecmp(i8* %24, i8* %25, i64 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i8*, i8** @PROTOCOL_SECURE, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %4, align 8
  br label %64

38:                                               ; preds = %23
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** @PROTOCOL_INSECURE, align 8
  %41 = load i8*, i8** @PROTOCOL_INSECURE, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = call i64 @strncasecmp(i8* %39, i8* %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 14
  %50 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_10__*, i32)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 14
  %55 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = call i32 %55(%struct.TYPE_10__* %56, i32 -1)
  br label %58

58:                                               ; preds = %52, %45
  br label %261

59:                                               ; preds = %38
  %60 = load i8*, i8** @PROTOCOL_INSECURE, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8* %63, i8** %4, align 8
  br label %64

64:                                               ; preds = %59, %33
  %65 = load i8*, i8** %4, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 47)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = icmp uge i64 %74, 256
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 14
  %80 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_10__*, i32)* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 14
  %85 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = call i32 %85(%struct.TYPE_10__* %86, i32 -2)
  br label %88

88:                                               ; preds = %82, %76
  br label %261

89:                                               ; preds = %69
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %91 = load i8*, i8** %4, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = call i32 @memcpy(i8* %90, i8* %91, i64 %96)
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  br label %113

104:                                              ; preds = %64
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = call i32 @memcpy(i8* %105, i8* %106, i64 %108)
  %110 = load i8*, i8** %4, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %111
  store i8 0, i8* %112, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %113

113:                                              ; preds = %104, %89
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %115 = call i8* @strchr(i8* %114, i8 signext 58)
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %148

118:                                              ; preds = %113
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = call i32 @atoi(i8* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @PORT_MAX_VALUE, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124, %118
  %129 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 14
  %132 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %131, align 8
  %133 = icmp ne i32 (%struct.TYPE_10__*, i32)* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 14
  %137 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = call i32 %137(%struct.TYPE_10__* %138, i32 -3)
  br label %140

140:                                              ; preds = %134, %128
  br label %261

141:                                              ; preds = %124
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %143 = call i64 @strlen(i8* %142)
  %144 = load i8*, i8** %8, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = sub nsw i64 %143, %145
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %146
  store i8 0, i8* %147, align 1
  br label %157

148:                                              ; preds = %113
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* @PORT_SECURE, align 4
  br label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @PORT_INSECURE, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %155, %141
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %159 = call i64 @strlen(i8* %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 14
  %165 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %164, align 8
  %166 = icmp ne i32 (%struct.TYPE_10__*, i32)* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 14
  %170 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %172 = call i32 %170(%struct.TYPE_10__* %171, i32 -4)
  br label %173

173:                                              ; preds = %167, %161
  br label %261

174:                                              ; preds = %157
  %175 = load i32, i32* %5, align 4
  %176 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %178 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %177)
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %181)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %189 = call i8* @strdup(i8* %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 13
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i8*, i8** %6, align 8
  %196 = call i8* @strdup(i8* %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 12
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 11
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 10
  store i64 0, i64* %202, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 9
  store i32* null, i32** %204, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 8
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 7
  store i32* null, i32** %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 6
  store i64 0, i64* %210, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 5
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 4
  store i64 0, i64* %214, align 8
  %215 = call i64 @calloc(i32 1, i32 24)
  %216 = inttoptr i64 %215 to %struct.espconn*
  store %struct.espconn* %216, %struct.espconn** %10, align 8
  %217 = load i32, i32* @ESPCONN_TCP, align 4
  %218 = load %struct.espconn*, %struct.espconn** %10, align 8
  %219 = getelementptr inbounds %struct.espconn, %struct.espconn* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @ESPCONN_NONE, align 4
  %221 = load %struct.espconn*, %struct.espconn** %10, align 8
  %222 = getelementptr inbounds %struct.espconn, %struct.espconn* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = call i64 @calloc(i32 1, i32 8)
  %224 = inttoptr i64 %223 to %struct.TYPE_11__*
  %225 = load %struct.espconn*, %struct.espconn** %10, align 8
  %226 = getelementptr inbounds %struct.espconn, %struct.espconn* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  store %struct.TYPE_11__* %224, %struct.TYPE_11__** %227, align 8
  %228 = call i32 (...) @espconn_port()
  %229 = load %struct.espconn*, %struct.espconn** %10, align 8
  %230 = getelementptr inbounds %struct.espconn, %struct.espconn* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  store i32 %228, i32* %233, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.espconn*, %struct.espconn** %10, align 8
  %238 = getelementptr inbounds %struct.espconn, %struct.espconn* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  store i32 %236, i32* %241, align 4
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %243 = load %struct.espconn*, %struct.espconn** %10, align 8
  %244 = getelementptr inbounds %struct.espconn, %struct.espconn* %243, i32 0, i32 0
  store %struct.TYPE_10__* %242, %struct.TYPE_10__** %244, align 8
  %245 = load %struct.espconn*, %struct.espconn** %10, align 8
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  store %struct.espconn* %245, %struct.espconn** %247, align 8
  %248 = load %struct.espconn*, %struct.espconn** %10, align 8
  %249 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %250 = call i64 @espconn_gethostbyname(%struct.espconn* %248, i8* %249, i32* %11, i32 (i8*, i32*, %struct.espconn*)* @dns_callback)
  store i64 %250, i64* %12, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load i64, i64* @ESPCONN_INPROGRESS, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %174
  %255 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %260

256:                                              ; preds = %174
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %258 = load %struct.espconn*, %struct.espconn** %10, align 8
  %259 = call i32 @dns_callback(i8* %257, i32* %11, %struct.espconn* %258)
  br label %260

260:                                              ; preds = %256, %254
  br label %261

261:                                              ; preds = %260, %173, %140, %88, %58, %21, %16
  ret void
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @espconn_port(...) #1

declare dso_local i64 @espconn_gethostbyname(%struct.espconn*, i8*, i32*, i32 (i8*, i32*, %struct.espconn*)*) #1

declare dso_local i32 @dns_callback(i8*, i32*, %struct.espconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
