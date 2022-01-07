; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_createConnection.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_createConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_TCP = common dso_local global i32 0, align 4
@TYPE_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"net.createConnection with net.UDP type\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"in next version\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"invalid type\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"net.createConnection with secure flag\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"secure connections not enabled\00", align 1
@TYPE_TCP_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_createConnection(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @TYPE_TCP, align 4
  %8 = call i32 @luaL_optlong(i32* %6, i32 1, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_optlong(i32* %9, i32 2, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TYPE_UDP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @platform_print_deprecation_note(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @net_createUDPSocket(i32* %16)
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TYPE_TCP, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 @platform_print_deprecation_note(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @TYPE_TCP_CLIENT, align 4
  %35 = call i32 @net_create(i32* %33, i32 %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %28, %22, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @luaL_optlong(i32*, i32, i32) #1

declare dso_local i32 @platform_print_deprecation_note(i8*, i8*) #1

declare dso_local i32 @net_createUDPSocket(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @net_create(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
