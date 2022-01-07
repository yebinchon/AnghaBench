; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_lua_put_line.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lua.c_lua_put_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32 }

@LUA_MAXINPUT = common dso_local global i64 0, align 8
@gLoad = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"Get command: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lua_put_line(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @LUA_MAXINPUT, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLoad, i32 0, i32 0), align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %8, %2
  store i32 0, i32* %3, align 4
  br label %28

17:                                               ; preds = %13
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLoad, i32 0, i32 1), align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @memcpy(i8* %18, i8* %19, i64 %20)
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLoad, i32 0, i32 1), align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLoad, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLoad, i32 0, i32 2), align 8
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLoad, i32 0, i32 1), align 8
  %27 = call i32 @NODE_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @NODE_DBG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
