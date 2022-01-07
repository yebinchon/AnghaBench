; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_user_pass_script.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_user_pass_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_session = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.tls_multi = type { i32 }
%struct.user_pass = type { i8*, i8* }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }
%struct.status_output = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSLF_AUTH_USER_PASS_OPTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"script_type\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"user-pass-verify\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@STATUS_OUTPUT_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"TLS Auth Error: could not write username/password to file: %s\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"TLS Auth Error: could not create write username/password to temp file\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"common_name\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"--auth-user-pass-verify\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"TLS Auth Error: peer provided a blank username\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_session*, %struct.tls_multi*, %struct.user_pass*)* @verify_user_pass_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_user_pass_script(%struct.tls_session* %0, %struct.tls_multi* %1, %struct.user_pass* %2) #0 {
  %4 = alloca %struct.tls_session*, align 8
  %5 = alloca %struct.tls_multi*, align 8
  %6 = alloca %struct.user_pass*, align 8
  %7 = alloca %struct.gc_arena, align 4
  %8 = alloca %struct.argv, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.status_output*, align 8
  store %struct.tls_session* %0, %struct.tls_session** %4, align 8
  store %struct.tls_multi* %1, %struct.tls_multi** %5, align 8
  store %struct.user_pass* %2, %struct.user_pass** %6, align 8
  %12 = call i32 (...) @gc_new()
  %13 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = call i32 (...) @argv_new()
  %15 = getelementptr inbounds %struct.argv, %struct.argv* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %17 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SSLF_AUTH_USER_PASS_OPTIONAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.user_pass*, %struct.user_pass** %6, align 8
  %26 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %141

30:                                               ; preds = %24, %3
  %31 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %32 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @setenv_str(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %38 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %30
  %44 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %45 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @platform_create_temp_file(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.gc_arena* %7)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %74

52:                                               ; preds = %43
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @STATUS_OUTPUT_WRITE, align 4
  %55 = call %struct.status_output* @status_open(i8* %53, i32 0, i32 -1, i32* null, i32 %54)
  store %struct.status_output* %55, %struct.status_output** %11, align 8
  %56 = load %struct.status_output*, %struct.status_output** %11, align 8
  %57 = load %struct.user_pass*, %struct.user_pass** %6, align 8
  %58 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @status_printf(%struct.status_output* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load %struct.status_output*, %struct.status_output** %11, align 8
  %62 = load %struct.user_pass*, %struct.user_pass** %6, align 8
  %63 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @status_printf(%struct.status_output* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load %struct.status_output*, %struct.status_output** %11, align 8
  %67 = call i32 @status_close(%struct.status_output* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %52
  %70 = load i32, i32* @D_TLS_ERRORS, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (i32, i8*, ...) @msg(i32 %70, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  br label %145

73:                                               ; preds = %52
  br label %77

74:                                               ; preds = %43
  %75 = load i32, i32* @D_TLS_ERRORS, align 4
  %76 = call i32 (i32, i8*, ...) @msg(i32 %75, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %73
  br label %97

78:                                               ; preds = %30
  %79 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %80 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.user_pass*, %struct.user_pass** %6, align 8
  %85 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @setenv_str(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  %88 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %89 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.user_pass*, %struct.user_pass** %6, align 8
  %94 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @setenv_str(i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %78, %77
  %98 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %99 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %104 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @setenv_str(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  %107 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %108 = call i32 @setenv_untrusted(%struct.tls_session* %107)
  %109 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %110 = load %struct.tls_multi*, %struct.tls_multi** %5, align 8
  %111 = load %struct.user_pass*, %struct.user_pass** %6, align 8
  %112 = call i32 @add_session_token_env(%struct.tls_session* %109, %struct.tls_multi* %110, %struct.user_pass* %111)
  %113 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %114 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @argv_parse_cmd(%struct.argv* %8, i32 %117)
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @argv_printf_cat(%struct.argv* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %122 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @openvpn_run_script(%struct.argv* %8, i32 %125, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 %126, i32* %10, align 4
  %127 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %128 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %97
  %134 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %135 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @setenv_del(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %133, %97
  br label %144

141:                                              ; preds = %24
  %142 = load i32, i32* @D_TLS_ERRORS, align 4
  %143 = call i32 (i32, i8*, ...) @msg(i32 %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %140
  br label %145

145:                                              ; preds = %144, %69
  %146 = load i8*, i8** %9, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i8*, i8** %9, align 8
  %150 = call i64 @strlen(i8* %149)
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @platform_unlink(i8* %153)
  br label %155

155:                                              ; preds = %152, %148, %145
  %156 = call i32 @argv_reset(%struct.argv* %8)
  %157 = call i32 @gc_free(%struct.gc_arena* %7)
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @setenv_str(i32, i8*, i8*) #1

declare dso_local i8* @platform_create_temp_file(i32, i8*, %struct.gc_arena*) #1

declare dso_local %struct.status_output* @status_open(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @status_printf(%struct.status_output*, i8*, i8*) #1

declare dso_local i32 @status_close(%struct.status_output*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @setenv_untrusted(%struct.tls_session*) #1

declare dso_local i32 @add_session_token_env(%struct.tls_session*, %struct.tls_multi*, %struct.user_pass*) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i32) #1

declare dso_local i32 @argv_printf_cat(%struct.argv*, i8*, i8*) #1

declare dso_local i32 @openvpn_run_script(%struct.argv*, i32, i32, i8*) #1

declare dso_local i32 @setenv_del(i32, i8*) #1

declare dso_local i32 @platform_unlink(i8*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
