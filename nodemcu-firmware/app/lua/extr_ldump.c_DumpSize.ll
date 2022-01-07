; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_DumpSize.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_DumpSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@LUA_ERR_CC_INTOVERFLOW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @DumpSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpSize(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %52 [
    i32 1, label %11
    i32 2, label %22
    i32 4, label %37
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 255
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** @LUA_ERR_CC_INTOVERFLOW, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i32 @DumpChar(i32 %19, %struct.TYPE_8__* %20)
  br label %54

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 65535
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** @LUA_ERR_CC_INTOVERFLOW, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %5, align 4
  %31 = bitcast i32* %5 to i8*
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = call i32 @MaybeByteSwap(i8* %31, i32 2, %struct.TYPE_8__* %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i32 @DumpVar(i32 %34, %struct.TYPE_8__* %35)
  br label %54

37:                                               ; preds = %2
  %38 = load i32, i32* %3, align 4
  %39 = icmp ugt i32 %38, -2
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** @LUA_ERR_CC_INTOVERFLOW, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* %6, align 4
  %46 = bitcast i32* %6 to i8*
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = call i32 @MaybeByteSwap(i8* %46, i32 4, %struct.TYPE_8__* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @DumpVar(i32 %49, %struct.TYPE_8__* %50)
  br label %54

52:                                               ; preds = %2
  %53 = call i32 @lua_assert(i32 0)
  br label %54

54:                                               ; preds = %52, %44, %29, %18
  ret void
}

declare dso_local i32 @DumpChar(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MaybeByteSwap(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @DumpVar(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
