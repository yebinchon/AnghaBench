; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_get_addrs_nix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_net-if.c_netif_get_addrs_nix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif_saddr_data = type { i32 }
%struct.ifaddrs = type { i32, %struct.TYPE_3__*, %struct.ifaddrs* }
%struct.TYPE_3__ = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"getifaddrs() failed\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"getnameinfo() failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netif_saddr_data*)* @netif_get_addrs_nix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netif_get_addrs_nix(%struct.netif_saddr_data* %0) #0 {
  %2 = alloca %struct.netif_saddr_data*, align 8
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.netif_saddr_data* %0, %struct.netif_saddr_data** %2, align 8
  %10 = load i32, i32* @NI_MAXHOST, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i32 @getifaddrs(%struct.ifaddrs** %3)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  store %struct.ifaddrs* %19, %struct.ifaddrs** %4, align 8
  br label %20

20:                                               ; preds = %75, %18
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %22 = icmp ne %struct.ifaddrs* %21, null
  br i1 %22, label %23, label %79

23:                                               ; preds = %20
  %24 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %25 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp eq %struct.TYPE_3__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %30 = call i64 @is_loopback(%struct.ifaddrs* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %23
  br label %75

33:                                               ; preds = %28
  %34 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %35 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AF_INET, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AF_INET6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42, %33
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %48 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AF_INET, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 4, i64 4
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @NI_MAXHOST, align 4
  %57 = load i32, i32* @NI_NUMERICHOST, align 4
  %58 = call i32 @getnameinfo(%struct.TYPE_3__* %49, i32 %55, i8* %13, i32 %56, i32* null, i32 0, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @gai_strerror(i32 %62)
  %64 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %75

65:                                               ; preds = %46
  %66 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %67 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.netif_saddr_data*, %struct.netif_saddr_data** %2, align 8
  %70 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %71 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netif_push(%struct.TYPE_3__* %68, %struct.netif_saddr_data* %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %42
  br label %75

75:                                               ; preds = %74, %61, %32
  %76 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %77 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %76, i32 0, i32 2
  %78 = load %struct.ifaddrs*, %struct.ifaddrs** %77, align 8
  store %struct.ifaddrs* %78, %struct.ifaddrs** %4, align 8
  br label %20

79:                                               ; preds = %20
  %80 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %81 = call i32 @freeifaddrs(%struct.ifaddrs* %80)
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %16
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i64 @is_loopback(%struct.ifaddrs*) #2

declare dso_local i32 @getnameinfo(%struct.TYPE_3__*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @netif_push(%struct.TYPE_3__*, %struct.netif_saddr_data*, i32) #2

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
