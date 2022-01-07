; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_commandv.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_commandv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"argument %d is not a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_commandv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_commandv(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [50 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.script_ctx* @get_ctx(i32* %8)
  store %struct.script_ctx* %9, %struct.script_ctx** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  %14 = getelementptr inbounds [50 x i8*], [50 x i8*]* %5, i64 0, i64 0
  %15 = call i32 @MP_ARRAY_SIZE(i8** %14)
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 (i32*, i8*, ...) @luaL_error(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @lua_tostring(i32* %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32*, i8*, ...) @luaL_error(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [50 x i8*], [50 x i8*]* %5, i64 0, i64 %39
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [50 x i8*], [50 x i8*]* %5, i64 0, i64 %46
  store i8* null, i8** %47, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [50 x i8*], [50 x i8*]* %5, i64 0, i64 0
  %53 = call i32 @mpv_command(i32 %51, i8** %52)
  %54 = call i32 @check_error(i32* %48, i32 %53)
  ret i32 %54
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @MP_ARRAY_SIZE(i8**) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @check_error(i32*, i32) #1

declare dso_local i32 @mpv_command(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
