; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_gc.c_mark_context.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_gc.c_mark_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_context = type { i64, i32, %struct.mrb_context*, i64, i64*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.RBasic = type { i32 }

@MRB_FIBER_TERMINATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mrb_context*)* @mark_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_context(i32* %0, %struct.mrb_context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mrb_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mrb_context* %1, %struct.mrb_context** %4, align 8
  br label %7

7:                                                ; preds = %87, %2
  %8 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %9 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MRB_FIBER_TERMINATED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %91

14:                                               ; preds = %7
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %17 = call i32 @mark_context_stack(i32* %15, %struct.mrb_context* %16)
  %18 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %19 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %14
  %23 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %24 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %6, align 8
  br label %26

26:                                               ; preds = %51, %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %29 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ule %struct.TYPE_2__* %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.RBasic*
  %38 = call i32 @mrb_gc_mark(i32* %33, %struct.RBasic* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.RBasic*
  %44 = call i32 @mrb_gc_mark(i32* %39, %struct.RBasic* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.RBasic*
  %50 = call i32 @mrb_gc_mark(i32* %45, %struct.RBasic* %49)
  br label %51

51:                                               ; preds = %32
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 1
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %6, align 8
  br label %26

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54, %14
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %59 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %65 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.RBasic*
  %72 = call i32 @mrb_gc_mark(i32* %63, %struct.RBasic* %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %79 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.RBasic*
  %82 = call i32 @mrb_gc_mark(i32* %77, %struct.RBasic* %81)
  %83 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %84 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %83, i32 0, i32 2
  %85 = load %struct.mrb_context*, %struct.mrb_context** %84, align 8
  %86 = icmp ne %struct.mrb_context* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load %struct.mrb_context*, %struct.mrb_context** %4, align 8
  %89 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %88, i32 0, i32 2
  %90 = load %struct.mrb_context*, %struct.mrb_context** %89, align 8
  store %struct.mrb_context* %90, %struct.mrb_context** %4, align 8
  br label %7

91:                                               ; preds = %13, %76
  ret void
}

declare dso_local i32 @mark_context_stack(i32*, %struct.mrb_context*) #1

declare dso_local i32 @mrb_gc_mark(i32*, %struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
