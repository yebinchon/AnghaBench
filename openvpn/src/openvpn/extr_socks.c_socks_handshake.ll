; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_socks_handshake.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_socks_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socks_proxy_info = type { i64* }
%struct.timeval = type { i32, i64 }

@__const.socks_handshake.method_sel = private unnamed_addr constant [3 x i8] c"\05\01\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"socks_handshake: TCP port write failed on send()\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"socks_handshake: TCP port read timeout expired\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"socks_handshake: TCP port read failed on select()\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"socks_handshake: TCP port read failed on recv()\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"socks_handshake: Socks proxy returned bad status\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"socks_handshake: Socks proxy returned unexpected auth\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"socks_handshake: server asked for username/login auth but we were not provided any credentials\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"socks_handshake: unknown SOCKS auth method\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socks_proxy_info*, i64, i32*)* @socks_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socks_handshake(%struct.socks_proxy_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socks_proxy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i8, align 1
  store %struct.socks_proxy_info* %0, %struct.socks_proxy_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 5, i32* %10, align 4
  %18 = bitcast [3 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.socks_handshake.method_sel, i32 0, i32 0), i64 3, i1 false)
  %19 = load %struct.socks_proxy_info*, %struct.socks_proxy_info** %5, align 8
  %20 = getelementptr inbounds %struct.socks_proxy_info, %struct.socks_proxy_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  store i8 2, i8* %26, align 1
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %30 = load i32, i32* @MSG_NOSIGNAL, align 4
  %31 = call i32 @send(i64 %28, i8* %29, i32 3, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @D_LINK_ERRORS, align 4
  %37 = load i32, i32* @M_ERRNO, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @msg(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %86, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %92

44:                                               ; preds = %41
  %45 = call i32 @FD_ZERO(i32* %15)
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @openvpn_fd_set(i64 %46, i32* %15)
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 5, i32* %48, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @select(i64 %51, i32* %15, i32* null, i32* null, %struct.timeval* %16)
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @get_signal(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load volatile i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %138

59:                                               ; preds = %44
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @D_LINK_ERRORS, align 4
  %64 = load i32, i32* @M_ERRNO, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @msg(i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @D_LINK_ERRORS, align 4
  %72 = load i32, i32* @M_ERRNO, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @msg(i32 %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

75:                                               ; preds = %67
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @MSG_NOSIGNAL, align 4
  %78 = call i32 @recv(i64 %76, i8* %17, i32 1, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @D_LINK_ERRORS, align 4
  %83 = load i32, i32* @M_ERRNO, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @msg(i32 %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

86:                                               ; preds = %75
  %87 = load i8, i8* %17, align 1
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 %90
  store i8 %87, i8* %91, align 1
  br label %41

92:                                               ; preds = %41
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 5
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @D_LINK_ERRORS, align 4
  %99 = call i32 @msg(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

100:                                              ; preds = %92
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @D_LINK_ERRORS, align 4
  %110 = call i32 @msg(i32 %109, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

111:                                              ; preds = %100
  %112 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  switch i32 %114, label %134 [
    i32 0, label %115
    i32 2, label %116
  ]

115:                                              ; preds = %111
  br label %137

116:                                              ; preds = %111
  %117 = load %struct.socks_proxy_info*, %struct.socks_proxy_info** %5, align 8
  %118 = getelementptr inbounds %struct.socks_proxy_info, %struct.socks_proxy_info* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* @D_LINK_ERRORS, align 4
  %125 = call i32 @msg(i32 %124, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

126:                                              ; preds = %116
  %127 = load %struct.socks_proxy_info*, %struct.socks_proxy_info** %5, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @socks_username_password_auth(%struct.socks_proxy_info* %127, i64 %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %138

133:                                              ; preds = %126
  br label %137

134:                                              ; preds = %111
  %135 = load i32, i32* @D_LINK_ERRORS, align 4
  %136 = call i32 @msg(i32 %135, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %138

137:                                              ; preds = %133, %115
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %134, %132, %123, %108, %97, %81, %70, %62, %58, %35
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @send(i64, i8*, i32, i32) #2

declare dso_local i32 @msg(i32, i8*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @openvpn_fd_set(i64, i32*) #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @get_signal(i32*) #2

declare dso_local i32 @recv(i64, i8*, i32, i32) #2

declare dso_local i32 @socks_username_password_auth(%struct.socks_proxy_info*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
