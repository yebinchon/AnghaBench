; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_liolib.c_aux_close.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_liolib.c_aux_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aux_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_close(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32** @tofilep(i32* %6)
  store i32** %7, i32*** %4, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i32*, i32** @stdin, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** @stdout, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @stderr, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %12, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushliteral(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @fclose(i32* %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32**, i32*** %4, align 8
  store i32* null, i32** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pushresult(i32* %34, i32 %35, i32* null)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32** @tofilep(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @pushresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
