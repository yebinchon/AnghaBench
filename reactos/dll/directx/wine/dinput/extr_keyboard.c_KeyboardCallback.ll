; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_KeyboardCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_KeyboardCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@DISCL_EXCLUSIVE = common dso_local global i32 0, align 4
@WM_KEYDOWN = common dso_local global i64 0, align 8
@WM_KEYUP = common dso_local global i64 0, align 8
@WM_SYSKEYDOWN = common dso_local global i64 0, align 8
@WM_SYSKEYUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"(%p) wp %08lx, lp %08lx, vk %02x, scan %02x\0A\00", align 1
@DIK_RSHIFT = common dso_local global i32 0, align 4
@DIK_PAUSE = common dso_local global i32 0, align 4
@DIK_NUMLOCK = common dso_local global i32 0, align 4
@DIK_SUBTRACT = common dso_local global i32 0, align 4
@LLKHF_EXTENDED = common dso_local global i32 0, align 4
@LLKHF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" setting %02X to %02X\0A\00", align 1
@DIDFT_PSHBUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @KeyboardCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KeyboardCallback(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_8__* @impl_from_IDirectInputDevice8A(i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DISCL_EXCLUSIVE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @WM_KEYDOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @WM_KEYUP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @WM_SYSKEYDOWN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @WM_SYSKEYUP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %145

39:                                               ; preds = %34, %30, %26, %3
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42, i64 %43, i32 %46, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %62 [
    i32 129, label %54
    i32 130, label %56
    i32 131, label %58
    i32 128, label %60
  ]

54:                                               ; preds = %39
  %55 = load i32, i32* @DIK_RSHIFT, align 4
  store i32 %55, i32* %9, align 4
  br label %84

56:                                               ; preds = %39
  %57 = load i32, i32* @DIK_PAUSE, align 4
  store i32 %57, i32* %9, align 4
  br label %84

58:                                               ; preds = %39
  %59 = load i32, i32* @DIK_NUMLOCK, align 4
  store i32 %59, i32* %9, align 4
  br label %84

60:                                               ; preds = %39
  %61 = load i32, i32* @DIK_SUBTRACT, align 4
  store i32 %61, i32* %9, align 4
  br label %84

62:                                               ; preds = %39
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @map_dik_code(i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LLKHF_EXTENDED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %62
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, 128
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %62
  br label %84

84:                                               ; preds = %83, %60, %58, %56, %54
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LLKHF_UP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 128
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %93, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %84
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %145

104:                                              ; preds = %84
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = call i32 @EnterCriticalSection(i32* %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @DIDFT_MAKEINSTANCE(i32 %126)
  %128 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (...) @GetCurrentTime()
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = call i32 @queue_event(i32 %125, i32 %129, i32 %130, i32 %131, i32 %137)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = call i32 @LeaveCriticalSection(i32* %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %104, %102, %38
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_8__* @impl_from_IDirectInputDevice8A(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i32 @map_dik_code(i32, i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @queue_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIDFT_MAKEINSTANCE(i32) #1

declare dso_local i32 @GetCurrentTime(...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
