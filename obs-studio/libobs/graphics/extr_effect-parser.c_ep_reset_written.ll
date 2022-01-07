; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_reset_written.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_reset_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*)* @ep_reset_written to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_reset_written(%struct.effect_parser* %0) #0 {
  %2 = alloca %struct.effect_parser*, align 8
  %3 = alloca i64, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %7 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %13 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %4

22:                                               ; preds = %4
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %26 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %32 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %23

41:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %45 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %51 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %42

60:                                               ; preds = %42
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %64 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %70 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %3, align 8
  br label %61

79:                                               ; preds = %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
