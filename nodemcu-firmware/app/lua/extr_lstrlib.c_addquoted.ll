; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lstrlib.c_addquoted.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lstrlib.c_addquoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @addquoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addquoted(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @luaL_checklstring(i32* %9, i32 %10, i64* %7)
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @luaL_addchar(i32* %12, i8 signext 34)
  br label %14

14:                                               ; preds = %40, %3
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %7, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %35 [
    i32 34, label %22
    i32 92, label %22
    i32 10, label %22
    i32 13, label %29
    i32 0, label %32
  ]

22:                                               ; preds = %18, %18, %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @luaL_addchar(i32* %23, i8 signext 92)
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @luaL_addchar(i32* %25, i8 signext %27)
  br label %40

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @luaL_addlstring(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %40

32:                                               ; preds = %18
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @luaL_addlstring(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %40

35:                                               ; preds = %18
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @luaL_addchar(i32* %36, i8 signext %38)
  br label %40

40:                                               ; preds = %35, %32, %29, %22
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %14

43:                                               ; preds = %14
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @luaL_addchar(i32* %44, i8 signext 34)
  ret void
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
