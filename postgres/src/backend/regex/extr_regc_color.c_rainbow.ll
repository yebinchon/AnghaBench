; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_rainbow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_rainbow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.colormap = type { %struct.colordesc* }
%struct.colordesc = type { i64, i32 }
%struct.state = type { i32 }

@PSEUDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.colormap*, i32, i64, %struct.state*, %struct.state*)* @rainbow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rainbow(%struct.nfa* %0, %struct.colormap* %1, i32 %2, i64 %3, %struct.state* %4, %struct.state* %5) #0 {
  %7 = alloca %struct.nfa*, align 8
  %8 = alloca %struct.colormap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca %struct.state*, align 8
  %13 = alloca %struct.colordesc*, align 8
  %14 = alloca %struct.colordesc*, align 8
  %15 = alloca i64, align 8
  store %struct.nfa* %0, %struct.nfa** %7, align 8
  store %struct.colormap* %1, %struct.colormap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.state* %4, %struct.state** %11, align 8
  store %struct.state* %5, %struct.state** %12, align 8
  %16 = load %struct.colormap*, %struct.colormap** %8, align 8
  %17 = call %struct.colordesc* @CDEND(%struct.colormap* %16)
  store %struct.colordesc* %17, %struct.colordesc** %14, align 8
  %18 = load %struct.colormap*, %struct.colormap** %8, align 8
  %19 = getelementptr inbounds %struct.colormap, %struct.colormap* %18, i32 0, i32 0
  %20 = load %struct.colordesc*, %struct.colordesc** %19, align 8
  store %struct.colordesc* %20, %struct.colordesc** %13, align 8
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %60, %6
  %22 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %23 = load %struct.colordesc*, %struct.colordesc** %14, align 8
  %24 = icmp ult %struct.colordesc* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 (...) @CISERR()
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %65

31:                                               ; preds = %29
  %32 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %33 = call i32 @UNUSEDCOLOR(%struct.colordesc* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %37 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %47 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PSEUDO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.nfa*, %struct.nfa** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.state*, %struct.state** %11, align 8
  %57 = load %struct.state*, %struct.state** %12, align 8
  %58 = call i32 @newarc(%struct.nfa* %53, i32 %54, i64 %55, %struct.state* %56, %struct.state* %57)
  br label %59

59:                                               ; preds = %52, %45, %41, %35, %31
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %62 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %61, i32 1
  store %struct.colordesc* %62, %struct.colordesc** %13, align 8
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %15, align 8
  br label %21

65:                                               ; preds = %29
  ret void
}

declare dso_local %struct.colordesc* @CDEND(%struct.colormap*) #1

declare dso_local i32 @CISERR(...) #1

declare dso_local i32 @UNUSEDCOLOR(%struct.colordesc*) #1

declare dso_local i32 @newarc(%struct.nfa*, i32, i64, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
