; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_sockaddr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.openvpn_sockaddr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.in_addr }
%struct.in_addr = type { i32 }

@SA_IP_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_ip\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s_port\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s_ip6\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_sockaddr(%struct.env_set* %0, i8* %1, %struct.openvpn_sockaddr* %2, i32 %3) #0 {
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.openvpn_sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.in_addr, align 4
  store %struct.env_set* %0, %struct.env_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.openvpn_sockaddr* %2, %struct.openvpn_sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %131 [
    i32 129, label %17
    i32 128, label %66
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SA_IP_PORT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @openvpn_snprintf(i8* %23, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %30

26:                                               ; preds = %17
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @openvpn_snprintf(i8* %27, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.env_set*, %struct.env_set** %5, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %33 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %34 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @inet_ntoa(i32 %38)
  %40 = call i32 @setenv_str(%struct.env_set* %31, i8* %32, i8* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SA_IP_PORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %30
  %46 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %47 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @openvpn_snprintf(i8* %53, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load %struct.env_set*, %struct.env_set** %5, align 8
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %58 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %59 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = call i32 @setenv_int(%struct.env_set* %56, i8* %57, i32 %63)
  br label %65

65:                                               ; preds = %52, %45, %30
  br label %131

66:                                               ; preds = %4
  %67 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %68 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = call i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_10__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %75 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %76 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 12
  %82 = call i32 @memcpy(i32* %74, i32* %81, i32 4)
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @openvpn_snprintf(i8* %83, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @inet_ntoa(i32 %88)
  %90 = call i32 @openvpn_snprintf(i8* %86, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  br label %101

91:                                               ; preds = %66
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @openvpn_snprintf(i8* %92, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  %95 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %96 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %99 = load i32, i32* @NI_NUMERICHOST, align 4
  %100 = call i32 @getnameinfo(%struct.TYPE_9__* %97, i32 4, i8* %98, i32 128, i32* null, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %91, %73
  %102 = load %struct.env_set*, %struct.env_set** %5, align 8
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %105 = call i32 @setenv_str(%struct.env_set* %102, i8* %103, i8* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @SA_IP_PORT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %101
  %111 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %112 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @openvpn_snprintf(i8* %118, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %119)
  %121 = load %struct.env_set*, %struct.env_set** %5, align 8
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %123 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %7, align 8
  %124 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ntohs(i32 %127)
  %129 = call i32 @setenv_int(%struct.env_set* %121, i8* %122, i32 %128)
  br label %130

130:                                              ; preds = %117, %110, %101
  br label %131

131:                                              ; preds = %4, %130, %65
  ret void
}

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @setenv_int(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @getnameinfo(%struct.TYPE_9__*, i32, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
