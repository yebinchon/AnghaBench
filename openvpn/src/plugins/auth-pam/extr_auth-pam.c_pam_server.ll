; ModuleID = '/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_auth-pam.c_pam_server.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/plugins/auth-pam/extr_auth-pam.c_pam_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_value_list = type { i32 }
%struct.user_pass = type { i32, i8*, i8*, i8*, i8*, %struct.name_value_list* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"AUTH-PAM: BACKGROUND: INIT service='%s'\0A\00", align 1
@RESPONSE_INIT_SUCCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"AUTH-PAM: BACKGROUND: write error on response socket [1]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"AUTH-PAM: BACKGROUND: received command code: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"AUTH-PAM: BACKGROUND: read error on command channel: code=%d, exiting\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"AUTH-PAM: BACKGROUND: USER: %s\0A\00", align 1
@RESPONSE_VERIFY_SUCCEEDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"AUTH-PAM: BACKGROUND: write error on response socket [2]\0A\00", align 1
@RESPONSE_VERIFY_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"AUTH-PAM: BACKGROUND: write error on response socket [3]\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"AUTH-PAM: BACKGROUND: read error on command channel\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"AUTH-PAM: BACKGROUND: unknown command code: code=%d, exiting\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"AUTH-PAM: BACKGROUND: EXIT\0A\00", align 1
@RESPONSE_INIT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.name_value_list*)* @pam_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pam_server(i32 %0, i8* %1, i32 %2, %struct.name_value_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.name_value_list*, align 8
  %9 = alloca %struct.user_pass, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.name_value_list* %3, %struct.name_value_list** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @DEBUG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RESPONSE_INIT_SUCCEEDED, align 4
  %21 = call i32 @send_control(i32 %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %114

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %110
  %28 = call i32 @memset(%struct.user_pass* %9, i32 0, i32 48)
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.name_value_list*, %struct.name_value_list** %8, align 8
  %32 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 5
  store %struct.name_value_list* %31, %struct.name_value_list** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @recv_control(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @DEBUG(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %106 [
    i32 128, label %44
    i32 129, label %102
    i32 -1, label %103
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @recv_string(i32 %45, i8* %47, i32 8)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @recv_string(i32 %51, i8* %53, i32 8)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @recv_string(i32 %57, i8* %59, i32 8)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %50, %44
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %114

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @DEBUG(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @stderr, align 4
  %72 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = call i32 @split_scrv1_password(%struct.user_pass* %9)
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @pam_auth(i8* %77, %struct.user_pass* %9)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @RESPONSE_VERIFY_SUCCEEDED, align 4
  %83 = call i32 @send_control(i32 %81, i32 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %114

88:                                               ; preds = %80
  br label %98

89:                                               ; preds = %75
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @RESPONSE_VERIFY_FAILED, align 4
  %92 = call i32 @send_control(i32 %90, i32 %91)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %114

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %88
  %99 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @plugin_secure_memzero(i8* %100, i32 8)
  br label %110

102:                                              ; preds = %42
  br label %114

103:                                              ; preds = %42
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %114

106:                                              ; preds = %42
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  br label %114

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @plugin_secure_memzero(i8* %112, i32 8)
  br label %27

114:                                              ; preds = %106, %103, %102, %94, %85, %62, %23
  %115 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @plugin_secure_memzero(i8* %116, i32 8)
  %118 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %9, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @plugin_secure_memzero(i8* %119, i32 8)
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @DEBUG(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %114
  ret void
}

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @send_control(i32, i32) #1

declare dso_local i32 @memset(%struct.user_pass*, i32, i32) #1

declare dso_local i32 @recv_control(i32) #1

declare dso_local i32 @recv_string(i32, i8*, i32) #1

declare dso_local i32 @split_scrv1_password(%struct.user_pass*) #1

declare dso_local i32 @pam_auth(i8*, %struct.user_pass*) #1

declare dso_local i32 @plugin_secure_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
