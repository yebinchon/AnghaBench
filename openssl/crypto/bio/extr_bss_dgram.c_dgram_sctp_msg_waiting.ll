; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_dgram.c_dgram_sctp_msg_waiting.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_dgram.c_dgram_sctp_msg_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%union.sctp_notification = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.msghdr = type { i32, i32, i64, i32*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i32, i8*)* }

@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_AUTHENTICATION_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @dgram_sctp_msg_waiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_sctp_msg_waiting(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.sctp_notification, align 8
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca %struct.iovec, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  br label %14

14:                                               ; preds = %97, %1
  %15 = call i32 @memset(%union.sctp_notification* %6, i32 0, i32 8)
  %16 = bitcast %union.sctp_notification* %6 to i8*
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32 8, i32* %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 6
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 4
  store %struct.iovec* %8, %struct.iovec** %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @F_GETFL, align 4
  %30 = call i32 @fcntl(i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @F_SETFL, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = call i32 @fcntl(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MSG_PEEK, align 4
  %41 = call i32 @recvmsg(i32 %39, %struct.msghdr* %7, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @F_SETFL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @fcntl(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %14
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MSG_NOTIFICATION, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = call i32 @memset(%union.sctp_notification* %6, i32 0, i32 8)
  %58 = bitcast %union.sctp_notification* %6 to i8*
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32 8, i32* %60, align 8
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 6
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 4
  store %struct.iovec* %8, %struct.iovec** %63, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @recvmsg(i32 %70, %struct.msghdr* %7, i32 0)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_9__*, i32, i8*)*, i32 (%struct.TYPE_9__*, i32, i8*)** %73, align 8
  %75 = icmp ne i32 (%struct.TYPE_9__*, i32, i8*)* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %56
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_9__*, i32, i8*)*, i32 (%struct.TYPE_9__*, i32, i8*)** %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = bitcast %union.sctp_notification* %6 to i8*
  %85 = call i32 %79(%struct.TYPE_9__* %80, i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %76, %56
  br label %87

87:                                               ; preds = %86, %50, %14
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MSG_NOTIFICATION, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %91, %88
  %98 = phi i1 [ false, %88 ], [ %96, %91 ]
  br i1 %98, label %14, label %99

99:                                               ; preds = %97
  %100 = load i32, i32* %4, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 1, i32* %2, align 4
  br label %104

103:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%union.sctp_notification*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
