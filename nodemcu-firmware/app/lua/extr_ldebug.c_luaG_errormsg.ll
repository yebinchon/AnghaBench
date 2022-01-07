; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldebug.c_luaG_errormsg.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldebug.c_luaG_errormsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@LUA_ERRERR = common dso_local global i32 0, align 4
@LUA_ERRRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaG_errormsg(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @restorestack(%struct.TYPE_8__* %9, i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ttisfunction(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @ttislightfunction(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @LUA_ERRERR, align 4
  %24 = call i32 @luaD_throw(%struct.TYPE_8__* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17, %8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @setobjs2s(%struct.TYPE_8__* %26, i64 %29, i64 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @setobjs2s(%struct.TYPE_8__* %35, i64 %39, i64 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = call i32 @incr_top(%struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 2
  %49 = call i32 @luaD_call(%struct.TYPE_8__* %44, i64 %48, i32 1)
  br label %50

50:                                               ; preds = %25, %1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = load i32, i32* @LUA_ERRRUN, align 4
  %53 = call i32 @luaD_throw(%struct.TYPE_8__* %51, i32 %52)
  ret void
}

declare dso_local i64 @restorestack(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ttisfunction(i64) #1

declare dso_local i32 @ttislightfunction(i64) #1

declare dso_local i32 @luaD_throw(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @incr_top(%struct.TYPE_8__*) #1

declare dso_local i32 @luaD_call(%struct.TYPE_8__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
