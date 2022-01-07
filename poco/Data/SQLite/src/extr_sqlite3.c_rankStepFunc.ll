; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_rankStepFunc.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_rankStepFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CallCount = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @rankStepFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rankStepFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.CallCount*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @sqlite3_aggregate_context(i32* %8, i32 16)
  %10 = inttoptr i64 %9 to %struct.CallCount*
  store %struct.CallCount* %10, %struct.CallCount** %7, align 8
  %11 = load %struct.CallCount*, %struct.CallCount** %7, align 8
  %12 = icmp ne %struct.CallCount* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.CallCount*, %struct.CallCount** %7, align 8
  %15 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.CallCount*, %struct.CallCount** %7, align 8
  %19 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.CallCount*, %struct.CallCount** %7, align 8
  %24 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.CallCount*, %struct.CallCount** %7, align 8
  %27 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %13
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @UNUSED_PARAMETER(i32 %30)
  %32 = load i32**, i32*** %6, align 8
  %33 = ptrtoint i32** %32 to i32
  %34 = call i32 @UNUSED_PARAMETER(i32 %33)
  ret void
}

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
