; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_file_softmagic.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_file_softmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mlist* }
%struct.mlist = type { i32, i32, %struct.mlist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_softmagic(%struct.TYPE_4__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlist*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.mlist*, %struct.mlist** %13, align 8
  %15 = getelementptr inbounds %struct.mlist, %struct.mlist* %14, i32 0, i32 2
  %16 = load %struct.mlist*, %struct.mlist** %15, align 8
  store %struct.mlist* %16, %struct.mlist** %10, align 8
  br label %17

17:                                               ; preds = %39, %4
  %18 = load %struct.mlist*, %struct.mlist** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.mlist*, %struct.mlist** %20, align 8
  %22 = icmp ne %struct.mlist* %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = load %struct.mlist*, %struct.mlist** %10, align 8
  %26 = getelementptr inbounds %struct.mlist, %struct.mlist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlist*, %struct.mlist** %10, align 8
  %29 = getelementptr inbounds %struct.mlist, %struct.mlist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @match(%struct.TYPE_4__* %24, i32 %27, i32 %30, i32* %31, i64 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.mlist*, %struct.mlist** %10, align 8
  %41 = getelementptr inbounds %struct.mlist, %struct.mlist* %40, i32 0, i32 2
  %42 = load %struct.mlist*, %struct.mlist** %41, align 8
  store %struct.mlist* %42, %struct.mlist** %10, align 8
  br label %17

43:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @match(%struct.TYPE_4__*, i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
