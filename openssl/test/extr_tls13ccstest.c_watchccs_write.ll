; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_tls13ccstest.c_watchccs_write.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_tls13ccstest.c_watchccs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL3_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@chseen = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@chsessidlen = common dso_local global i64 0, align 8
@chsessid = common dso_local global i32 0, align 4
@badsessid = common dso_local global i32 0, align 4
@SSL3_MT_SERVER_HELLO = common dso_local global i32 0, align 4
@shseen = common dso_local global i32 0, align 4
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@s_to_c_fbio = common dso_local global i32* null, align 8
@sappdataseen = common dso_local global i32 0, align 4
@sccsseen = common dso_local global i32 0, align 4
@badccs = common dso_local global i32 0, align 4
@cappdataseen = common dso_local global i32 0, align 4
@ccsaftersh = common dso_local global i32 0, align 4
@ccsbeforesh = common dso_local global i32 0, align 4
@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4
@badvers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @watchccs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchccs_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @BIO_next(i32* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %213

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %213

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @BIO_clear_retry_flags(i32* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PACKET_buf_init(i32* %10, i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %213

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %196, %35
  %37 = call i64 @PACKET_remaining(i32* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %197

39:                                               ; preds = %36
  %40 = call i32 @PACKET_get_1(i32* %10, i32* %14)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 @PACKET_get_net_2(i32* %10, i32* %15)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @PACKET_get_length_prefixed_2(i32* %10, i32* %11)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %42, %39
  store i32 0, i32* %4, align 4
  br label %213

49:                                               ; preds = %45
  %50 = load i32, i32* @TLS1_2_VERSION, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %132

54:                                               ; preds = %49
  %55 = call i32 @PACKET_get_1(i32* %11, i32* %16)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @PACKET_get_length_prefixed_3(i32* %11, i32* %12)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %54
  store i32 0, i32* %4, align 4
  br label %213

61:                                               ; preds = %57
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @SSL3_MT_CLIENT_HELLO, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %102

65:                                               ; preds = %61
  %66 = load i32, i32* @chseen, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @chseen, align 4
  %68 = call i32 @PACKET_forward(i32* %12, i32 34)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = call i32 @PACKET_get_length_prefixed_1(i32* %12, i32* %13)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %65
  store i32 0, i32* %4, align 4
  br label %213

74:                                               ; preds = %70
  %75 = load i32, i32* @chseen, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @TLS1_VERSION, align 4
  store i32 %78, i32* %17, align 4
  %79 = call i64 @PACKET_remaining(i32* %13)
  store i64 %79, i64* @chsessidlen, align 8
  %80 = load i32, i32* @chsessid, align 4
  %81 = load i64, i64* @chsessidlen, align 8
  %82 = call i32 @PACKET_copy_bytes(i32* %13, i32 %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %213

85:                                               ; preds = %77
  br label %101

86:                                               ; preds = %74
  %87 = call i64 @PACKET_remaining(i32* %13)
  %88 = load i64, i64* @chsessidlen, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* @chsessidlen, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* @chsessid, align 4
  %95 = call i32 @PACKET_data(i32* %13)
  %96 = load i64, i64* @chsessidlen, align 8
  %97 = call i64 @memcmp(i32 %94, i32 %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %86
  store i32 1, i32* @badsessid, align 4
  br label %100

100:                                              ; preds = %99, %93, %90
  br label %101

101:                                              ; preds = %100, %85
  br label %131

102:                                              ; preds = %61
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load i32, i32* @shseen, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @shseen, align 4
  %109 = call i32 @PACKET_forward(i32* %12, i32 34)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = call i32 @PACKET_get_length_prefixed_1(i32* %12, i32* %13)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %106
  store i32 0, i32* %4, align 4
  br label %213

115:                                              ; preds = %111
  %116 = call i64 @PACKET_remaining(i32* %13)
  %117 = load i64, i64* @chsessidlen, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* @chsessidlen, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* @chsessid, align 4
  %124 = call i32 @PACKET_data(i32* %13)
  %125 = load i64, i64* @chsessidlen, align 8
  %126 = call i64 @memcmp(i32 %123, i32 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122, %115
  store i32 1, i32* @badsessid, align 4
  br label %129

129:                                              ; preds = %128, %122, %119
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %101
  br label %191

132:                                              ; preds = %49
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %178

136:                                              ; preds = %132
  %137 = load i32*, i32** %5, align 8
  %138 = load i32*, i32** @s_to_c_fbio, align 8
  %139 = icmp eq i32* %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load i32, i32* @sappdataseen, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @chseen, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32, i32* @shseen, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* @sccsseen, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  store i32 1, i32* @sccsseen, align 4
  br label %154

153:                                              ; preds = %149, %146, %143, %140
  store i32 1, i32* @badccs, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %177

155:                                              ; preds = %136
  %156 = load i32, i32* @cappdataseen, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @shseen, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* @ccsaftersh, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  store i32 1, i32* @ccsaftersh, align 4
  br label %174

165:                                              ; preds = %161, %158
  %166 = load i32, i32* @shseen, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* @ccsbeforesh, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  store i32 1, i32* @ccsbeforesh, align 4
  br label %173

172:                                              ; preds = %168, %165
  store i32 1, i32* @badccs, align 4
  br label %173

173:                                              ; preds = %172, %171
  br label %174

174:                                              ; preds = %173, %164
  br label %176

175:                                              ; preds = %155
  store i32 1, i32* @badccs, align 4
  br label %176

176:                                              ; preds = %175, %174
  br label %177

177:                                              ; preds = %176, %154
  br label %190

178:                                              ; preds = %132
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i32*, i32** %5, align 8
  %184 = load i32*, i32** @s_to_c_fbio, align 8
  %185 = icmp eq i32* %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 1, i32* @sappdataseen, align 4
  br label %188

187:                                              ; preds = %182
  store i32 1, i32* @cappdataseen, align 4
  br label %188

188:                                              ; preds = %187, %186
  br label %189

189:                                              ; preds = %188, %178
  br label %190

190:                                              ; preds = %189, %177
  br label %191

191:                                              ; preds = %190, %131
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 1, i32* @badvers, align 4
  br label %196

196:                                              ; preds = %195, %191
  br label %36

197:                                              ; preds = %36
  %198 = load i32*, i32** %9, align 8
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @BIO_write(i32* %198, i8* %199, i32 %200)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load i32*, i32** %9, align 8
  %206 = call i64 @BIO_should_write(i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @BIO_set_retry_write(i32* %209)
  br label %211

211:                                              ; preds = %208, %204, %197
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %114, %84, %73, %60, %48, %34, %26, %22
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_3(i32*, i32*) #1

declare dso_local i32 @PACKET_forward(i32*, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32, i64) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_should_write(i32*) #1

declare dso_local i32 @BIO_set_retry_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
