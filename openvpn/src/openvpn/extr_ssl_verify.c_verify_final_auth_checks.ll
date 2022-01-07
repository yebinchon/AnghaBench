; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_final_auth_checks.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_final_auth_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i8*, i64 }
%struct.tls_session = type { i8*, %struct.TYPE_2__*, %struct.cert_hash_set*, %struct.key_state* }
%struct.TYPE_2__ = type { i64 }
%struct.cert_hash_set = type { i32 }
%struct.key_state = type { i32 }
%struct.gc_arena = type { i32 }

@KS_PRIMARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"TLS Auth Error: TLS object CN attempted to change from '%s' to '%s' -- tunnel disabled\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"TLS Auth Error: TLS object CN=%s client-provided SSL certs unexpectedly changed during mid-session reauth\00", align 1
@CCD_DEFAULT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [89 x i8] c"TLS Auth Error: --client-config-dir authentication failed for common name '%s' file='%s'\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_final_auth_checks(%struct.tls_multi* %0, %struct.tls_session* %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca %struct.tls_session*, align 8
  %5 = alloca %struct.key_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cert_hash_set*, align 8
  %8 = alloca %struct.gc_arena, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store %struct.tls_session* %1, %struct.tls_session** %4, align 8
  %11 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %12 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %11, i32 0, i32 3
  %13 = load %struct.key_state*, %struct.key_state** %12, align 8
  %14 = load i64, i64* @KS_PRIMARY, align 8
  %15 = getelementptr inbounds %struct.key_state, %struct.key_state* %13, i64 %14
  store %struct.key_state* %15, %struct.key_state** %5, align 8
  %16 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %17 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %22 = call i32 @set_common_name(%struct.tls_session* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.key_state*, %struct.key_state** %5, align 8
  %25 = getelementptr inbounds %struct.key_state, %struct.key_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %30 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %35 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %42 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %40, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load i32, i32* @D_TLS_ERRORS, align 4
  %48 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %49 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @msg(i32 %47, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %54 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %55 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @set_common_name(%struct.tls_session* %53, i8* %56)
  %58 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %59 = call i32 @tls_deauthenticate(%struct.tls_multi* %58)
  br label %60

60:                                               ; preds = %46, %39, %33
  br label %61

61:                                               ; preds = %60, %28, %23
  %62 = load %struct.key_state*, %struct.key_state** %5, align 8
  %63 = getelementptr inbounds %struct.key_state, %struct.key_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %68 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %73 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %72, i32 0, i32 2
  %74 = load %struct.cert_hash_set*, %struct.cert_hash_set** %73, align 8
  store %struct.cert_hash_set* %74, %struct.cert_hash_set** %7, align 8
  %75 = load %struct.cert_hash_set*, %struct.cert_hash_set** %7, align 8
  %76 = icmp ne %struct.cert_hash_set* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.cert_hash_set*, %struct.cert_hash_set** %7, align 8
  %79 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %80 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @cert_hash_compare(%struct.cert_hash_set* %78, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @D_TLS_ERRORS, align 4
  %86 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %87 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @msg(i32 %85, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %91 = call i32 @tls_deauthenticate(%struct.tls_multi* %90)
  br label %92

92:                                               ; preds = %84, %77, %71
  br label %93

93:                                               ; preds = %92, %66, %61
  %94 = load %struct.key_state*, %struct.key_state** %5, align 8
  %95 = getelementptr inbounds %struct.key_state, %struct.key_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %93
  %99 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %100 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %148

105:                                              ; preds = %98
  %106 = call i32 (...) @gc_new()
  %107 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %8, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %109 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %9, align 8
  %111 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %112 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i8* @platform_gen_path(i64 %115, i8* %116, %struct.gc_arena* %8)
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %105
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** @CCD_DEFAULT, align 8
  %123 = call i64 @strcmp(i8* %121, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @platform_test_file(i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %125, %120, %105
  %130 = load %struct.key_state*, %struct.key_state** %5, align 8
  %131 = getelementptr inbounds %struct.key_state, %struct.key_state* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  %132 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %133 = call i32 @wipe_auth_token(%struct.tls_multi* %132)
  %134 = load i32, i32* @D_TLS_ERRORS, align 4
  %135 = load %struct.tls_session*, %struct.tls_session** %4, align 8
  %136 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = load i8*, i8** %10, align 8
  br label %143

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i8* [ %141, %140 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %142 ]
  %145 = call i32 (i32, i8*, i8*, ...) @msg(i32 %134, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8* %137, i8* %144)
  br label %146

146:                                              ; preds = %143, %125
  %147 = call i32 @gc_free(%struct.gc_arena* %8)
  br label %148

148:                                              ; preds = %146, %98, %93
  ret void
}

declare dso_local i32 @set_common_name(%struct.tls_session*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*, i8*, ...) #1

declare dso_local i32 @tls_deauthenticate(%struct.tls_multi*) #1

declare dso_local i32 @cert_hash_compare(%struct.cert_hash_set*, i64) #1

declare dso_local i32 @gc_new(...) #1

declare dso_local i8* @platform_gen_path(i64, i8*, %struct.gc_arena*) #1

declare dso_local i32 @platform_test_file(i8*) #1

declare dso_local i32 @wipe_auth_token(%struct.tls_multi*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
