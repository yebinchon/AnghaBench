; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_dns_getaddrinfo.inc_nn_dns_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_dns_getaddrinfo.inc_nn_dns_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_dns = type { i32, %struct.nn_dns_result* }
%struct.nn_dns_result = type { i8, i64, i32 }
%struct.addrinfo = type { i8*, i64, i32, i32, i32 }

@NN_SOCKADDR_MAX = common dso_local global i32 0, align 4
@NN_DNS_STATE_IDLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_V4MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dns_start(%struct.nn_dns* %0, i8* %1, i64 %2, i32 %3, %struct.nn_dns_result* %4) #0 {
  %6 = alloca %struct.nn_dns*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nn_dns_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.nn_dns* %0, %struct.nn_dns** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nn_dns_result* %4, %struct.nn_dns_result** %10, align 8
  %17 = load i32, i32* @NN_SOCKADDR_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %22 = load i32, i32* @NN_DNS_STATE_IDLE, align 4
  %23 = call i32 @nn_assert_state(%struct.nn_dns* %21, i32 %22)
  %24 = load %struct.nn_dns_result*, %struct.nn_dns_result** %10, align 8
  %25 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %26 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %25, i32 0, i32 1
  store %struct.nn_dns_result* %24, %struct.nn_dns_result** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %31 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %30, i32 0, i32 1
  %32 = load %struct.nn_dns_result*, %struct.nn_dns_result** %31, align 8
  %33 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %32, i32 0, i32 0
  %34 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %35 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %34, i32 0, i32 1
  %36 = load %struct.nn_dns_result*, %struct.nn_dns_result** %35, align 8
  %37 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %36, i32 0, i32 1
  %38 = call i32 @nn_literal_resolve(i8* %27, i64 %28, i32 %29, i8* %33, i64* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %5
  %42 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %43 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %42, i32 0, i32 1
  %44 = load %struct.nn_dns_result*, %struct.nn_dns_result** %43, align 8
  %45 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %47 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %46, i32 0, i32 0
  %48 = call i32 @nn_fsm_start(i32* %47)
  store i32 1, i32* %16, align 4
  br label %122

49:                                               ; preds = %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @errnum_assert(i32 %54, i32 %56)
  %58 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @AF_INET, align 4
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %62, i32* %63, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load i32, i32* @AF_INET6, align 4
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %18, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @nn_assert(i32 %70)
  %72 = load i32, i32* @SOCK_STREAM, align 4
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @memcpy(i8* %20, i8* %74, i64 %75)
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %20, i64 %77
  store i8 0, i8* %78, align 1
  %79 = call i32 @getaddrinfo(i8* %20, i32* null, %struct.addrinfo* %12, %struct.addrinfo** %13)
  %80 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %81 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %80, i32 0, i32 1
  %82 = load %struct.nn_dns_result*, %struct.nn_dns_result** %81, align 8
  %83 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 8
  %84 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %85 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %84, i32 0, i32 1
  %86 = load %struct.nn_dns_result*, %struct.nn_dns_result** %85, align 8
  %87 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %67
  %91 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %92 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %91, i32 0, i32 0
  %93 = call i32 @nn_fsm_start(i32* %92)
  store i32 1, i32* %16, align 4
  br label %122

94:                                               ; preds = %67
  %95 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %96 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %95, i32 0, i32 1
  %97 = load %struct.nn_dns_result*, %struct.nn_dns_result** %96, align 8
  %98 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %100 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %99, i32 0, i32 1
  %101 = load %struct.nn_dns_result*, %struct.nn_dns_result** %100, align 8
  %102 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %101, i32 0, i32 0
  %103 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %107 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @memcpy(i8* %102, i8* %105, i64 %108)
  %110 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %114 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %113, i32 0, i32 1
  %115 = load %struct.nn_dns_result*, %struct.nn_dns_result** %114, align 8
  %116 = getelementptr inbounds %struct.nn_dns_result, %struct.nn_dns_result* %115, i32 0, i32 1
  store i64 %112, i64* %116, align 8
  %117 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %118 = call i32 @freeaddrinfo(%struct.addrinfo* %117)
  %119 = load %struct.nn_dns*, %struct.nn_dns** %6, align 8
  %120 = getelementptr inbounds %struct.nn_dns, %struct.nn_dns* %119, i32 0, i32 0
  %121 = call i32 @nn_fsm_start(i32* %120)
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %94, %90, %41
  %123 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %16, align 4
  switch i32 %124, label %126 [
    i32 0, label %125
    i32 1, label %125
  ]

125:                                              ; preds = %122, %122
  ret void

126:                                              ; preds = %122
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nn_assert_state(%struct.nn_dns*, i32) #2

declare dso_local i32 @nn_literal_resolve(i8*, i64, i32, i8*, i64*) #2

declare dso_local i32 @nn_fsm_start(i32*) #2

declare dso_local i32 @errnum_assert(i32, i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @nn_assert(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
