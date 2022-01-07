; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeFreeOpArray.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeFreeOpArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @vdbeFreeOpArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdbeFreeOpArray(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %14
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  br label %16

16:                                               ; preds = %36, %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp uge %struct.TYPE_6__* %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @freeP4(i32* %26, i64 %29, i32 %33)
  br label %35

35:                                               ; preds = %25, %20
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 -1
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %7, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @sqlite3DbFreeNN(i32* %40, %struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32 @freeP4(i32*, i64, i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
