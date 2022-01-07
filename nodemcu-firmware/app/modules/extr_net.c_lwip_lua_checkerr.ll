; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_lwip_lua_checkerr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_lwip_lua_checkerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"buffer error\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"routing problem\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"in progress\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"illegal value\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"would block\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"connection aborted\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"connection reset\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"illegal argument\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"address in use\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"netif error\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"already connected\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwip_lua_checkerr(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %53 [
    i32 134, label %7
    i32 135, label %8
    i32 141, label %11
    i32 131, label %14
    i32 132, label %17
    i32 137, label %20
    i32 129, label %23
    i32 128, label %26
    i32 143, label %29
    i32 133, label %32
    i32 140, label %35
    i32 139, label %38
    i32 142, label %41
    i32 130, label %44
    i32 138, label %47
    i32 136, label %50
  ]

7:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @luaL_error(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  br label %56

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @luaL_error(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @luaL_error(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @luaL_error(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @luaL_error(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @luaL_error(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %2
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @luaL_error(i32* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %2
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %2
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @luaL_error(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %2
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @luaL_error(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %2
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @luaL_error(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %7
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
