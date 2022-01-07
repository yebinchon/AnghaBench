; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_check_lineno.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_check_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@mrb_debug_line_ary = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @check_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_lineno(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @mrb_debug_line_ary, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %3, align 8
  br label %62

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %17

37:                                               ; preds = %17
  br label %61

38:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %44, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i64, i64* %5, align 8
  store i64 %55, i64* %3, align 8
  br label %62

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %37
  store i64 0, i64* %3, align 8
  br label %62

62:                                               ; preds = %61, %54, %31
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
