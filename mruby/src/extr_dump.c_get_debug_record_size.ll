; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_dump.c_get_debug_record_size.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_dump.c_get_debug_record_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*)* @get_debug_record_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_debug_record_size(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 8
  store i64 %12, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %60, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 4
  store i64 %37, i64* %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %57 [
    i32 129, label %41
    i32 128, label %49
  ]

41:                                               ; preds = %21
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %5, align 8
  br label %59

49:                                               ; preds = %21
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 12, %53
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %59

57:                                               ; preds = %21
  %58 = call i32 @mrb_assert(i32 0)
  br label %59

59:                                               ; preds = %57, %49, %41
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %13

63:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i64 @get_debug_record_size(i32* %71, %struct.TYPE_7__* %78)
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i32 @mrb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
