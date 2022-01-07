; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_DumpIntWithSize.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_DumpIntWithSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@LUA_ERR_CC_INTOVERFLOW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_6__*)* @DumpIntWithSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpIntWithSize(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %60 [
    i32 1, label %10
    i32 2, label %24
    i32 4, label %42
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, -128
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %10
  %17 = load i8*, i8** @LUA_ERR_CC_INTOVERFLOW, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = call i32 @DumpChar(i32 %21, %struct.TYPE_6__* %22)
  br label %62

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 32767
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, -32768
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** @LUA_ERR_CC_INTOVERFLOW, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %7, align 4
  %36 = bitcast i32* %7 to i8*
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = call i32 @MaybeByteSwap(i8* %36, i32 2, %struct.TYPE_6__* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = call i32 @DumpVar(i32 %39, %struct.TYPE_6__* %40)
  br label %62

42:                                               ; preds = %3
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 2147483646
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, -2147483647
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** @LUA_ERR_CC_INTOVERFLOW, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %8, align 4
  %54 = bitcast i32* %8 to i8*
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = call i32 @MaybeByteSwap(i8* %54, i32 4, %struct.TYPE_6__* %55)
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = call i32 @DumpVar(i32 %57, %struct.TYPE_6__* %58)
  br label %62

60:                                               ; preds = %3
  %61 = call i32 @lua_assert(i32 0)
  br label %62

62:                                               ; preds = %60, %52, %34, %20
  ret void
}

declare dso_local i32 @DumpChar(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @MaybeByteSwap(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DumpVar(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
