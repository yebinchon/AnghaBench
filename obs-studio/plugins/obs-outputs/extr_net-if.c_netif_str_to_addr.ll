; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_str_to_addr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_str_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_str_to_addr(%struct.sockaddr_storage* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %11 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 4)
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @strchr(i8* %17, i8 signext 58)
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @AF_INET6, align 4
  br label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @AF_INET, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %30 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 4, i32* %31, align 4
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %33 = bitcast %struct.sockaddr_storage* %32 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %33, %struct.sockaddr_in** %9, align 8
  %34 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = call i64 @inet_pton(i32 %36, i8* %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 4, i64 4
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %42, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @inet_pton(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
