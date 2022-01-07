; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_GetEpochTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_GetEpochTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetEpochTime(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call %struct.tm* @gmtime(i32* %5)
  store %struct.tm* %6, %struct.tm** %4, align 8
  %7 = load %struct.tm*, %struct.tm** %4, align 8
  %8 = icmp ne %struct.tm* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.tm*, %struct.tm** %4, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1900
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 5
  store i64 %13, i64* %15, align 8
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load %struct.tm*, %struct.tm** %4, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tm*, %struct.tm** %3, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tm*, %struct.tm** %4, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tm*, %struct.tm** %3, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tm*, %struct.tm** %4, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tm*, %struct.tm** %3, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tm*, %struct.tm** %4, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tm*, %struct.tm** %3, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %43

42:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.tm* @gmtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
