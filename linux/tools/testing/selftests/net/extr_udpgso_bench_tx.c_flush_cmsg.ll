; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_flush_cmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso_bench_tx.c_flush_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32, i32 }
%struct.sock_extended_err = type { i32, i32, i32, i64, i64 }
%struct.scm_timestamping = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SO_TIMESTAMPING = common dso_local global i32 0, align 4
@cfg_tx_ts = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@stat_tx_ts_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown SOL_SOCKET cmsg type=%u\0A\00", align 1
@stat_tx_ts = common dso_local global i32 0, align 4
@cfg_verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"received ICMP error: type=%u, code=%u\0A\00", align 1
@stat_zcopies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"received packet with local origin: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"received packet with origin: %u\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown IP msg type=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown cmsg level=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmsghdr*)* @flush_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_cmsg(%struct.cmsghdr* %0) #0 {
  %2 = alloca %struct.cmsghdr*, align 8
  %3 = alloca %struct.sock_extended_err*, align 8
  %4 = alloca %struct.scm_timestamping*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cmsghdr* %0, %struct.cmsghdr** %2, align 8
  %8 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %9 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %109 [
    i32 133, label %11
    i32 135, label %45
    i32 134, label %45
  ]

11:                                               ; preds = %1
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %13 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SO_TIMESTAMPING, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load i32, i32* @cfg_tx_ts, align 4
  %19 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2, i32 0
  store i32 %22, i32* %7, align 4
  %23 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %24 = call i64 @CMSG_DATA(%struct.cmsghdr* %23)
  %25 = inttoptr i64 %24 to %struct.scm_timestamping*
  store %struct.scm_timestamping* %25, %struct.scm_timestamping** %4, align 8
  %26 = load %struct.scm_timestamping*, %struct.scm_timestamping** %4, align 8
  %27 = getelementptr inbounds %struct.scm_timestamping, %struct.scm_timestamping* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @stat_tx_ts_errors, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @stat_tx_ts_errors, align 4
  br label %38

38:                                               ; preds = %35, %17
  br label %44

39:                                               ; preds = %11
  %40 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %41 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %38
  br label %114

45:                                               ; preds = %1, %1
  %46 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %47 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %103 [
    i32 136, label %49
    i32 137, label %49
  ]

49:                                               ; preds = %45, %45
  %50 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %51 = call i64 @CMSG_DATA(%struct.cmsghdr* %50)
  %52 = inttoptr i64 %51 to %struct.sock_extended_err*
  store %struct.sock_extended_err* %52, %struct.sock_extended_err** %3, align 8
  %53 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %54 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %97 [
    i32 129, label %56
    i32 132, label %59
    i32 131, label %59
    i32 128, label %72
    i32 130, label %87
  ]

56:                                               ; preds = %49
  %57 = load i32, i32* @stat_tx_ts, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @stat_tx_ts, align 4
  br label %102

59:                                               ; preds = %49, %49
  %60 = load i32, i32* @cfg_verbose, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %65 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %68 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %62, %59
  br label %102

72:                                               ; preds = %49
  %73 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %74 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %5, align 8
  %76 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %77 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %79, %80
  %82 = add nsw i64 %81, 1
  %83 = load i32, i32* @stat_zcopies, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* @stat_zcopies, align 4
  br label %102

87:                                               ; preds = %49
  %88 = load i32, i32* @cfg_verbose, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, i32* @stderr, align 4
  %92 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %93 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %87
  br label %102

97:                                               ; preds = %49
  %98 = load %struct.sock_extended_err*, %struct.sock_extended_err** %3, align 8
  %99 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @error(i32 0, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %96, %72, %71, %56
  br label %108

103:                                              ; preds = %45
  %104 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %105 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @error(i32 0, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %102
  br label %114

109:                                              ; preds = %1
  %110 = load %struct.cmsghdr*, %struct.cmsghdr** %2, align 8
  %111 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @error(i32 0, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %108, %44
  ret void
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @error(i32, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
