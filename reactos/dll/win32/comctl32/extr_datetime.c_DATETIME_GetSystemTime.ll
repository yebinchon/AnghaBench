; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_GetSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_GetSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GDT_NONE = common dso_local global i32 0, align 4
@DTS_SHOWNONE = common dso_local global i32 0, align 4
@BM_GETCHECK = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i64 0, align 8
@GDT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @DATETIME_GetSystemTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DATETIME_GetSystemTime(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @GDT_NONE, align 4
  store i32 %9, i32* %3, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DTS_SHOWNONE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BM_GETCHECK, align 4
  %22 = call i64 @SendMessageW(i32 %20, i32 %21, i32 0, i32 0)
  %23 = load i64, i64* @BST_UNCHECKED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @GDT_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %17, %10
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @GDT_VALID, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
