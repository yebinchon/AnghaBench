; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_score_remove.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_score_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_board = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@SCORE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.score_board*, i32)* @score_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @score_remove(%struct.score_board* %0, i32 %1) #0 {
  %3 = alloca %struct.score_board*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.score_board* %0, %struct.score_board** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.score_board*, %struct.score_board** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @score_find(%struct.score_board* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.score_board*, %struct.score_board** %3, align 8
  %13 = getelementptr inbounds %struct.score_board, %struct.score_board* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.score_board*, %struct.score_board** %3, align 8
  %20 = getelementptr inbounds %struct.score_board, %struct.score_board* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.score_board*, %struct.score_board** %3, align 8
  %24 = getelementptr inbounds %struct.score_board, %struct.score_board* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCORE_IDLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %11
  %34 = load %struct.score_board*, %struct.score_board** %3, align 8
  %35 = getelementptr inbounds %struct.score_board, %struct.score_board* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %11
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @score_find(%struct.score_board*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
