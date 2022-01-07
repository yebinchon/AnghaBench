; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_removeentry.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_removeentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TDEADKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @removeentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removeentry(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @gval(i32* %3)
  %5 = call i32 @ttisnil(i32 %4)
  %6 = call i32 @lua_assert(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @gkey(i32* %7)
  %9 = call i64 @ttype(i32 %8)
  %10 = load i64, i64* @LUA_TDEADKEY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @gkey(i32* %13)
  %15 = call i64 @iscollectable(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @gkey(i32* %18)
  %20 = load i64, i64* @LUA_TDEADKEY, align 8
  %21 = call i32 @setttype(i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %17, %12, %1
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ttisnil(i32) #1

declare dso_local i32 @gval(i32*) #1

declare dso_local i64 @ttype(i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i64 @iscollectable(i32) #1

declare dso_local i32 @setttype(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
