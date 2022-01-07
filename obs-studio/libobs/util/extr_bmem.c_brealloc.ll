; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_bmem.c_brealloc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_bmem.c_brealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i8*, i32)* }

@num_allocs = common dso_local global i32 0, align 4
@alloc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"Out of memory while trying to allocate %lu bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @brealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 @os_atomic_inc_long(i32* @num_allocs)
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i8* (i8*, i32)*, i8* (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @alloc, i32 0, i32 0), align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i8* %10(i8* %11, i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %9
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i8* (i8*, i32)*, i8* (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @alloc, i32 0, i32 0), align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* %21(i8* %22, i32 1)
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %20, %17, %9
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @os_breakpoint()
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @bcrash(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i32 @os_atomic_inc_long(i32*) #1

declare dso_local i32 @os_breakpoint(...) #1

declare dso_local i32 @bcrash(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
