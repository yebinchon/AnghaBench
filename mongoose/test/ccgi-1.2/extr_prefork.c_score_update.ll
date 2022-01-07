; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_score_update.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_score_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_board = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.score_state = type { i64, i32 }

@SCORE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.score_board*, %struct.score_state*)* @score_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @score_update(%struct.score_board* %0, %struct.score_state* %1) #0 {
  %3 = alloca %struct.score_board*, align 8
  %4 = alloca %struct.score_state*, align 8
  %5 = alloca i32, align 4
  store %struct.score_board* %0, %struct.score_board** %3, align 8
  store %struct.score_state* %1, %struct.score_state** %4, align 8
  %6 = load %struct.score_board*, %struct.score_board** %3, align 8
  %7 = load %struct.score_state*, %struct.score_state** %4, align 8
  %8 = getelementptr inbounds %struct.score_state, %struct.score_state* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @score_find(%struct.score_board* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.score_board*, %struct.score_board** %3, align 8
  %15 = getelementptr inbounds %struct.score_board, %struct.score_board* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.score_state*, %struct.score_state** %4, align 8
  %23 = getelementptr inbounds %struct.score_state, %struct.score_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %13
  %27 = load %struct.score_state*, %struct.score_state** %4, align 8
  %28 = getelementptr inbounds %struct.score_state, %struct.score_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.score_board*, %struct.score_board** %3, align 8
  %31 = getelementptr inbounds %struct.score_board, %struct.score_board* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %29, i64* %36, align 8
  %37 = load %struct.score_state*, %struct.score_state** %4, align 8
  %38 = getelementptr inbounds %struct.score_state, %struct.score_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SCORE_IDLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.score_board*, %struct.score_board** %3, align 8
  %44 = getelementptr inbounds %struct.score_board, %struct.score_board* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %52

47:                                               ; preds = %26
  %48 = load %struct.score_board*, %struct.score_board** %3, align 8
  %49 = getelementptr inbounds %struct.score_board, %struct.score_board* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %13, %2
  ret void
}

declare dso_local i32 @score_find(%struct.score_board*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
