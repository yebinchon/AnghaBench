; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_http_header_parse.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_http_header_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, i8*, i8*, i32 }

@http_header_parse.hash_origin = internal global i64 0, align 8
@http_header_parse.hash_connection = internal global i64 0, align 8
@http_header_parse.hash_donottrack = internal global i64 0, align 8
@http_header_parse.hash_useragent = internal global i64 0, align 8
@http_header_parse.hash_authorization = internal global i64 0, align 8
@http_header_parse.hash_host = internal global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Origin\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DNT\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"X-Auth-Token\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@NETDATA_WEB_REQUEST_ORIGIN_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@respect_web_browser_do_not_track_policy = common dso_local global i64 0, align 8
@web_enable_gzip = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.web_client*, i8*, i32)* @http_header_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_header_parse(%struct.web_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.web_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.web_client* %0, %struct.web_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @http_header_parse.hash_origin, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = call i64 @simple_uhash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* @http_header_parse.hash_origin, align 8
  %20 = call i64 @simple_uhash(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %20, i64* @http_header_parse.hash_connection, align 8
  %21 = call i64 @simple_uhash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i64 %21, i64* @http_header_parse.hash_donottrack, align 8
  %22 = call i64 @simple_uhash(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i64 %22, i64* @http_header_parse.hash_useragent, align 8
  %23 = call i64 @simple_uhash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i64 %23, i64* @http_header_parse.hash_authorization, align 8
  %24 = call i64 @simple_uhash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i64 %24, i64* @http_header_parse.hash_host, align 8
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %27

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %4, align 8
  br label %220

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %57, %48
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  br label %52

60:                                               ; preds = %52
  %61 = load i8*, i8** %9, align 8
  store i8* %61, i8** %10, align 8
  br label %62

62:                                               ; preds = %74, %60
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 13
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  br label %62

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 10
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %77
  %88 = load i8*, i8** %8, align 8
  store i8 58, i8* %88, align 1
  %89 = load i8*, i8** %10, align 8
  store i8* %89, i8** %4, align 8
  br label %220

90:                                               ; preds = %81
  %91 = load i8*, i8** %10, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @simple_uhash(i8* %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @http_header_parse.hash_origin, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load %struct.web_client*, %struct.web_client** %5, align 8
  %103 = getelementptr inbounds %struct.web_client, %struct.web_client* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* @NETDATA_WEB_REQUEST_ORIGIN_HEADER_SIZE, align 8
  %107 = call i32 @strncpyz(i32 %104, i8* %105, i64 %106)
  br label %216

108:                                              ; preds = %97, %90
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @http_header_parse.hash_connection, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strcasecmp(i8* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %9, align 8
  %118 = call i64 @strcasestr(i8* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.web_client*, %struct.web_client** %5, align 8
  %122 = call i32 @web_client_enable_keepalive(%struct.web_client* %121)
  br label %123

123:                                              ; preds = %120, %116
  br label %215

124:                                              ; preds = %112, %108
  %125 = load i64, i64* @respect_web_browser_do_not_track_policy, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @http_header_parse.hash_donottrack, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @strcasecmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 48
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.web_client*, %struct.web_client** %5, align 8
  %142 = call i32 @web_client_disable_donottrack(%struct.web_client* %141)
  br label %152

143:                                              ; preds = %135
  %144 = load i8*, i8** %9, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 49
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.web_client*, %struct.web_client** %5, align 8
  %150 = call i32 @web_client_enable_donottrack(%struct.web_client* %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %140
  br label %214

153:                                              ; preds = %131, %127, %124
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @http_header_parse.hash_useragent, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 @strcasecmp(i8* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %9, align 8
  %166 = call i8* @strdupz(i8* %165)
  %167 = load %struct.web_client*, %struct.web_client** %5, align 8
  %168 = getelementptr inbounds %struct.web_client, %struct.web_client* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %213

169:                                              ; preds = %160, %156, %153
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @http_header_parse.hash_authorization, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 @strcasecmp(i8* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = load i8*, i8** %9, align 8
  %179 = call i8* @strdupz(i8* %178)
  %180 = load %struct.web_client*, %struct.web_client** %5, align 8
  %181 = getelementptr inbounds %struct.web_client, %struct.web_client* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %212

182:                                              ; preds = %173, %169
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* @http_header_parse.hash_host, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = load i8*, i8** %6, align 8
  %188 = call i32 @strcasecmp(i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %186
  %191 = load %struct.web_client*, %struct.web_client** %5, align 8
  %192 = getelementptr inbounds %struct.web_client, %struct.web_client* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = icmp ult i64 %199, 3
  br i1 %200, label %201, label %207

201:                                              ; preds = %190
  %202 = load i8*, i8** %10, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = ptrtoint i8* %202 to i64
  %205 = ptrtoint i8* %203 to i64
  %206 = sub i64 %204, %205
  br label %208

207:                                              ; preds = %190
  br label %208

208:                                              ; preds = %207, %201
  %209 = phi i64 [ %206, %201 ], [ 3, %207 ]
  %210 = call i32 @strncpyz(i32 %193, i8* %194, i64 %209)
  br label %211

211:                                              ; preds = %208, %186, %182
  br label %212

212:                                              ; preds = %211, %177
  br label %213

213:                                              ; preds = %212, %164
  br label %214

214:                                              ; preds = %213, %152
  br label %215

215:                                              ; preds = %214, %123
  br label %216

216:                                              ; preds = %215, %101
  %217 = load i8*, i8** %8, align 8
  store i8 58, i8* %217, align 1
  %218 = load i8*, i8** %10, align 8
  store i8 13, i8* %218, align 1
  %219 = load i8*, i8** %10, align 8
  store i8* %219, i8** %4, align 8
  br label %220

220:                                              ; preds = %216, %87, %46
  %221 = load i8*, i8** %4, align 8
  ret i8* %221
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @simple_uhash(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strncpyz(i32, i8*, i64) #1

declare dso_local i64 @strcasestr(i8*, i8*) #1

declare dso_local i32 @web_client_enable_keepalive(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_donottrack(%struct.web_client*) #1

declare dso_local i32 @web_client_enable_donottrack(%struct.web_client*) #1

declare dso_local i8* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
