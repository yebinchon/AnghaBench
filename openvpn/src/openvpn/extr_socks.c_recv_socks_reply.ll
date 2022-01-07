; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_recv_socks_reply.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_recv_socks_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.gc_arena = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"recv_socks_reply: TCP port read timeout expired\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"recv_socks_reply: TCP port read failed on select()\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"recv_socks_reply: TCP port read failed on recv()\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"recv_socks_reply: Socks proxy returned bad address type\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"recv_socks_reply: Socks proxy returned bad reply\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"SOCKS proxy wants us to send UDP to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.openvpn_sockaddr*, i32*)* @recv_socks_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_socks_reply(i64 %0, %struct.openvpn_sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.openvpn_sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [22 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.gc_arena, align 4
  store i64 %0, i64* %5, align 8
  store %struct.openvpn_sockaddr* %1, %struct.openvpn_sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 5, i32* %12, align 4
  %20 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %21 = icmp ne %struct.openvpn_sockaddr* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %25 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @INADDR_ANY, align 4
  %29 = call i32 @htonl(i32 %28)
  %30 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %31 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %36 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @htons(i32 0)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.TYPE_7__* %38 to i8*
  %42 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %22, %3
  br label %44

44:                                               ; preds = %120, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 4, %46
  %48 = add nsw i32 %47, 2
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %44
  %51 = call i32 @FD_ZERO(i32* %16)
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @openvpn_fd_set(i64 %52, i32* %16)
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 5, i32* %54, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @select(i64 %57, i32* %16, i32* null, i32* null, %struct.timeval* %17)
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @get_signal(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load volatile i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %166

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* @D_LINK_ERRORS, align 4
  %70 = load i32, i32* @M_ERRNO, align 4
  %71 = or i32 %69, %70
  %72 = call i32 (i32, i8*, ...) @msg(i32 %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %166

73:                                               ; preds = %65
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @D_LINK_ERRORS, align 4
  %78 = load i32, i32* @M_ERRNO, align 4
  %79 = or i32 %77, %78
  %80 = call i32 (i32, i8*, ...) @msg(i32 %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %166

81:                                               ; preds = %73
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* @MSG_NOSIGNAL, align 4
  %84 = call i32 @recv(i64 %82, i8* %18, i32 1, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @D_LINK_ERRORS, align 4
  %89 = load i32, i32* @M_ERRNO, align 4
  %90 = or i32 %88, %89
  %91 = call i32 (i32, i8*, ...) @msg(i32 %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %166

92:                                               ; preds = %81
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i8, i8* %18, align 1
  store i8 %96, i8* %8, align 1
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  switch i32 %102, label %108 [
    i32 1, label %103
    i32 3, label %104
    i32 4, label %107
  ]

103:                                              ; preds = %100
  store i32 4, i32* %9, align 4
  br label %111

104:                                              ; preds = %100
  %105 = load i8, i8* %18, align 1
  %106 = zext i8 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %111

107:                                              ; preds = %100
  store i32 16, i32* %9, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load i32, i32* @D_LINK_ERRORS, align 4
  %110 = call i32 (i32, i8*, ...) @msg(i32 %109, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %166

111:                                              ; preds = %107, %104, %103
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 22
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i8, i8* %18, align 1
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 %118
  store i8 %116, i8* %119, align 1
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %44

123:                                              ; preds = %44
  %124 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %125 = load i8, i8* %124, align 16
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 5
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %123
  %134 = load i32, i32* @D_LINK_ERRORS, align 4
  %135 = call i32 (i32, i8*, ...) @msg(i32 %134, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %166

136:                                              ; preds = %128
  %137 = load i8, i8* %8, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %165

140:                                              ; preds = %136
  %141 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %142 = icmp ne %struct.openvpn_sockaddr* %141, null
  br i1 %142, label %143, label %165

143:                                              ; preds = %140
  %144 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %145 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  %150 = call i32 @memcpy(%struct.TYPE_7__* %147, i8* %149, i32 4)
  %151 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %152 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %156 = getelementptr inbounds i8, i8* %155, i64 8
  %157 = call i32 @memcpy(%struct.TYPE_7__* %154, i8* %156, i32 4)
  %158 = call i32 (...) @gc_new()
  %159 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %19, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* @M_INFO, align 4
  %161 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %6, align 8
  %162 = call i32 @print_openvpn_sockaddr(%struct.openvpn_sockaddr* %161, %struct.gc_arena* %19)
  %163 = call i32 (i32, i8*, ...) @msg(i32 %160, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = call i32 @gc_free(%struct.gc_arena* %19)
  br label %165

165:                                              ; preds = %143, %140, %136
  store i32 1, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %133, %108, %87, %76, %68, %64
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openvpn_fd_set(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @get_signal(i32*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @print_openvpn_sockaddr(%struct.openvpn_sockaddr*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
