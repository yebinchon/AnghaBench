; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_colorcomplement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_colorcomplement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.colormap = type { %struct.colordesc* }
%struct.colordesc = type { i32 }
%struct.state = type { i32 }

@PSEUDO = common dso_local global i32 0, align 4
@PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.colormap*, i32, %struct.state*, %struct.state*, %struct.state*)* @colorcomplement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @colorcomplement(%struct.nfa* %0, %struct.colormap* %1, i32 %2, %struct.state* %3, %struct.state* %4, %struct.state* %5) #0 {
  %7 = alloca %struct.nfa*, align 8
  %8 = alloca %struct.colormap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca %struct.state*, align 8
  %13 = alloca %struct.colordesc*, align 8
  %14 = alloca %struct.colordesc*, align 8
  %15 = alloca i64, align 8
  store %struct.nfa* %0, %struct.nfa** %7, align 8
  store %struct.colormap* %1, %struct.colormap** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.state* %3, %struct.state** %10, align 8
  store %struct.state* %4, %struct.state** %11, align 8
  store %struct.state* %5, %struct.state** %12, align 8
  %16 = load %struct.colormap*, %struct.colormap** %8, align 8
  %17 = call %struct.colordesc* @CDEND(%struct.colormap* %16)
  store %struct.colordesc* %17, %struct.colordesc** %14, align 8
  %18 = load %struct.state*, %struct.state** %10, align 8
  %19 = load %struct.state*, %struct.state** %11, align 8
  %20 = icmp ne %struct.state* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.colormap*, %struct.colormap** %8, align 8
  %24 = getelementptr inbounds %struct.colormap, %struct.colormap* %23, i32 0, i32 0
  %25 = load %struct.colordesc*, %struct.colordesc** %24, align 8
  store %struct.colordesc* %25, %struct.colordesc** %13, align 8
  store i64 0, i64* %15, align 8
  br label %26

26:                                               ; preds = %62, %6
  %27 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %28 = load %struct.colordesc*, %struct.colordesc** %14, align 8
  %29 = icmp ult %struct.colordesc* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 (...) @CISERR()
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %67

36:                                               ; preds = %34
  %37 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %38 = call i32 @UNUSEDCOLOR(%struct.colordesc* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %36
  %41 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %42 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PSEUDO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load %struct.state*, %struct.state** %10, align 8
  %49 = load i32, i32* @PLAIN, align 4
  %50 = load i64, i64* %15, align 8
  %51 = call i32* @findarc(%struct.state* %48, i32 %49, i64 %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.nfa*, %struct.nfa** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.state*, %struct.state** %11, align 8
  %58 = load %struct.state*, %struct.state** %12, align 8
  %59 = call i32 @newarc(%struct.nfa* %54, i32 %55, i64 %56, %struct.state* %57, %struct.state* %58)
  br label %60

60:                                               ; preds = %53, %47
  br label %61

61:                                               ; preds = %60, %40, %36
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.colordesc*, %struct.colordesc** %13, align 8
  %64 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %63, i32 1
  store %struct.colordesc* %64, %struct.colordesc** %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %15, align 8
  br label %26

67:                                               ; preds = %34
  ret void
}

declare dso_local %struct.colordesc* @CDEND(%struct.colormap*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CISERR(...) #1

declare dso_local i32 @UNUSEDCOLOR(%struct.colordesc*) #1

declare dso_local i32* @findarc(%struct.state*, i32, i64) #1

declare dso_local i32 @newarc(%struct.nfa*, i32, i64, %struct.state*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
