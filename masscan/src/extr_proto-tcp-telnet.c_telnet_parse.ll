; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-telnet.c_telnet_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-telnet.c_telnet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@telnet_parse.foobar = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DONT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WILL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WONT\00", align 1
@PROTO_TELNET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"\\n \00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" IAC(AYT)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" IAC(NOP)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" IAC(MRK)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" IAC(INT)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" IAC(ABRT)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" IAC(EC)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" IAC(EL)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" IAC(GA)\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"SB\00", align 1
@FLAG_WONT = common dso_local global i8 0, align 1
@FLAG_DONT = common dso_local global i8 0, align 1
@FLAG_WILL = common dso_local global i8 0, align 1
@FLAG_DO = common dso_local global i8 0, align 1
@r_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @telnet_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @telnet_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca [16 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca [16 x i8], align 16
  %23 = alloca [3072 x i8], align 16
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %27 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %28 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = bitcast [256 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 256, i1 false)
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @UNUSEDPARM(i8* %31)
  %33 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %34 = bitcast %struct.Banner1* %33 to i8*
  %35 = call i32 @UNUSEDPARM(i8* %34)
  %36 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %37 = bitcast %struct.InteractiveData* %36 to i8*
  %38 = call i32 @UNUSEDPARM(i8* %37)
  store i64 0, i64* %16, align 8
  br label %39

39:                                               ; preds = %239, %7
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %242

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %16, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %15, align 4
  switch i32 %49, label %234 [
    i32 0, label %50
    i32 1, label %75
    i32 7, label %131
    i32 6, label %137
    i32 2, label %172
    i32 3, label %172
    i32 4, label %172
    i32 5, label %172
  ]

50:                                               ; preds = %43
  %51 = load i32, i32* %18, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %15, align 4
  br label %74

54:                                               ; preds = %50
  %55 = load i32, i32* %18, align 4
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %239

58:                                               ; preds = %54
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %63 = load i32, i32* @PROTO_TELNET, align 4
  %64 = load i32, i32* @AUTO_LEN, align 4
  %65 = call i32 @banout_append(%struct.BannerOutput* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %72

66:                                               ; preds = %58
  %67 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %68 = load i32, i32* @PROTO_TELNET, align 4
  %69 = load i32, i32* %18, align 4
  %70 = trunc i32 %69 to i8
  %71 = call i32 @banout_append_char(%struct.BannerOutput* %67, i32 %68, i8 signext %70)
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %53
  br label %238

75:                                               ; preds = %43
  %76 = load i32, i32* %18, align 4
  switch i32 %76, label %128 [
    i32 240, label %77
    i32 246, label %78
    i32 241, label %83
    i32 242, label %88
    i32 243, label %93
    i32 244, label %98
    i32 245, label %103
    i32 247, label %108
    i32 248, label %113
    i32 249, label %118
    i32 250, label %123
    i32 251, label %124
    i32 252, label %125
    i32 253, label %126
    i32 254, label %127
    i32 255, label %129
  ]

77:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %130

78:                                               ; preds = %75
  %79 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %80 = load i32, i32* @PROTO_TELNET, align 4
  %81 = load i32, i32* @AUTO_LEN, align 4
  %82 = call i32 @banout_append(%struct.BannerOutput* %79, i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 0, i32* %15, align 4
  br label %130

83:                                               ; preds = %75
  %84 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %85 = load i32, i32* @PROTO_TELNET, align 4
  %86 = load i32, i32* @AUTO_LEN, align 4
  %87 = call i32 @banout_append(%struct.BannerOutput* %84, i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 0, i32* %15, align 4
  br label %130

88:                                               ; preds = %75
  %89 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %90 = load i32, i32* @PROTO_TELNET, align 4
  %91 = load i32, i32* @AUTO_LEN, align 4
  %92 = call i32 @banout_append(%struct.BannerOutput* %89, i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  store i32 0, i32* %15, align 4
  br label %130

93:                                               ; preds = %75
  %94 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %95 = load i32, i32* @PROTO_TELNET, align 4
  %96 = load i32, i32* @AUTO_LEN, align 4
  %97 = call i32 @banout_append(%struct.BannerOutput* %94, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  store i32 0, i32* %15, align 4
  br label %130

98:                                               ; preds = %75
  %99 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %100 = load i32, i32* @PROTO_TELNET, align 4
  %101 = load i32, i32* @AUTO_LEN, align 4
  %102 = call i32 @banout_append(%struct.BannerOutput* %99, i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  store i32 0, i32* %15, align 4
  br label %130

103:                                              ; preds = %75
  %104 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %105 = load i32, i32* @PROTO_TELNET, align 4
  %106 = load i32, i32* @AUTO_LEN, align 4
  %107 = call i32 @banout_append(%struct.BannerOutput* %104, i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  store i32 0, i32* %15, align 4
  br label %130

108:                                              ; preds = %75
  %109 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %110 = load i32, i32* @PROTO_TELNET, align 4
  %111 = load i32, i32* @AUTO_LEN, align 4
  %112 = call i32 @banout_append(%struct.BannerOutput* %109, i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  store i32 0, i32* %15, align 4
  br label %130

113:                                              ; preds = %75
  %114 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %115 = load i32, i32* @PROTO_TELNET, align 4
  %116 = load i32, i32* @AUTO_LEN, align 4
  %117 = call i32 @banout_append(%struct.BannerOutput* %114, i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  store i32 0, i32* %15, align 4
  br label %130

118:                                              ; preds = %75
  %119 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %120 = load i32, i32* @PROTO_TELNET, align 4
  %121 = load i32, i32* @AUTO_LEN, align 4
  %122 = call i32 @banout_append(%struct.BannerOutput* %119, i32 %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  store i32 0, i32* %15, align 4
  br label %130

123:                                              ; preds = %75
  store i32 6, i32* %15, align 4
  br label %130

124:                                              ; preds = %75
  store i32 4, i32* %15, align 4
  br label %130

125:                                              ; preds = %75
  store i32 5, i32* %15, align 4
  br label %130

126:                                              ; preds = %75
  store i32 2, i32* %15, align 4
  br label %130

127:                                              ; preds = %75
  store i32 3, i32* %15, align 4
  br label %130

128:                                              ; preds = %75
  br label %129

129:                                              ; preds = %75, %128
  store i32 8, i32* %15, align 4
  br label %130

130:                                              ; preds = %129, %127, %126, %125, %124, %123, %118, %113, %108, %103, %98, %93, %88, %83, %78, %77
  br label %238

131:                                              ; preds = %43
  %132 = load i32, i32* %18, align 4
  %133 = icmp eq i32 %132, 255
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 1, i32* %15, align 4
  br label %136

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135, %134
  br label %238

137:                                              ; preds = %43
  %138 = load i32, i32* %18, align 4
  %139 = call i8* @option_name_lookup(i32 %138)
  store i8* %139, i8** %19, align 8
  %140 = load i8*, i8** %19, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @sprintf_s(i8* %143, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %144)
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  store i8* %146, i8** %19, align 8
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i8*, i8** %19, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %154 = load i32, i32* @PROTO_TELNET, align 4
  %155 = call i32 @banout_append_char(%struct.BannerOutput* %153, i32 %154, i8 signext 32)
  %156 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %157 = load i32, i32* @PROTO_TELNET, align 4
  %158 = load i32, i32* @AUTO_LEN, align 4
  %159 = call i32 @banout_append(%struct.BannerOutput* %156, i32 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %158)
  %160 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %161 = load i32, i32* @PROTO_TELNET, align 4
  %162 = call i32 @banout_append_char(%struct.BannerOutput* %160, i32 %161, i8 signext 40)
  %163 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %164 = load i32, i32* @PROTO_TELNET, align 4
  %165 = load i8*, i8** %19, align 8
  %166 = load i32, i32* @AUTO_LEN, align 4
  %167 = call i32 @banout_append(%struct.BannerOutput* %163, i32 %164, i8* %165, i32 %166)
  %168 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %169 = load i32, i32* @PROTO_TELNET, align 4
  %170 = call i32 @banout_append_char(%struct.BannerOutput* %168, i32 %169, i8 signext 41)
  br label %171

171:                                              ; preds = %152, %147
  store i32 7, i32* %15, align 4
  br label %238

172:                                              ; preds = %43, %43, %43, %43
  %173 = load i32, i32* %15, align 4
  switch i32 %173, label %194 [
    i32 2, label %174
    i32 3, label %179
    i32 4, label %184
    i32 5, label %189
  ]

174:                                              ; preds = %172
  %175 = load i8, i8* @FLAG_WONT, align 1
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %177
  store i8 %175, i8* %178, align 1
  br label %194

179:                                              ; preds = %172
  %180 = load i8, i8* @FLAG_WONT, align 1
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %182
  store i8 %180, i8* %183, align 1
  br label %194

184:                                              ; preds = %172
  %185 = load i8, i8* @FLAG_DONT, align 1
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %187
  store i8 %185, i8* %188, align 1
  br label %194

189:                                              ; preds = %172
  %190 = load i8, i8* @FLAG_DONT, align 1
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %192
  store i8 %190, i8* %193, align 1
  br label %194

194:                                              ; preds = %172, %189, %184, %179, %174
  %195 = load i32, i32* %18, align 4
  %196 = call i8* @option_name_lookup(i32 %195)
  store i8* %196, i8** %21, align 8
  %197 = load i8*, i8** %21, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @sprintf_s(i8* %200, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %201)
  %203 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  store i8* %203, i8** %21, align 8
  br label %204

204:                                              ; preds = %199, %194
  %205 = load i8*, i8** %21, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = icmp ne i8 %207, 0
  br i1 %208, label %209, label %233

209:                                              ; preds = %204
  %210 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %211 = load i32, i32* @PROTO_TELNET, align 4
  %212 = call i32 @banout_append_char(%struct.BannerOutput* %210, i32 %211, i8 signext 32)
  %213 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %214 = load i32, i32* @PROTO_TELNET, align 4
  %215 = load i32, i32* %15, align 4
  %216 = sub i32 %215, 2
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i8*], [4 x i8*]* @telnet_parse.foobar, i64 0, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* @AUTO_LEN, align 4
  %221 = call i32 @banout_append(%struct.BannerOutput* %213, i32 %214, i8* %219, i32 %220)
  %222 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %223 = load i32, i32* @PROTO_TELNET, align 4
  %224 = call i32 @banout_append_char(%struct.BannerOutput* %222, i32 %223, i8 signext 40)
  %225 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %226 = load i32, i32* @PROTO_TELNET, align 4
  %227 = load i8*, i8** %21, align 8
  %228 = load i32, i32* @AUTO_LEN, align 4
  %229 = call i32 @banout_append(%struct.BannerOutput* %225, i32 %226, i8* %227, i32 %228)
  %230 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %231 = load i32, i32* @PROTO_TELNET, align 4
  %232 = call i32 @banout_append_char(%struct.BannerOutput* %230, i32 %231, i8 signext 41)
  br label %233

233:                                              ; preds = %209, %204
  store i32 0, i32* %15, align 4
  br label %238

234:                                              ; preds = %43
  %235 = load i64, i64* %12, align 8
  %236 = trunc i64 %235 to i32
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %16, align 8
  br label %238

238:                                              ; preds = %234, %233, %171, %136, %130, %74
  br label %239

239:                                              ; preds = %238, %57
  %240 = load i64, i64* %16, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %16, align 8
  br label %39

242:                                              ; preds = %39
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  br label %243

243:                                              ; preds = %337, %242
  %244 = load i64, i64* %25, align 8
  %245 = icmp ult i64 %244, 256
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load i64, i64* %24, align 8
  %248 = add i64 %247, 3
  %249 = icmp ult i64 %248, 3072
  br label %250

250:                                              ; preds = %246, %243
  %251 = phi i1 [ false, %243 ], [ %249, %246 ]
  br i1 %251, label %252, label %340

252:                                              ; preds = %250
  %253 = load i64, i64* %25, align 8
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i8, i8* @FLAG_WILL, align 1
  %258 = zext i8 %257 to i32
  %259 = and i32 %256, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %252
  %262 = load i64, i64* %24, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %24, align 8
  %264 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %262
  store i8 -1, i8* %264, align 1
  %265 = load i64, i64* %24, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %24, align 8
  %267 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %265
  store i8 -5, i8* %267, align 1
  %268 = load i64, i64* %25, align 8
  %269 = trunc i64 %268 to i8
  %270 = load i64, i64* %24, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %24, align 8
  %272 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %270
  store i8 %269, i8* %272, align 1
  br label %273

273:                                              ; preds = %261, %252
  %274 = load i64, i64* %25, align 8
  %275 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = load i8, i8* @FLAG_WONT, align 1
  %279 = zext i8 %278 to i32
  %280 = and i32 %277, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %273
  %283 = load i64, i64* %24, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %24, align 8
  %285 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %283
  store i8 -1, i8* %285, align 1
  %286 = load i64, i64* %24, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %24, align 8
  %288 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %286
  store i8 -4, i8* %288, align 1
  %289 = load i64, i64* %25, align 8
  %290 = trunc i64 %289 to i8
  %291 = load i64, i64* %24, align 8
  %292 = add i64 %291, 1
  store i64 %292, i64* %24, align 8
  %293 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %291
  store i8 %290, i8* %293, align 1
  br label %294

294:                                              ; preds = %282, %273
  %295 = load i64, i64* %25, align 8
  %296 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = load i8, i8* @FLAG_DO, align 1
  %300 = zext i8 %299 to i32
  %301 = and i32 %298, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %294
  %304 = load i64, i64* %24, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %24, align 8
  %306 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %304
  store i8 -1, i8* %306, align 1
  %307 = load i64, i64* %24, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %24, align 8
  %309 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %307
  store i8 -3, i8* %309, align 1
  %310 = load i64, i64* %25, align 8
  %311 = trunc i64 %310 to i8
  %312 = load i64, i64* %24, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %24, align 8
  %314 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %312
  store i8 %311, i8* %314, align 1
  br label %315

315:                                              ; preds = %303, %294
  %316 = load i64, i64* %25, align 8
  %317 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = load i8, i8* @FLAG_DONT, align 1
  %321 = zext i8 %320 to i32
  %322 = and i32 %319, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %315
  %325 = load i64, i64* %24, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %24, align 8
  %327 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %325
  store i8 -1, i8* %327, align 1
  %328 = load i64, i64* %24, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %24, align 8
  %330 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %328
  store i8 -2, i8* %330, align 1
  %331 = load i64, i64* %25, align 8
  %332 = trunc i64 %331 to i8
  %333 = load i64, i64* %24, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* %24, align 8
  %335 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 %333
  store i8 %332, i8* %335, align 1
  br label %336

336:                                              ; preds = %324, %315
  br label %337

337:                                              ; preds = %336
  %338 = load i64, i64* %25, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %25, align 8
  br label %243

340:                                              ; preds = %250
  %341 = load i64, i64* %24, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %355

343:                                              ; preds = %340
  %344 = load i64, i64* %24, align 8
  %345 = call i8* @MALLOC(i64 %344)
  store i8* %345, i8** %26, align 8
  %346 = load i8*, i8** %26, align 8
  %347 = getelementptr inbounds [3072 x i8], [3072 x i8]* %23, i64 0, i64 0
  %348 = load i64, i64* %24, align 8
  %349 = call i32 @memcpy(i8* %346, i8* %347, i64 %348)
  %350 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %351 = bitcast %struct.InteractiveData* %350 to i8*
  %352 = load i8*, i8** %26, align 8
  %353 = load i64, i64* %24, align 8
  %354 = call i32 @tcp_transmit(i8* %351, i8* %352, i64 %353, i32 1)
  br label %355

355:                                              ; preds = %343, %340
  %356 = load i32, i32* %15, align 4
  %357 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %358 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @UNUSEDPARM(i8*) #2

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #2

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 signext) #2

declare dso_local i8* @option_name_lookup(i32) #2

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32) #2

declare dso_local i8* @MALLOC(i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @tcp_transmit(i8*, i8*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
