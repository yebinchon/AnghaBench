; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_normal.c_init_normal_cmds.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_normal.c_init_normal_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NV_CMDS_SIZE = common dso_local global i64 0, align 8
@nv_cmd_idx = common dso_local global i64* null, align 8
@nv_compare = common dso_local global i32 0, align 4
@nv_cmds = common dso_local global %struct.TYPE_2__* null, align 8
@nv_max_linear = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_normal_cmds() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i64, i64* @NV_CMDS_SIZE, align 8
  %5 = trunc i64 %4 to i32
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64*, i64** @nv_cmd_idx, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  store i64 %9, i64* %13, align 8
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2

17:                                               ; preds = %2
  %18 = load i64, i64* @NV_CMDS_SIZE, align 8
  %19 = load i32, i32* @nv_compare, align 4
  %20 = call i32 @qsort(i8* bitcast (i64** @nv_cmd_idx to i8*), i64 %18, i32 2, i32 %19)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %40, %17
  %22 = load i32, i32* %1, align 4
  %23 = load i64, i64* @NV_CMDS_SIZE, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %1, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nv_cmds, align 8
  %29 = load i64*, i64** @nv_cmd_idx, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %27, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %21

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %1, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* @nv_max_linear, align 4
  ret void
}

declare dso_local i32 @qsort(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
