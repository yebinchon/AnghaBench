; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_SendMouseNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_SendMouseNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i16, i16 }

@.str = private unnamed_addr constant [23 x i8] c"code %04x, lParam=%lx\0A\00", align 1
@GWLP_ID = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i32)* @STATUSBAR_SendMouseNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STATUSBAR_SendMouseNotify(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GWLP_ID, align 4
  %25 = call i32 @GetWindowLongPtrW(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @LOWORD(i32 %31)
  %33 = trunc i64 %32 to i16
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i16 %33, i16* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @HIWORD(i32 %36)
  %38 = trunc i64 %37 to i16
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i16 %38, i16* %40, align 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %43 = call i32 @STATUSBAR_InternalHitTest(%struct.TYPE_8__* %41, %struct.TYPE_10__* %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 196608, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WM_NOTIFY, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ptrtoint %struct.TYPE_9__* %12 to i32
  %55 = call i32 @SendMessageW(i32 %49, i32 %50, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %5
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @DefWindowProcW(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @STATUSBAR_InternalHitTest(%struct.TYPE_8__*, %struct.TYPE_10__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @DefWindowProcW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
