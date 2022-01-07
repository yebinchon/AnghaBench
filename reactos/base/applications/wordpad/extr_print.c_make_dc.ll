; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_make_dc.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_make_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@devNames = common dso_local global i64 0, align 8
@devMode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @make_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_dc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @devNames, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %0
  %8 = load i64, i64* @devMode, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load i64, i64* @devNames, align 8
  %12 = call %struct.TYPE_6__* @GlobalLock(i64 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %2, align 8
  %13 = load i64, i64* @devMode, align 8
  %14 = call %struct.TYPE_6__* @GlobalLock(i64 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = ptrtoint %struct.TYPE_6__* %15 to i64
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = ptrtoint %struct.TYPE_6__* %21 to i64
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @CreateDCW(i64 %20, i64 %26, i32 0, %struct.TYPE_6__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = call i32 @GlobalUnlock(%struct.TYPE_6__* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = call i32 @GlobalUnlock(%struct.TYPE_6__* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %1, align 4
  br label %35

34:                                               ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_6__* @GlobalLock(i64) #1

declare dso_local i32 @CreateDCW(i64, i64, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GlobalUnlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
