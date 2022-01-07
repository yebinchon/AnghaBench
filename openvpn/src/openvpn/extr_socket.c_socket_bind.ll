; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_bind.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, %struct.addrinfo* }
%struct.gc_arena = type { i32 }

@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: Socket bind failed: Addr to bind has no %s record\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"setsockopt(IPV6_V6ONLY=%d)\00", align 1
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@M_NONFATAL = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Setting IPV6_V6ONLY=%d failed\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: Socket bind failed on local address %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PS_SHOW_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @socket_bind(i32 %0, %struct.addrinfo* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gc_arena, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.addrinfo* %1, %struct.addrinfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = call i32 (...) @gc_new()
  %15 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %17 = call i32 @ASSERT(%struct.addrinfo* %16)
  %18 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %18, %struct.addrinfo** %12, align 8
  br label %19

19:                                               ; preds = %30, %5
  %20 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %21 = icmp ne %struct.addrinfo* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 3
  %33 = load %struct.addrinfo*, %struct.addrinfo** %32, align 8
  store %struct.addrinfo* %33, %struct.addrinfo** %12, align 8
  br label %19

34:                                               ; preds = %28, %19
  %35 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %36 = icmp ne %struct.addrinfo* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @M_FATAL, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @addr_family_name(i32 %40)
  %42 = call i32 (i32, i8*, ...) @msg(i32 %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @AF_INET6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* @M_INFO, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i32, i8*, ...) @msg(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @IPPROTO_IPV6, align 4
  %57 = load i32, i32* @IPV6_V6ONLY, align 4
  %58 = bitcast i32* %13 to i8*
  %59 = call i64 @setsockopt(i32 %55, i32 %56, i32 %57, i8* %58, i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load i32, i32* @M_NONFATAL, align 4
  %63 = load i32, i32* @M_ERRNO, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (i32, i8*, ...) @msg(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %47
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @bind(i32 %69, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %68
  %79 = load i32, i32* @M_FATAL, align 4
  %80 = load i32, i32* @M_ERRNO, align 4
  %81 = or i32 %79, %80
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PS_SHOW_PORT, align 4
  %87 = call i32 @print_sockaddr_ex(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %86, %struct.gc_arena* %11)
  %88 = call i32 (i32, i8*, ...) @msg(i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 %87)
  br label %89

89:                                               ; preds = %78, %68
  %90 = call i32 @gc_free(%struct.gc_arena* %11)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @ASSERT(%struct.addrinfo*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @addr_family_name(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @print_sockaddr_ex(i32, i8*, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
