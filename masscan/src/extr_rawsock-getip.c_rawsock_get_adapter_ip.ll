; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-getip.c_rawsock_get_adapter_ip.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-getip.c_rawsock_get_adapter_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.sockaddr, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFADDR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ERROR:'%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rawsock_get_adapter_ip(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifreq, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @AF_INET, align 4
  %10 = load i32, i32* @SOCK_DGRAM, align 4
  %11 = call i32 @socket(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcpy_s(i32 %16, i32 %17, i8* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SIOCGIFADDR, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, %struct.ifreq* %5)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @close(i32 %31)
  store i32 0, i32* %2, align 4
  br label %44

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @close(i32 %34)
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  store %struct.sockaddr* %36, %struct.sockaddr** %7, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %38, %struct.sockaddr_in** %6, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %33, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strcpy_s(i32, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
