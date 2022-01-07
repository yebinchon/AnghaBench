; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_pseudocolor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_pseudocolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { %struct.colordesc* }
%struct.colordesc = type { i32, i32, i32, i32*, i32, i64 }

@COLORLESS = common dso_local global i64 0, align 8
@NOSUB = common dso_local global i32 0, align 4
@CHR_MIN = common dso_local global i32 0, align 4
@PSEUDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.colormap*)* @pseudocolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pseudocolor(%struct.colormap* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.colormap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.colordesc*, align 8
  store %struct.colormap* %0, %struct.colormap** %3, align 8
  %6 = load %struct.colormap*, %struct.colormap** %3, align 8
  %7 = call i64 @newcolor(%struct.colormap* %6)
  store i64 %7, i64* %4, align 8
  %8 = call i64 (...) @CISERR()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @COLORLESS, align 8
  store i64 %11, i64* %2, align 8
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.colormap*, %struct.colormap** %3, align 8
  %14 = getelementptr inbounds %struct.colormap, %struct.colormap* %13, i32 0, i32 0
  %15 = load %struct.colordesc*, %struct.colordesc** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %15, i64 %16
  store %struct.colordesc* %17, %struct.colordesc** %5, align 8
  %18 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %19 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %21 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @NOSUB, align 4
  %23 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %24 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %26 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @CHR_MIN, align 4
  %28 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %29 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @PSEUDO, align 4
  %31 = load %struct.colordesc*, %struct.colordesc** %5, align 8
  %32 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %12, %10
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @newcolor(%struct.colormap*) #1

declare dso_local i64 @CISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
