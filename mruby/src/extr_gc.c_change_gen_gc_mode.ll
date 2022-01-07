; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_gc.c_change_gen_gc_mode.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_gc.c_change_gen_gc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64, i8*, i64, i64 }

@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"generational mode changed when GC disabled\00", align 1
@MRB_GC_STATE_ROOT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@MAJOR_GC_INC_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i64)* @change_gen_gc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_gen_gc_mode(i32* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %19 = call i32 @mrb_raise(i32* %17, i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %69

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i64 @is_generational(%struct.TYPE_6__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = call i32 @clear_all_old(i32* %28, %struct.TYPE_6__* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MRB_GC_STATE_ROOT, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @mrb_assert(i32 %36)
  %38 = load i8*, i8** @FALSE, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  br label %65

41:                                               ; preds = %24, %20
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = call i64 @is_generational(%struct.TYPE_6__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i64, i64* @MRB_GC_STATE_ROOT, align 8
  %52 = call i32 @incremental_gc_until(i32* %49, %struct.TYPE_6__* %50, i64 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 100
  %57 = load i32, i32* @MAJOR_GC_INC_RATIO, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** @FALSE, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %48, %45, %41
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %16
  ret void
}

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @is_generational(%struct.TYPE_6__*) #1

declare dso_local i32 @clear_all_old(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @incremental_gc_until(i32*, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
