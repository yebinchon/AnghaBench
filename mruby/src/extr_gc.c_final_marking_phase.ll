; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_gc.c_final_marking_phase.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_gc.c_final_marking_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32*, %struct.RBasic** }
%struct.RBasic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @final_marking_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @final_marking_phase(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load %struct.RBasic**, %struct.RBasic*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.RBasic*, %struct.RBasic** %18, i64 %20
  %22 = load %struct.RBasic*, %struct.RBasic** %21, align 8
  %23 = call i32 @mrb_gc_mark(%struct.TYPE_10__* %15, %struct.RBasic* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = call i32 @mrb_gc_mark_gv(%struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mark_context(%struct.TYPE_10__* %30, i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mark_context(%struct.TYPE_10__* %35, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.RBasic*
  %45 = call i32 @mrb_gc_mark(%struct.TYPE_10__* %40, %struct.RBasic* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = call i32 @gc_mark_gray_list(%struct.TYPE_10__* %46, %struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @mrb_assert(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = call i32 @gc_mark_gray_list(%struct.TYPE_10__* %62, %struct.TYPE_11__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @mrb_assert(i32 %69)
  ret void
}

declare dso_local i32 @mrb_gc_mark(%struct.TYPE_10__*, %struct.RBasic*) #1

declare dso_local i32 @mrb_gc_mark_gv(%struct.TYPE_10__*) #1

declare dso_local i32 @mark_context(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gc_mark_gray_list(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @mrb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
