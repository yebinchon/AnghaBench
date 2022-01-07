; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_check_property_format.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_check_property_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPV_FORMAT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@MPV_FORMAT_NODE = common dso_local global i32 0, align 4
@MPV_FORMAT_FLAG = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@MPV_FORMAT_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_property_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_property_format(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8*], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @lua_isnil(i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MPV_FORMAT_NONE, align 4
  store i32 %12, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = bitcast [6 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 48, i1 false)
  %15 = bitcast i8* %14 to [6 x i8*]*
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %20, align 16
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %24 = call i32 @luaL_checkoption(i32* %21, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %23)
  switch i32 %24, label %35 [
    i32 0, label %25
    i32 1, label %27
    i32 2, label %29
    i32 3, label %31
    i32 4, label %33
  ]

25:                                               ; preds = %13
  %26 = load i32, i32* @MPV_FORMAT_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %13
  %28 = load i32, i32* @MPV_FORMAT_NODE, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %13
  %30 = load i32, i32* @MPV_FORMAT_FLAG, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %13
  %32 = load i32, i32* @MPV_FORMAT_STRING, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %13
  %34 = load i32, i32* @MPV_FORMAT_DOUBLE, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %13
  %36 = call i32 (...) @abort() #4
  unreachable

37:                                               ; preds = %33, %31, %29, %27, %25, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @lua_isnil(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
