; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_GetItemHeight.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_GetItemHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LBS_OWNERDRAWVARIABLE = common dso_local global i32 0, align 4
@ERROR_INVALID_INDEX = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @LISTBOX_GetItemHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_GetItemHeight(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LBS_OWNERDRAWVARIABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %17
  %27 = load i32, i32* @ERROR_INVALID_INDEX, align 4
  %28 = call i32 @SetLastError(i32 %27)
  %29 = load i32, i32* @LB_ERR, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %12, %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %30, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
