; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_get_notifycode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_get_notifycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TVN_SELCHANGINGA = common dso_local global i32 0, align 4
@TVN_SELCHANGEDA = common dso_local global i32 0, align 4
@TVN_GETDISPINFOA = common dso_local global i32 0, align 4
@TVN_SETDISPINFOA = common dso_local global i32 0, align 4
@TVN_ITEMEXPANDINGA = common dso_local global i32 0, align 4
@TVN_ITEMEXPANDEDA = common dso_local global i32 0, align 4
@TVN_BEGINDRAGA = common dso_local global i32 0, align 4
@TVN_BEGINRDRAGA = common dso_local global i32 0, align 4
@TVN_DELETEITEMA = common dso_local global i32 0, align 4
@TVN_BEGINLABELEDITA = common dso_local global i32 0, align 4
@TVN_ENDLABELEDITA = common dso_local global i32 0, align 4
@TVN_GETINFOTIPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @get_notifycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_notifycode(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 130, label %14
    i32 134, label %16
    i32 128, label %18
    i32 131, label %20
    i32 132, label %22
    i32 139, label %24
    i32 137, label %26
    i32 136, label %28
    i32 138, label %30
    i32 135, label %32
    i32 133, label %34
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @TVN_SELCHANGINGA, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %10
  %15 = load i32, i32* @TVN_SELCHANGEDA, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %10
  %17 = load i32, i32* @TVN_GETDISPINFOA, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %10
  %19 = load i32, i32* @TVN_SETDISPINFOA, align 4
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %10
  %21 = load i32, i32* @TVN_ITEMEXPANDINGA, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %10
  %23 = load i32, i32* @TVN_ITEMEXPANDEDA, align 4
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %10
  %25 = load i32, i32* @TVN_BEGINDRAGA, align 4
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %10
  %27 = load i32, i32* @TVN_BEGINRDRAGA, align 4
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %10
  %29 = load i32, i32* @TVN_DELETEITEMA, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %10
  %31 = load i32, i32* @TVN_BEGINLABELEDITA, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %10
  %33 = load i32, i32* @TVN_ENDLABELEDITA, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %10
  %35 = load i32, i32* @TVN_GETINFOTIPA, align 4
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
