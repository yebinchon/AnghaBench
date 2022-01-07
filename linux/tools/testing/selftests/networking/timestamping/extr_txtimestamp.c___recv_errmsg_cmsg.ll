; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c___recv_errmsg_cmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c___recv_errmsg_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sock_extended_err = type { i64, i64, i32, i32 }
%struct.scm_timestamping = type { i32 }
%struct.cmsghdr = type { i64, i64, i64 }
%struct.in_pktinfo = type { i32, i32, i32 }
%struct.in6_pktinfo = type { i32, i32 }

@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_TIMESTAMPING = common dso_local global i64 0, align 8
@SOL_IP = common dso_local global i64 0, align 8
@IP_RECVERR = common dso_local global i64 0, align 8
@SOL_IPV6 = common dso_local global i64 0, align 8
@IPV6_RECVERR = common dso_local global i64 0, align 8
@SOL_PACKET = common dso_local global i64 0, align 8
@PACKET_TX_TIMESTAMP = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i64 0, align 8
@SO_EE_ORIGIN_TIMESTAMPING = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown ip error %d %d\0A\00", align 1
@IP_PKTINFO = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown cmsg %d,%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"batched %d timestamps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, i32)* @__recv_errmsg_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__recv_errmsg_cmsg(%struct.msghdr* %0, i32 %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_extended_err*, align 8
  %6 = alloca %struct.scm_timestamping*, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_pktinfo*, align 8
  %10 = alloca %struct.in6_pktinfo*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sock_extended_err* null, %struct.sock_extended_err** %5, align 8
  store %struct.scm_timestamping* null, %struct.scm_timestamping** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %12 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %11)
  store %struct.cmsghdr* %12, %struct.cmsghdr** %7, align 8
  br label %13

13:                                               ; preds = %185, %2
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %15 = icmp ne %struct.cmsghdr* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %18 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %189

23:                                               ; preds = %21
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %25 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOL_SOCKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %31 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCM_TIMESTAMPING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %37 = call i64 @CMSG_DATA(%struct.cmsghdr* %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.scm_timestamping*
  store %struct.scm_timestamping* %39, %struct.scm_timestamping** %6, align 8
  br label %166

40:                                               ; preds = %29, %23
  %41 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %42 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SOL_IP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IP_RECVERR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %54 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOL_IPV6, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %60 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IPV6_RECVERR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %66 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SOL_PACKET, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %64
  %71 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %72 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PACKET_TX_TIMESTAMP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70, %58, %46
  %77 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %78 = call i64 @CMSG_DATA(%struct.cmsghdr* %77)
  %79 = inttoptr i64 %78 to i8*
  %80 = bitcast i8* %79 to %struct.sock_extended_err*
  store %struct.sock_extended_err* %80, %struct.sock_extended_err** %5, align 8
  %81 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %82 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ENOMSG, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %76
  %87 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %88 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SO_EE_ORIGIN_TIMESTAMPING, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86, %76
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %95 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %99 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %100)
  store %struct.sock_extended_err* null, %struct.sock_extended_err** %5, align 8
  br label %102

102:                                              ; preds = %92, %86
  br label %165

103:                                              ; preds = %70, %64
  %104 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %105 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SOL_IP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %111 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IP_PKTINFO, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %117 = call i64 @CMSG_DATA(%struct.cmsghdr* %116)
  %118 = inttoptr i64 %117 to i8*
  %119 = bitcast i8* %118 to %struct.in_pktinfo*
  store %struct.in_pktinfo* %119, %struct.in_pktinfo** %9, align 8
  %120 = load i32, i32* @AF_INET, align 4
  %121 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %122 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %125 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %124, i32 0, i32 1
  %126 = load %struct.in_pktinfo*, %struct.in_pktinfo** %9, align 8
  %127 = getelementptr inbounds %struct.in_pktinfo, %struct.in_pktinfo* %126, i32 0, i32 0
  %128 = call i32 @print_pktinfo(i32 %120, i32 %123, i32* %125, i32* %127)
  br label %164

129:                                              ; preds = %109, %103
  %130 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %131 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SOL_IPV6, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %153

135:                                              ; preds = %129
  %136 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %137 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IPV6_PKTINFO, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %143 = call i64 @CMSG_DATA(%struct.cmsghdr* %142)
  %144 = inttoptr i64 %143 to i8*
  %145 = bitcast i8* %144 to %struct.in6_pktinfo*
  store %struct.in6_pktinfo* %145, %struct.in6_pktinfo** %10, align 8
  %146 = load i32, i32* @AF_INET6, align 4
  %147 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %10, align 8
  %148 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %10, align 8
  %151 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %150, i32 0, i32 0
  %152 = call i32 @print_pktinfo(i32 %146, i32 %149, i32* null, i32* %151)
  br label %163

153:                                              ; preds = %135, %129
  %154 = load i32, i32* @stderr, align 4
  %155 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %156 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %160 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %158, i64 %161)
  br label %163

163:                                              ; preds = %153, %141
  br label %164

164:                                              ; preds = %163, %115
  br label %165

165:                                              ; preds = %164, %102
  br label %166

166:                                              ; preds = %165, %35
  %167 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %168 = icmp ne %struct.sock_extended_err* %167, null
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = load %struct.scm_timestamping*, %struct.scm_timestamping** %6, align 8
  %171 = icmp ne %struct.scm_timestamping* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load %struct.scm_timestamping*, %struct.scm_timestamping** %6, align 8
  %174 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %175 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sock_extended_err*, %struct.sock_extended_err** %5, align 8
  %178 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @print_timestamp(%struct.scm_timestamping* %173, i32 %176, i32 %179, i32 %180)
  store %struct.sock_extended_err* null, %struct.sock_extended_err** %5, align 8
  store %struct.scm_timestamping* null, %struct.scm_timestamping** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %172, %169, %166
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %187 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %188 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %186, %struct.cmsghdr* %187)
  store %struct.cmsghdr* %188, %struct.cmsghdr** %7, align 8
  br label %13

189:                                              ; preds = %21
  %190 = load i32, i32* %8, align 4
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* @stderr, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %192, %189
  ret void
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @print_pktinfo(i32, i32, i32*, i32*) #1

declare dso_local i32 @print_timestamp(%struct.scm_timestamping*, i32, i32, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
