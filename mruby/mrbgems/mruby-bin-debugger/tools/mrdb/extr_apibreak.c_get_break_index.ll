; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_get_break_index.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_get_break_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i8 0, align 1
@TRUE = common dso_local global i8 0, align 1
@MRB_DEBUG_BREAK_INVALID_NO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64)* @get_break_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_break_index(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8, i8* @FALSE, align 1
  store i8 %9, i8* %8, align 1
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i8, i8* @TRUE, align 1
  store i8 %27, i8* %8, align 1
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %7, align 8
  br label %33

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %10

33:                                               ; preds = %26, %10
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @FALSE, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @MRB_DEBUG_BREAK_INVALID_NO, align 8
  store i64 %40, i64* %3, align 8
  br label %43

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
