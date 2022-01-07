; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_devsett.c_pCDevSettings_GetMonitorDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_devsett.c_pCDevSettings_GetMonitorDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@LMEM_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @pCDevSettings_GetMonitorDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pCDevSettings_GetMonitorDevice(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 8, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @EnumDisplayDevicesW(i32* %6, i32 0, %struct.TYPE_3__* %3, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @LMEM_FIXED, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wcslen(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32* @LocalAlloc(i32 %10, i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wcscpy(i32* %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %9
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32*, i32** %4, align 8
  ret i32* %28
}

declare dso_local i64 @EnumDisplayDevicesW(i32*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
