; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_read_vsock_stat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_read_vsock_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.nlmsghdr = type { i32, i64 }
%struct.nlmsgerr = type { i32 }

@AF_NETLINK = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@NETLINK_SOCK_DIAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"short read of %zd bytes\0A\00", align 1
@NLMSG_DONE = common dso_local global i32 0, align 4
@NLMSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NLMSG_ERROR\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"NLMSG_ERROR\00", align 1
@SOCK_DIAG_BY_FAMILY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"unexpected nlmsg_type %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"short vsock_diag_msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*)* @read_vsock_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_vsock_stat(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca [1024 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsgerr*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %8 = load i32, i32* @AF_NETLINK, align 4
  %9 = load i32, i32* @SOCK_RAW, align 4
  %10 = load i32, i32* @NETLINK_SOCK_DIAG, align 4
  %11 = call i32 @socket(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @send_req(i32 %19)
  br label %21

21:                                               ; preds = %112, %18
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds [1024 x i64], [1024 x i64]* %3, i64 0, i64 0
  %24 = call i32 @recv_resp(i32 %22, i64* %23, i32 8192)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %113

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 16
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %28
  %39 = getelementptr inbounds [1024 x i64], [1024 x i64]* %3, i64 0, i64 0
  %40 = bitcast i64* %39 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %40, %struct.nlmsghdr** %5, align 8
  br label %41

41:                                               ; preds = %104, %38
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @NLMSG_OK(%struct.nlmsghdr* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %112

46:                                               ; preds = %41
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %48 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NLMSG_DONE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %113

53:                                               ; preds = %46
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %55 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NLMSG_ERROR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %61 = call %struct.nlmsgerr* @NLMSG_DATA(%struct.nlmsghdr* %60)
  store %struct.nlmsgerr* %61, %struct.nlmsgerr** %7, align 8
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %63 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @NLMSG_LENGTH(i32 4)
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %76

70:                                               ; preds = %59
  %71 = load %struct.nlmsgerr*, %struct.nlmsgerr** %7, align 8
  %72 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* @errno, align 4
  %75 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  %78 = call i32 @exit(i32 %77) #3
  unreachable

79:                                               ; preds = %53
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %81 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SOCK_DIAG_BY_FAMILY, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32, i32* @stderr, align 4
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %88 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable

93:                                               ; preds = %79
  %94 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %95 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @NLMSG_LENGTH(i32 4)
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = call i32 @exit(i32 %102) #3
  unreachable

104:                                              ; preds = %93
  %105 = load %struct.list_head*, %struct.list_head** %2, align 8
  %106 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %107 = call %struct.nlmsgerr* @NLMSG_DATA(%struct.nlmsghdr* %106)
  %108 = call i32 @add_vsock_stat(%struct.list_head* %105, %struct.nlmsgerr* %107)
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call %struct.nlmsghdr* @NLMSG_NEXT(%struct.nlmsghdr* %109, i32 %110)
  store %struct.nlmsghdr* %111, %struct.nlmsghdr** %5, align 8
  br label %41

112:                                              ; preds = %41
  br label %21

113:                                              ; preds = %52, %27
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @close(i32 %114)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @send_req(i32) #1

declare dso_local i32 @recv_resp(i32, i64*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @NLMSG_OK(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.nlmsgerr* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i64 @NLMSG_LENGTH(i32) #1

declare dso_local i32 @add_vsock_stat(%struct.list_head*, %struct.nlmsgerr*) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEXT(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
