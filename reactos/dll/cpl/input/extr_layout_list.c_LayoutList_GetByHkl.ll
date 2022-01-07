; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_layout_list.c_LayoutList_GetByHkl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_layout_list.c_LayoutList_GetByHkl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_4__* }

@_LayoutList = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @LayoutList_GetByHkl(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @HIWORD(i32 %6)
  %8 = and i32 %7, 61440
  %9 = icmp eq i32 %8, 61440
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @HIWORD(i32 %11)
  %13 = and i32 %12, 4095
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_LayoutList, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  br label %16

16:                                               ; preds = %28, %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %2, align 8
  br label %55

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  br label %16

32:                                               ; preds = %16
  br label %54

33:                                               ; preds = %1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_LayoutList, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %4, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @HIWORD(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @LOWORD(i32 %43)
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %2, align 8
  br label %55

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %4, align 8
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %32
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %55

55:                                               ; preds = %54, %46, %25
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %56
}

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
