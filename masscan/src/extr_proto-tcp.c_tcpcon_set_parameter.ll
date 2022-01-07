; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_set_parameter.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_set_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ProtocolParserStream = type { i8*, i8*, i8* }
%struct.TCP_ConnectionTable = type { i32, i32, %struct.Banner1* }
%struct.Banner1 = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ProtocolParserStream** }

@.str = private unnamed_addr constant [16 x i8] c"http-user-agent\00", align 1
@banner_http = common dso_local global %struct.ProtocolParserStream zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"User-Agent:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"connection-timeout\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"TCP connection-timeout = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"hello-timeout\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"TCP hello-timeout = \22%.*s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"TCP hello-timeout = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"HELLO: setting SSL hello message\0A\00", align 1
@banner_ssl = common dso_local global %struct.ProtocolParserStream zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"HELLO: setting HTTP hello message\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"smbv1\00", align 1
@banner_smb1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"heartbleed\00", align 1
@ssl_hello_heartbeat_template = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"ticketbleed\00", align 1
@ssl_hello_ticketbleed_template = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"poodle\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"sslv3\00", align 1
@ssl_hello_sslv3_template = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"hello-string\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"tcpcon: parmeter: expected array []: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"(allocated)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpcon_set_parameter(%struct.TCP_ConnectionTable* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TCP_ConnectionTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Banner1*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ProtocolParserStream*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %21 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %22 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %21, i32 0, i32 2
  %23 = load %struct.Banner1*, %struct.Banner1** %22, align 8
  store %struct.Banner1* %23, %struct.Banner1** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @name_equals(i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i8*, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_http, i32 0, i32 2), align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i8* @http_change_field(i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_http, i32 0, i32 1), i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %32)
  store i8* %33, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_http, i32 0, i32 2), align 8
  br label %279

34:                                               ; preds = %4
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @name_equals(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @name_equals(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @parseInt(i8* %43, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %49 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %51 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %279

54:                                               ; preds = %38
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @name_equals(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @parseInt(i8* %59, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %65 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %67, i8* %68)
  %70 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %71 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  br label %279

74:                                               ; preds = %54
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @name_equals(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = call i64 @name_equals(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %95, %82
  %85 = load i32, i32* %12, align 4
  %86 = icmp ult i32 %85, 65535
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %89 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %91, i64 %93
  store %struct.ProtocolParserStream* @banner_ssl, %struct.ProtocolParserStream** %94, align 8
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %84

98:                                               ; preds = %84
  br label %279

99:                                               ; preds = %78, %74
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @name_equals(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i8*, i8** %8, align 8
  %105 = call i64 @name_equals(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = call i32 (i32, i8*, ...) @LOG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %120, %107
  %110 = load i32, i32* %13, align 4
  %111 = icmp ult i32 %110, 65535
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %114 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %116, i64 %118
  store %struct.ProtocolParserStream* @banner_http, %struct.ProtocolParserStream** %119, align 8
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %13, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %109

123:                                              ; preds = %109
  br label %279

124:                                              ; preds = %103, %99
  %125 = load i8*, i8** %6, align 8
  %126 = call i64 @name_equals(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i8*, i8** %8, align 8
  %130 = call i64 @name_equals(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @smb_set_hello_v1(i32* @banner_smb1)
  br label %279

134:                                              ; preds = %128, %124
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @name_equals(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %134
  %139 = load i32, i32* @ssl_hello_heartbeat_template, align 4
  %140 = call i8* @ssl_hello(i32 %139)
  store i8* %140, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 1), align 8
  %141 = load i8*, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 1), align 8
  %142 = call i8* @ssl_hello_size(i8* %141)
  store i8* %142, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 2), align 8
  %143 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %144 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %143, i32 0, i32 2
  %145 = load %struct.Banner1*, %struct.Banner1** %144, align 8
  %146 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %158, %138
  %148 = load i32, i32* %14, align 4
  %149 = icmp ult i32 %148, 65535
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %152 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %154, i64 %156
  store %struct.ProtocolParserStream* @banner_ssl, %struct.ProtocolParserStream** %157, align 8
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %14, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %147

161:                                              ; preds = %147
  br label %279

162:                                              ; preds = %134
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @name_equals(i8* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %162
  %167 = load i32, i32* @ssl_hello_ticketbleed_template, align 4
  %168 = call i8* @ssl_hello(i32 %167)
  store i8* %168, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 1), align 8
  %169 = load i8*, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 1), align 8
  %170 = call i8* @ssl_hello_size(i8* %169)
  store i8* %170, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 2), align 8
  %171 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %172 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %171, i32 0, i32 2
  %173 = load %struct.Banner1*, %struct.Banner1** %172, align 8
  %174 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  store i32 0, i32* %15, align 4
  br label %175

175:                                              ; preds = %186, %166
  %176 = load i32, i32* %15, align 4
  %177 = icmp ult i32 %176, 65535
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %180 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %182, i64 %184
  store %struct.ProtocolParserStream* @banner_ssl, %struct.ProtocolParserStream** %185, align 8
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %15, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %175

189:                                              ; preds = %175
  br label %279

190:                                              ; preds = %162
  %191 = load i8*, i8** %6, align 8
  %192 = call i64 @name_equals(i8* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i8*, i8** %6, align 8
  %196 = call i64 @name_equals(i8* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %224

198:                                              ; preds = %194, %190
  %199 = load i32, i32* @ssl_hello_sslv3_template, align 4
  %200 = call i8* @ssl_hello(i32 %199)
  store i8* %200, i8** %17, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = call i8* @ssl_add_cipherspec(i8* %201, i32 22016, i32 1)
  store i8* %202, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 1), align 8
  %203 = load i8*, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 1), align 8
  %204 = call i8* @ssl_hello_size(i8* %203)
  store i8* %204, i8** getelementptr inbounds (%struct.ProtocolParserStream, %struct.ProtocolParserStream* @banner_ssl, i32 0, i32 2), align 8
  %205 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %5, align 8
  %206 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %205, i32 0, i32 2
  %207 = load %struct.Banner1*, %struct.Banner1** %206, align 8
  %208 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %207, i32 0, i32 2
  store i32 1, i32* %208, align 8
  store i32 0, i32* %16, align 4
  br label %209

209:                                              ; preds = %220, %198
  %210 = load i32, i32* %16, align 4
  %211 = icmp ult i32 %210, 65535
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %214 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %216, i64 %218
  store %struct.ProtocolParserStream* @banner_ssl, %struct.ProtocolParserStream** %219, align 8
  br label %220

220:                                              ; preds = %212
  %221 = load i32, i32* %16, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %209

223:                                              ; preds = %209
  br label %279

224:                                              ; preds = %194
  %225 = load i8*, i8** %6, align 8
  %226 = call i64 @name_equals(i8* %225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %279

228:                                              ; preds = %224
  %229 = load i8*, i8** %6, align 8
  %230 = call i8* @strchr(i8* %229, i8 signext 91)
  store i8* %230, i8** %19, align 8
  %231 = load i8*, i8** %19, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i32, i32* @stderr, align 4
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @fprintf(i32 %234, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i8* %235)
  %237 = call i32 @exit(i32 1) #3
  unreachable

238:                                              ; preds = %228
  %239 = load i8*, i8** %19, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = call i64 @strtoul(i8* %240, i32 0, i32 0)
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %20, align 4
  %243 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %244 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %245, align 8
  %247 = load i32, i32* %20, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %246, i64 %248
  %250 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %249, align 8
  store %struct.ProtocolParserStream* %250, %struct.ProtocolParserStream** %18, align 8
  %251 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %18, align 8
  %252 = icmp eq %struct.ProtocolParserStream* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %238
  %254 = call %struct.ProtocolParserStream* @CALLOC(i32 1, i32 24)
  store %struct.ProtocolParserStream* %254, %struct.ProtocolParserStream** %18, align 8
  %255 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %18, align 8
  %256 = getelementptr inbounds %struct.ProtocolParserStream, %struct.ProtocolParserStream* %255, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8** %256, align 8
  br label %257

257:                                              ; preds = %253, %238
  %258 = load i64, i64* %7, align 8
  %259 = call i8* @MALLOC(i64 %258)
  %260 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %18, align 8
  %261 = getelementptr inbounds %struct.ProtocolParserStream, %struct.ProtocolParserStream* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %18, align 8
  %263 = getelementptr inbounds %struct.ProtocolParserStream, %struct.ProtocolParserStream* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = load i64, i64* %7, align 8
  %266 = load i8*, i8** %8, align 8
  %267 = load i64, i64* %7, align 8
  %268 = call i8* @base64_decode(i8* %264, i64 %265, i8* %266, i64 %267)
  %269 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %18, align 8
  %270 = getelementptr inbounds %struct.ProtocolParserStream, %struct.ProtocolParserStream* %269, i32 0, i32 2
  store i8* %268, i8** %270, align 8
  %271 = load %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %18, align 8
  %272 = load %struct.Banner1*, %struct.Banner1** %9, align 8
  %273 = getelementptr inbounds %struct.Banner1, %struct.Banner1* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load %struct.ProtocolParserStream**, %struct.ProtocolParserStream*** %274, align 8
  %276 = load i32, i32* %20, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.ProtocolParserStream*, %struct.ProtocolParserStream** %275, i64 %277
  store %struct.ProtocolParserStream* %271, %struct.ProtocolParserStream** %278, align 8
  br label %279

279:                                              ; preds = %27, %42, %58, %98, %123, %132, %161, %189, %223, %257, %224
  ret void
}

declare dso_local i64 @name_equals(i8*, i8*) #1

declare dso_local i8* @http_change_field(i8**, i32, i8*, i8*, i32) #1

declare dso_local i64 @parseInt(i8*, i64) #1

declare dso_local i32 @LOG(i32, i8*, ...) #1

declare dso_local i32 @smb_set_hello_v1(i32*) #1

declare dso_local i8* @ssl_hello(i32) #1

declare dso_local i8* @ssl_hello_size(i8*) #1

declare dso_local i8* @ssl_add_cipherspec(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strtoul(i8*, i32, i32) #1

declare dso_local %struct.ProtocolParserStream* @CALLOC(i32, i32) #1

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i8* @base64_decode(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
