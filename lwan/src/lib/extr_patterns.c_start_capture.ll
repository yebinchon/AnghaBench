; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_start_capture.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_start_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match_state*, i8*, i8*, i32)* @start_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @start_capture(%struct.match_state* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.match_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.match_state* %0, %struct.match_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.match_state*, %struct.match_state** %6, align 8
  %13 = getelementptr inbounds %struct.match_state, %struct.match_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.match_state*, %struct.match_state** %6, align 8
  %17 = getelementptr inbounds %struct.match_state, %struct.match_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.match_state*, %struct.match_state** %6, align 8
  %22 = call i32 @match_error(%struct.match_state* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %56

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.match_state*, %struct.match_state** %6, align 8
  %26 = getelementptr inbounds %struct.match_state, %struct.match_state* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %24, i8** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.match_state*, %struct.match_state** %6, align 8
  %34 = getelementptr inbounds %struct.match_state, %struct.match_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %32, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.match_state*, %struct.match_state** %6, align 8
  %43 = getelementptr inbounds %struct.match_state, %struct.match_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.match_state*, %struct.match_state** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @match(%struct.match_state* %44, i8* %45, i8* %46)
  store i8* %47, i8** %10, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %23
  %50 = load %struct.match_state*, %struct.match_state** %6, align 8
  %51 = getelementptr inbounds %struct.match_state, %struct.match_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %23
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %54, %20
  %57 = load i8*, i8** %5, align 8
  ret i8* %57
}

declare dso_local i32 @match_error(%struct.match_state*, i8*) #1

declare dso_local i8* @match(%struct.match_state*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
