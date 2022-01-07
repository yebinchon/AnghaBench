; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_socks_username_password_auth.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_socks_username_password_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socks_proxy_info = type { i32 }
%struct.user_pass = type { i8*, i8*, i64 }
%struct.timeval = type { i32, i64 }

@UP_TYPE_SOCKS = common dso_local global i32 0, align 4
@GET_USER_PASS_MANAGEMENT = common dso_local global i32 0, align 4
@M_NONFATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SOCKS failed to get username/password.\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"SOCKS username and/or password exceeds 255 characters.  Authentication not possible.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\01%c%s%c%s\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"socks_username_password_auth: TCP port write failed on send()\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"socks_username_password_auth: TCP port read timeout expired\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"socks_username_password_auth: TCP port read failed on select()\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"socks_username_password_auth: TCP port read failed on recv()\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"socks_username_password_auth: server refused the authentication\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socks_proxy_info*, i64, i32*)* @socks_username_password_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socks_username_password_auth(%struct.socks_proxy_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socks_proxy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [516 x i8], align 16
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.user_pass, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i8, align 1
  store %struct.socks_proxy_info* %0, %struct.socks_proxy_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 5, i32* %11, align 4
  %19 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.socks_proxy_info*, %struct.socks_proxy_info** %5, align 8
  %21 = getelementptr inbounds %struct.socks_proxy_info, %struct.socks_proxy_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UP_TYPE_SOCKS, align 4
  %24 = load i32, i32* @GET_USER_PASS_MANAGEMENT, align 4
  %25 = call i32 @get_user_pass(%struct.user_pass* %12, i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @M_NONFATAL, align 4
  %29 = call i32 @msg(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp sgt i32 %38, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @M_NONFATAL, align 4
  %42 = call i32 @msg(i32 %41, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

43:                                               ; preds = %35
  %44 = getelementptr inbounds [516 x i8], [516 x i8]* %8, i64 0, i64 0
  %45 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %12, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @openvpn_snprintf(i8* %44, i32 516, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %49, i32 %52, i8* %54)
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds [516 x i8], [516 x i8]* %8, i64 0, i64 0
  %58 = getelementptr inbounds [516 x i8], [516 x i8]* %8, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = load i32, i32* @MSG_NOSIGNAL, align 4
  %61 = call i32 @send(i64 %56, i8* %57, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds [516 x i8], [516 x i8]* %8, i64 0, i64 0
  %64 = call i32 @strlen(i8* %63)
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %43
  %67 = load i32, i32* @D_LINK_ERRORS, align 4
  %68 = load i32, i32* @M_ERRNO, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @msg(i32 %69, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %117, %71
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %123

75:                                               ; preds = %72
  %76 = call i32 @FD_ZERO(i32* %16)
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @openvpn_fd_set(i64 %77, i32* %16)
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 5, i32* %79, align 8
  %80 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  %83 = call i32 @select(i64 %82, i32* %16, i32* null, i32* null, %struct.timeval* %17)
  store i32 %83, i32* %14, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @get_signal(i32* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load volatile i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %137

90:                                               ; preds = %75
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @D_LINK_ERRORS, align 4
  %95 = load i32, i32* @M_ERRNO, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @msg(i32 %96, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* @D_LINK_ERRORS, align 4
  %103 = load i32, i32* @M_ERRNO, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @msg(i32 %104, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

106:                                              ; preds = %98
  %107 = load i64, i64* %6, align 8
  %108 = load i32, i32* @MSG_NOSIGNAL, align 4
  %109 = call i32 @recv(i64 %107, i8* %18, i32 1, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i32, i32* @D_LINK_ERRORS, align 4
  %114 = load i32, i32* @M_ERRNO, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @msg(i32 %115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

117:                                              ; preds = %106
  %118 = load i8, i8* %18, align 1
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 %121
  store i8 %118, i8* %122, align 1
  br label %72

123:                                              ; preds = %72
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 5
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @D_LINK_ERRORS, align 4
  %135 = call i32 @msg(i32 %134, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %137

136:                                              ; preds = %128, %123
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %133, %112, %101, %93, %89, %66, %40, %27
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @get_user_pass(%struct.user_pass*, i32, i32, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @send(i64, i8*, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openvpn_fd_set(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @get_signal(i32*) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
