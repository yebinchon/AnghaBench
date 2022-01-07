; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_softirqs.c_get_interrupts_array.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_softirqs.c_get_interrupts_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interrupt = type { i8*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }

@get_interrupts_array.irrs = internal global %struct.interrupt* null, align 8
@get_interrupts_array.allocated = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.interrupt* (i64, i32)* @get_interrupts_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.interrupt* @get_interrupts_array(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.interrupt*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @get_interrupts_array.allocated, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load %struct.interrupt*, %struct.interrupt** @get_interrupts_array.irrs, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @recordsize(i32 %17)
  %19 = mul i64 %16, %18
  %20 = call i64 @reallocz(%struct.interrupt* %15, i64 %19)
  %21 = inttoptr i64 %20 to %struct.interrupt*
  store %struct.interrupt* %21, %struct.interrupt** @get_interrupts_array.irrs, align 8
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %53, %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load %struct.interrupt*, %struct.interrupt** @get_interrupts_array.irrs, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.interrupt* @irrindex(%struct.interrupt* %27, i64 %28, i32 %29)
  store %struct.interrupt* %30, %struct.interrupt** %7, align 8
  %31 = load %struct.interrupt*, %struct.interrupt** %7, align 8
  %32 = getelementptr inbounds %struct.interrupt, %struct.interrupt* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.interrupt*, %struct.interrupt** %7, align 8
  %34 = getelementptr inbounds %struct.interrupt, %struct.interrupt* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %49, %26
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.interrupt*, %struct.interrupt** %7, align 8
  %43 = getelementptr inbounds %struct.interrupt, %struct.interrupt* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %37

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %22

56:                                               ; preds = %22
  %57 = load i64, i64* %3, align 8
  store i64 %57, i64* @get_interrupts_array.allocated, align 8
  br label %58

58:                                               ; preds = %56, %2
  %59 = load %struct.interrupt*, %struct.interrupt** @get_interrupts_array.irrs, align 8
  ret %struct.interrupt* %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @reallocz(%struct.interrupt*, i64) #1

declare dso_local i64 @recordsize(i32) #1

declare dso_local %struct.interrupt* @irrindex(%struct.interrupt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
