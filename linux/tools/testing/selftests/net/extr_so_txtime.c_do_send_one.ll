; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_do_send_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_so_txtime.c_do_send_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timed_send = type { i32, i32 }
%struct.msghdr = type { i32, i8**, i32, %struct.iovec*, i32 }
%struct.iovec = type { i32, i32*, i32 }
%struct.cmsghdr = type { i32, i32, i32 }

@glob_tstart = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SCM_TXTIME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"write: 0B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.timed_send*)* @do_send_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send_one(i32 %0, %struct.timed_send* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timed_send*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca %struct.iovec, align 8
  %9 = alloca %struct.cmsghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timed_send* %1, %struct.timed_send** %4, align 8
  %12 = call i32 @CMSG_SPACE(i32 8)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = bitcast %struct.msghdr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = bitcast %struct.iovec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %19 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 3
  store %struct.iovec* %8, %struct.iovec** %22, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %25 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %2
  %29 = trunc i64 %13 to i32
  %30 = call i32 @memset(i8* %15, i32 0, i32 %29)
  %31 = bitcast i8* %15 to i8**
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i8** %31, i8*** %32, align 8
  %33 = trunc i64 %13 to i32
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i64, i64* @glob_tstart, align 8
  %36 = load %struct.timed_send*, %struct.timed_send** %4, align 8
  %37 = getelementptr inbounds %struct.timed_send, %struct.timed_send* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %35, %40
  store i64 %41, i64* %10, align 8
  %42 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %7)
  store %struct.cmsghdr* %42, %struct.cmsghdr** %9, align 8
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @SCM_TXTIME, align 4
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = call i32 @CMSG_LEN(i32 8)
  %50 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %51 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %53 = call i32 @CMSG_DATA(%struct.cmsghdr* %52)
  %54 = call i32 @memcpy(i32 %53, i64* %10, i32 8)
  br label %55

55:                                               ; preds = %28, %2
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @sendmsg(i32 %56, %struct.msghdr* %7, i32 0)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @error(i32 1, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
