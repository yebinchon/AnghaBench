; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltable.c_luaH_get_ro.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltable.c_luaH_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_get_ro(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @ttype(i32* %8)
  switch i32 %9, label %34 [
    i32 130, label %10
    i32 128, label %12
    i32 129, label %17
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %11, i32** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @rawtsvalue(i32* %14)
  %16 = call i32* @luaH_getstr_ro(i8* %13, i32 %15)
  store i32* %16, i32** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @nvalue(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @lua_number2int(i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cast_num(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @nvalue(i32* %25)
  %27 = call i32 @luai_numeq(i32 %24, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @luaH_getnum_ro(i8* %30, i32 %31)
  store i32* %32, i32** %3, align 8
  br label %36

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %34, %29, %12, %10
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32* @luaH_getstr_ro(i8*, i32) #1

declare dso_local i32 @rawtsvalue(i32*) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @lua_number2int(i32, i32) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @cast_num(i32) #1

declare dso_local i32* @luaH_getnum_ro(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
