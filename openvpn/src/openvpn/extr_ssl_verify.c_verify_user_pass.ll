; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_user_pass.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_user_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pass = type { i32, i32 }
%struct.tls_multi = type { i32, i64, i64 }
%struct.tls_session = type { %struct.TYPE_2__*, %struct.key_state* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i64 }
%struct.key_state = type { i32, i32 }

@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i32 0, align 4
@KS_PRIMARY = common dso_local global i64 0, align 8
@CC_PRINT = common dso_local global i32 0, align 4
@CC_CRLF = common dso_local global i32 0, align 4
@AUTH_TOKEN_HMAC_OK = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"TLS: Username/auth-token authentication succeeded for username '%s'\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"TLS: Username/auth-token authentication failed for username '%s'\00", align 1
@OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY = common dso_local global i32 0, align 4
@SSLF_USERNAME_AS_COMMON_NAME = common dso_local global i32 0, align 4
@TLS_USERNAME_LEN = common dso_local global i64 0, align 8
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [138 x i8] c"TLS Auth Error: --username-as-common name specified and username is longer than the maximum permitted Common Name length of %d characters\00", align 1
@OPENVPN_PLUGIN_FUNC_ERROR = common dso_local global i32 0, align 4
@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"TLS: Username/Password authentication %s for username '%s' %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"[CN SET]\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"TLS Auth Error: Auth Username/Password verification failed for peer\00", align 1
@AUTH_TOKEN_EXPIRED = common dso_local global i32 0, align 4
@KMDA_DEF = common dso_local global i32 0, align 4
@KMDA_ERROR = common dso_local global i32 0, align 4
@KMDA_UNDEF = common dso_local global i32 0, align 4
@OPENVPN_PLUGIN_FUNC_DEFERRED = common dso_local global i32 0, align 4
@management = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_user_pass(%struct.user_pass* %0, %struct.tls_multi* %1, %struct.tls_session* %2) #0 {
  %4 = alloca %struct.user_pass*, align 8
  %5 = alloca %struct.tls_multi*, align 8
  %6 = alloca %struct.tls_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.key_state*, align 8
  %10 = alloca i32, align 4
  store %struct.user_pass* %0, %struct.user_pass** %4, align 8
  store %struct.tls_multi* %1, %struct.tls_multi** %5, align 8
  store %struct.tls_session* %2, %struct.tls_session** %6, align 8
  %11 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %13 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %12, i32 0, i32 1
  %14 = load %struct.key_state*, %struct.key_state** %13, align 8
  %15 = load i64, i64* @KS_PRIMARY, align 8
  %16 = getelementptr inbounds %struct.key_state, %struct.key_state* %14, i64 %15
  store %struct.key_state* %16, %struct.key_state** %9, align 8
  %17 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %18 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @string_mod_remap_name(i32 %19)
  %21 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %22 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CC_PRINT, align 4
  %25 = load i32, i32* @CC_CRLF, align 4
  %26 = call i32 @string_mod(i32 %23, i32 %24, i32 %25, i8 signext 95)
  store i32 0, i32* %10, align 4
  %27 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %28 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %3
  %34 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %35 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_auth_token(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %33
  %40 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %41 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %42 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %43 = call i32 @verify_auth_token(%struct.user_pass* %40, %struct.tls_multi* %41, %struct.tls_session* %42)
  %44 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %45 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %47 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %76

53:                                               ; preds = %39
  %54 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %55 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AUTH_TOKEN_HMAC_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @M_WARN, align 4
  %61 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %62 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @msg(i32 %60, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 1, i32* %10, align 4
  br label %75

65:                                               ; preds = %53
  %66 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %67 = call i32 @wipe_auth_token(%struct.tls_multi* %66)
  %68 = load %struct.key_state*, %struct.key_state** %9, align 8
  %69 = getelementptr inbounds %struct.key_state, %struct.key_state* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* @M_WARN, align 4
  %71 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %72 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @msg(i32 %70, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %178

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %33, %3
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %77
  %81 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %82 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY, align 4
  %87 = call i64 @plugin_defined(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %91 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %92 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %93 = call i32 @verify_user_pass_plugin(%struct.tls_session* %90, %struct.tls_multi* %91, %struct.user_pass* %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %89, %80
  %95 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %96 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %103 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %104 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %105 = call i32 @verify_user_pass_script(%struct.tls_session* %102, %struct.tls_multi* %103, %struct.user_pass* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %94
  br label %107

107:                                              ; preds = %106, %77
  %108 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %109 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SSLF_USERNAME_AS_COMMON_NAME, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %107
  %117 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %118 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @strlen(i32 %119)
  %121 = load i64, i64* @TLS_USERNAME_LEN, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @D_TLS_ERRORS, align 4
  %125 = load i64, i64* @TLS_USERNAME_LEN, align 8
  %126 = call i32 (i32, i8*, ...) @msg(i32 %124, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.2, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @OPENVPN_PLUGIN_FUNC_ERROR, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123, %116, %107
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %175

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %132
  %136 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %137 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %138 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @tls_lock_username(%struct.tls_multi* %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %175

142:                                              ; preds = %135
  %143 = load %struct.key_state*, %struct.key_state** %9, align 8
  %144 = getelementptr inbounds %struct.key_state, %struct.key_state* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  %145 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %146 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SSLF_USERNAME_AS_COMMON_NAME, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %142
  %154 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %155 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %156 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @set_common_name(%struct.tls_session* %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %142
  %160 = load i32, i32* @D_HANDSHAKE, align 4
  %161 = load %struct.user_pass*, %struct.user_pass** %4, align 8
  %162 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tls_session*, %struct.tls_session** %6, align 8
  %165 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SSLF_USERNAME_AS_COMMON_NAME, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %174 = call i32 (i32, i8*, ...) @msg(i32 %160, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %163, i8* %173)
  br label %178

175:                                              ; preds = %135, %132, %128
  %176 = load i32, i32* @D_TLS_ERRORS, align 4
  %177 = call i32 (i32, i8*, ...) @msg(i32 %176, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  br label %178

178:                                              ; preds = %65, %175, %159
  ret void
}

declare dso_local i32 @string_mod_remap_name(i32) #1

declare dso_local i32 @string_mod(i32, i32, i32, i8 signext) #1

declare dso_local i64 @is_auth_token(i32) #1

declare dso_local i32 @verify_auth_token(%struct.user_pass*, %struct.tls_multi*, %struct.tls_session*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @wipe_auth_token(%struct.tls_multi*) #1

declare dso_local i64 @plugin_defined(i32, i32) #1

declare dso_local i32 @verify_user_pass_plugin(%struct.tls_session*, %struct.tls_multi*, %struct.user_pass*) #1

declare dso_local i32 @verify_user_pass_script(%struct.tls_session*, %struct.tls_multi*, %struct.user_pass*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @tls_lock_username(%struct.tls_multi*, i32) #1

declare dso_local i32 @set_common_name(%struct.tls_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
