; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-getroute.c_parseRoutes.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-getroute.c_parseRoutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.route_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.rtmsg = type { i64, i64 }
%struct.rtattr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@RT_TABLE_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.route_info*)* @parseRoutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseRoutes(%struct.nlmsghdr* %0, %struct.route_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.route_info*, align 8
  %6 = alloca %struct.rtmsg*, align 8
  %7 = alloca %struct.rtattr*, align 8
  %8 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store %struct.route_info* %1, %struct.route_info** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %10 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %9)
  %11 = inttoptr i64 %10 to %struct.rtmsg*
  store %struct.rtmsg* %11, %struct.rtmsg** %6, align 8
  %12 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8
  %13 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8
  %20 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RT_TABLE_MAIN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %79

25:                                               ; preds = %18
  %26 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8
  %27 = call i64 @RTM_RTA(%struct.rtmsg* %26)
  %28 = inttoptr i64 %27 to %struct.rtattr*
  store %struct.rtattr* %28, %struct.rtattr** %7, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %30 = call i32 @RTM_PAYLOAD(%struct.nlmsghdr* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %74, %25
  %32 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @RTA_OK(%struct.rtattr* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %31
  %37 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %38 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %73 [
    i32 129, label %40
    i32 130, label %49
    i32 128, label %57
    i32 131, label %65
  ]

40:                                               ; preds = %36
  %41 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %42 = call i64 @RTA_DATA(%struct.rtattr* %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.route_info*, %struct.route_info** %5, align 8
  %46 = getelementptr inbounds %struct.route_info, %struct.route_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @if_indextoname(i32 %44, i32 %47)
  br label %73

49:                                               ; preds = %36
  %50 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %51 = call i64 @RTA_DATA(%struct.rtattr* %50)
  %52 = inttoptr i64 %51 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.route_info*, %struct.route_info** %5, align 8
  %55 = getelementptr inbounds %struct.route_info, %struct.route_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %73

57:                                               ; preds = %36
  %58 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %59 = call i64 @RTA_DATA(%struct.rtattr* %58)
  %60 = inttoptr i64 %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.route_info*, %struct.route_info** %5, align 8
  %63 = getelementptr inbounds %struct.route_info, %struct.route_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %73

65:                                               ; preds = %36
  %66 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %67 = call i64 @RTA_DATA(%struct.rtattr* %66)
  %68 = inttoptr i64 %67 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.route_info*, %struct.route_info** %5, align 8
  %71 = getelementptr inbounds %struct.route_info, %struct.route_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %36, %65, %57, %49, %40
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call %struct.rtattr* @RTA_NEXT(%struct.rtattr* %75, i32 %76)
  store %struct.rtattr* %77, %struct.rtattr** %7, align 8
  br label %31

78:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %24, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i64 @RTM_RTA(%struct.rtmsg*) #1

declare dso_local i32 @RTM_PAYLOAD(%struct.nlmsghdr*) #1

declare dso_local i64 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @if_indextoname(i32, i32) #1

declare dso_local i64 @RTA_DATA(%struct.rtattr*) #1

declare dso_local %struct.rtattr* @RTA_NEXT(%struct.rtattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
