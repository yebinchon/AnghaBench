; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_networking.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_networking.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@iface = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"10.255.255.1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"2001::1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"11.11.11.0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"11.11.12.0\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"10.255.255.2\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"2001:babe:cafe:babe::\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"2001:cafe:babe::\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"2001::2\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"invalid test: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @usage(i8* %12)
  store i32 -1, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %58

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** @iface, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %50 [
    i32 0, label %34
    i32 1, label %36
    i32 2, label %38
    i32 3, label %40
    i32 4, label %42
    i32 5, label %44
    i32 6, label %46
    i32 7, label %48
  ]

34:                                               ; preds = %28
  %35 = call i32 @net__iface_up(i32 1)
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %28
  %37 = call i32 @net__iface_mtu_set(i32 1281)
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %28
  %39 = call i32 @net__addr_v4_add(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 24)
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %28
  %41 = call i32 @net__addr_v6_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 64)
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %28
  %43 = call i32 @net__route_v4_add(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 24, i32 0)
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %28
  %45 = call i32 @net__route_v4_add_gw(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %28
  %47 = call i32 @net__route_v6_add(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 64, i32 600)
  store i32 %47, i32* %3, align 4
  br label %58

48:                                               ; preds = %28
  %49 = call i32 @net__route_v6_add_gw(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 600)
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %28
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @usage(i8* %56)
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %48, %46, %44, %42, %40, %38, %36, %34, %20, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @net__iface_up(i32) #1

declare dso_local i32 @net__iface_mtu_set(i32) #1

declare dso_local i32 @net__addr_v4_add(i8*, i32) #1

declare dso_local i32 @net__addr_v6_add(i8*, i32) #1

declare dso_local i32 @net__route_v4_add(i8*, i32, i32) #1

declare dso_local i32 @net__route_v4_add_gw(i8*, i32, i8*, i32) #1

declare dso_local i32 @net__route_v6_add(i8*, i32, i32) #1

declare dso_local i32 @net__route_v6_add_gw(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
