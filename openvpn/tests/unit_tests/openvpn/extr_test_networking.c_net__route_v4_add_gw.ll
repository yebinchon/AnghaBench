; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_networking.c_net__route_v4_add_gw.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_networking.c_net__route_v4_add_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"CMD: ip route add %s/%d dev %s via %s\00", align 1
@iface = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c" metric %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @net__route_v4_add_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net__route_v4_add_gw(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %54

19:                                               ; preds = %15
  %20 = load i32, i32* @AF_INET, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @inet_pton(i32 %20, i8* %21, i32* %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %54

26:                                               ; preds = %19
  %27 = load i32, i32* @AF_INET, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @inet_pton(i32 %27, i8* %28, i32* %11)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %54

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ntohl(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ntohl(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** @iface, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39, i8* %40, i8* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %33
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** @iface, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @net_route_v4_add(i32* null, i32* %10, i32 %50, i32* %11, i8* %51, i32 0, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %32, %25, %18
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @net_route_v4_add(i32*, i32*, i32, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
