; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-getroute.c_read_netlink.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-getroute.c_read_netlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"SOCK READ: \00", align 1
@NLMSG_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Error in received packet\00", align 1
@NLMSG_DONE = common dso_local global i64 0, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32, i32)* @read_netlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_netlink(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %77, %5
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %14, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %18, %20
  %22 = call i32 @recv(i32 %16, i8* %17, i64 %21, i32 0)
  store i32 %22, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %81

26:                                               ; preds = %15
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %28, %struct.nlmsghdr** %12, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @NLMSG_OK(%struct.nlmsghdr* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NLMSG_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %26
  %40 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %81

41:                                               ; preds = %33
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %43 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NLMSG_DONE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %79

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %58 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NLM_F_MULTI, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %79

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %67 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %73 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %74, %75
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i1 [ true, %65 ], [ %76, %71 ]
  br i1 %78, label %15, label %79

79:                                               ; preds = %77, %63, %47
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %39, %24
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @NLMSG_OK(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
