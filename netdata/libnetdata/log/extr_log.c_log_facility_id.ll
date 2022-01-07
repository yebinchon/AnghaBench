; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_log_facility_id.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/log/extr_log.c_log_facility_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_facility_id.hash_auth = internal global i32 0, align 4
@log_facility_id.hash_authpriv = internal global i32 0, align 4
@log_facility_id.hash_cron = internal global i32 0, align 4
@log_facility_id.hash_daemon = internal global i32 0, align 4
@log_facility_id.hash_ftp = internal global i32 0, align 4
@log_facility_id.hash_kern = internal global i32 0, align 4
@log_facility_id.hash_lpr = internal global i32 0, align 4
@log_facility_id.hash_mail = internal global i32 0, align 4
@log_facility_id.hash_news = internal global i32 0, align 4
@log_facility_id.hash_security = internal global i32 0, align 4
@log_facility_id.hash_syslog = internal global i32 0, align 4
@log_facility_id.hash_user = internal global i32 0, align 4
@log_facility_id.hash_uucp = internal global i32 0, align 4
@log_facility_id.hash_local0 = internal global i32 0, align 4
@log_facility_id.hash_local1 = internal global i32 0, align 4
@log_facility_id.hash_local2 = internal global i32 0, align 4
@log_facility_id.hash_local3 = internal global i32 0, align 4
@log_facility_id.hash_local4 = internal global i32 0, align 4
@log_facility_id.hash_local5 = internal global i32 0, align 4
@log_facility_id.hash_local6 = internal global i32 0, align 4
@log_facility_id.hash_local7 = internal global i32 0, align 4
@LOG_AUTH_KEY = common dso_local global i8* null, align 8
@LOG_AUTHPRIV_KEY = common dso_local global i8* null, align 8
@LOG_CRON_KEY = common dso_local global i8* null, align 8
@LOG_DAEMON_KEY = common dso_local global i8* null, align 8
@LOG_FTP_KEY = common dso_local global i8* null, align 8
@LOG_KERN_KEY = common dso_local global i8* null, align 8
@LOG_LPR_KEY = common dso_local global i8* null, align 8
@LOG_MAIL_KEY = common dso_local global i8* null, align 8
@LOG_NEWS_KEY = common dso_local global i8* null, align 8
@LOG_SECURITY_KEY = common dso_local global i8* null, align 8
@LOG_SYSLOG_KEY = common dso_local global i8* null, align 8
@LOG_USER_KEY = common dso_local global i8* null, align 8
@LOG_UUCP_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL0_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL1_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL2_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL3_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL4_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL5_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL6_KEY = common dso_local global i8* null, align 8
@LOG_LOCAL7_KEY = common dso_local global i8* null, align 8
@LOG_AUTH = common dso_local global i32 0, align 4
@LOG_AUTHPRIV = common dso_local global i32 0, align 4
@LOG_CRON = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_FTP = common dso_local global i32 0, align 4
@LOG_KERN = common dso_local global i32 0, align 4
@LOG_LPR = common dso_local global i32 0, align 4
@LOG_MAIL = common dso_local global i32 0, align 4
@LOG_NEWS = common dso_local global i32 0, align 4
@LOG_SYSLOG = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@LOG_UUCP = common dso_local global i32 0, align 4
@LOG_LOCAL0 = common dso_local global i32 0, align 4
@LOG_LOCAL1 = common dso_local global i32 0, align 4
@LOG_LOCAL2 = common dso_local global i32 0, align 4
@LOG_LOCAL3 = common dso_local global i32 0, align 4
@LOG_LOCAL4 = common dso_local global i32 0, align 4
@LOG_LOCAL5 = common dso_local global i32 0, align 4
@LOG_LOCAL6 = common dso_local global i32 0, align 4
@LOG_LOCAL7 = common dso_local global i32 0, align 4
@LOG_CONSOLE = common dso_local global i32 0, align 4
@LOG_CONSOLE_KEY = common dso_local global i8* null, align 8
@LOG_INSTALL = common dso_local global i32 0, align 4
@LOG_INSTALL_KEY = common dso_local global i8* null, align 8
@LOG_LAUNCHD = common dso_local global i32 0, align 4
@LOG_LAUNCHD_KEY = common dso_local global i8* null, align 8
@LOG_NETINFO = common dso_local global i32 0, align 4
@LOG_NETINFO_KEY = common dso_local global i8* null, align 8
@LOG_NTP = common dso_local global i32 0, align 4
@LOG_NTP_KEY = common dso_local global i8* null, align 8
@LOG_RAS = common dso_local global i32 0, align 4
@LOG_RAS_KEY = common dso_local global i8* null, align 8
@LOG_REMOTEAUTH = common dso_local global i32 0, align 4
@LOG_REMOTEAUTH_KEY = common dso_local global i8* null, align 8
@LOG_SECURITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @log_facility_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_facility_id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @log_facility_id.hash_auth, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load i8*, i8** @LOG_AUTH_KEY, align 8
  %13 = call i32 @simple_hash(i8* %12)
  store i32 %13, i32* @log_facility_id.hash_auth, align 4
  %14 = load i8*, i8** @LOG_AUTHPRIV_KEY, align 8
  %15 = call i32 @simple_hash(i8* %14)
  store i32 %15, i32* @log_facility_id.hash_authpriv, align 4
  %16 = load i8*, i8** @LOG_CRON_KEY, align 8
  %17 = call i32 @simple_hash(i8* %16)
  store i32 %17, i32* @log_facility_id.hash_cron, align 4
  %18 = load i8*, i8** @LOG_DAEMON_KEY, align 8
  %19 = call i32 @simple_hash(i8* %18)
  store i32 %19, i32* @log_facility_id.hash_daemon, align 4
  %20 = load i8*, i8** @LOG_FTP_KEY, align 8
  %21 = call i32 @simple_hash(i8* %20)
  store i32 %21, i32* @log_facility_id.hash_ftp, align 4
  %22 = load i8*, i8** @LOG_KERN_KEY, align 8
  %23 = call i32 @simple_hash(i8* %22)
  store i32 %23, i32* @log_facility_id.hash_kern, align 4
  %24 = load i8*, i8** @LOG_LPR_KEY, align 8
  %25 = call i32 @simple_hash(i8* %24)
  store i32 %25, i32* @log_facility_id.hash_lpr, align 4
  %26 = load i8*, i8** @LOG_MAIL_KEY, align 8
  %27 = call i32 @simple_hash(i8* %26)
  store i32 %27, i32* @log_facility_id.hash_mail, align 4
  %28 = load i8*, i8** @LOG_NEWS_KEY, align 8
  %29 = call i32 @simple_hash(i8* %28)
  store i32 %29, i32* @log_facility_id.hash_news, align 4
  %30 = load i8*, i8** @LOG_SECURITY_KEY, align 8
  %31 = call i32 @simple_hash(i8* %30)
  store i32 %31, i32* @log_facility_id.hash_security, align 4
  %32 = load i8*, i8** @LOG_SYSLOG_KEY, align 8
  %33 = call i32 @simple_hash(i8* %32)
  store i32 %33, i32* @log_facility_id.hash_syslog, align 4
  %34 = load i8*, i8** @LOG_USER_KEY, align 8
  %35 = call i32 @simple_hash(i8* %34)
  store i32 %35, i32* @log_facility_id.hash_user, align 4
  %36 = load i8*, i8** @LOG_UUCP_KEY, align 8
  %37 = call i32 @simple_hash(i8* %36)
  store i32 %37, i32* @log_facility_id.hash_uucp, align 4
  %38 = load i8*, i8** @LOG_LOCAL0_KEY, align 8
  %39 = call i32 @simple_hash(i8* %38)
  store i32 %39, i32* @log_facility_id.hash_local0, align 4
  %40 = load i8*, i8** @LOG_LOCAL1_KEY, align 8
  %41 = call i32 @simple_hash(i8* %40)
  store i32 %41, i32* @log_facility_id.hash_local1, align 4
  %42 = load i8*, i8** @LOG_LOCAL2_KEY, align 8
  %43 = call i32 @simple_hash(i8* %42)
  store i32 %43, i32* @log_facility_id.hash_local2, align 4
  %44 = load i8*, i8** @LOG_LOCAL3_KEY, align 8
  %45 = call i32 @simple_hash(i8* %44)
  store i32 %45, i32* @log_facility_id.hash_local3, align 4
  %46 = load i8*, i8** @LOG_LOCAL4_KEY, align 8
  %47 = call i32 @simple_hash(i8* %46)
  store i32 %47, i32* @log_facility_id.hash_local4, align 4
  %48 = load i8*, i8** @LOG_LOCAL5_KEY, align 8
  %49 = call i32 @simple_hash(i8* %48)
  store i32 %49, i32* @log_facility_id.hash_local5, align 4
  %50 = load i8*, i8** @LOG_LOCAL6_KEY, align 8
  %51 = call i32 @simple_hash(i8* %50)
  store i32 %51, i32* @log_facility_id.hash_local6, align 4
  %52 = load i8*, i8** @LOG_LOCAL7_KEY, align 8
  %53 = call i32 @simple_hash(i8* %52)
  store i32 %53, i32* @log_facility_id.hash_local7, align 4
  br label %54

54:                                               ; preds = %11, %1
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @simple_hash(i8* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @log_facility_id.hash_auth, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @LOG_AUTH, align 4
  store i32 %61, i32* %2, align 4
  br label %204

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @log_facility_id.hash_authpriv, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @LOG_AUTHPRIV, align 4
  store i32 %67, i32* %2, align 4
  br label %204

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @log_facility_id.hash_cron, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @LOG_CRON, align 4
  store i32 %73, i32* %2, align 4
  br label %204

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @log_facility_id.hash_daemon, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @LOG_DAEMON, align 4
  store i32 %79, i32* %2, align 4
  br label %204

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @log_facility_id.hash_ftp, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @LOG_FTP, align 4
  store i32 %85, i32* %2, align 4
  br label %204

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @log_facility_id.hash_kern, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @LOG_KERN, align 4
  store i32 %91, i32* %2, align 4
  br label %204

92:                                               ; preds = %86
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @log_facility_id.hash_lpr, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @LOG_LPR, align 4
  store i32 %97, i32* %2, align 4
  br label %204

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @log_facility_id.hash_mail, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @LOG_MAIL, align 4
  store i32 %103, i32* %2, align 4
  br label %204

104:                                              ; preds = %98
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @log_facility_id.hash_news, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @LOG_NEWS, align 4
  store i32 %109, i32* %2, align 4
  br label %204

110:                                              ; preds = %104
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @log_facility_id.hash_security, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @LOG_AUTH, align 4
  store i32 %115, i32* %2, align 4
  br label %204

116:                                              ; preds = %110
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @log_facility_id.hash_syslog, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @LOG_SYSLOG, align 4
  store i32 %121, i32* %2, align 4
  br label %204

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @log_facility_id.hash_user, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @LOG_USER, align 4
  store i32 %127, i32* %2, align 4
  br label %204

128:                                              ; preds = %122
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @log_facility_id.hash_uucp, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @LOG_UUCP, align 4
  store i32 %133, i32* %2, align 4
  br label %204

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @log_facility_id.hash_local0, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @LOG_LOCAL0, align 4
  store i32 %139, i32* %2, align 4
  br label %204

140:                                              ; preds = %134
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @log_facility_id.hash_local1, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @LOG_LOCAL1, align 4
  store i32 %145, i32* %2, align 4
  br label %204

146:                                              ; preds = %140
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @log_facility_id.hash_local2, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* @LOG_LOCAL2, align 4
  store i32 %151, i32* %2, align 4
  br label %204

152:                                              ; preds = %146
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @log_facility_id.hash_local3, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @LOG_LOCAL3, align 4
  store i32 %157, i32* %2, align 4
  br label %204

158:                                              ; preds = %152
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @log_facility_id.hash_local4, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @LOG_LOCAL4, align 4
  store i32 %163, i32* %2, align 4
  br label %204

164:                                              ; preds = %158
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @log_facility_id.hash_local5, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @LOG_LOCAL5, align 4
  store i32 %169, i32* %2, align 4
  br label %204

170:                                              ; preds = %164
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @log_facility_id.hash_local6, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @LOG_LOCAL6, align 4
  store i32 %175, i32* %2, align 4
  br label %204

176:                                              ; preds = %170
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @log_facility_id.hash_local7, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @LOG_LOCAL7, align 4
  store i32 %181, i32* %2, align 4
  br label %204

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* @LOG_DAEMON, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %180, %174, %168, %162, %156, %150, %144, %138, %132, %126, %120, %114, %108, %102, %96, %90, %84, %78, %72, %66, %60
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @simple_hash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
