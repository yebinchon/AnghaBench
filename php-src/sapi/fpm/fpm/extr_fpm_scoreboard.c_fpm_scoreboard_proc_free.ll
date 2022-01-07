; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_free.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_proc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_scoreboard_proc_free(%struct.fpm_scoreboard_s* %0, i32 %1) #0 {
  %3 = alloca %struct.fpm_scoreboard_s*, align 8
  %4 = alloca i32, align 4
  store %struct.fpm_scoreboard_s* %0, %struct.fpm_scoreboard_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  %6 = icmp ne %struct.fpm_scoreboard_s* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %51

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  %14 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %8
  br label %51

18:                                               ; preds = %11
  %19 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  %20 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  %29 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  %40 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @memset(%struct.TYPE_2__* %45, i32 0, i32 4)
  br label %47

47:                                               ; preds = %38, %27, %18
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %3, align 8
  %50 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %17, %7
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
