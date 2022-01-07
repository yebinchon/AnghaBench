; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_blocks.c_calculate_block_sizes.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_blocks.c_calculate_block_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fall = type { i64 }

@fall = common dso_local global %struct.fall** null, align 8
@SHAPE_MAX = common dso_local global i64 0, align 8
@block_sizes = common dso_local global i32* null, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @calculate_block_sizes, i8* null }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_block_sizes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fall*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %38, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = load %struct.fall**, %struct.fall*** @fall, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.fall*, %struct.fall** %7, i64 %9
  %11 = load %struct.fall*, %struct.fall** %10, align 8
  store %struct.fall* %11, %struct.fall** %2, align 8
  br label %12

12:                                               ; preds = %18, %6
  %13 = load %struct.fall*, %struct.fall** %2, align 8
  %14 = getelementptr inbounds %struct.fall, %struct.fall* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SHAPE_MAX, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.fall*, %struct.fall** %2, align 8
  %20 = getelementptr inbounds %struct.fall, %struct.fall* %19, i32 1
  store %struct.fall* %20, %struct.fall** %2, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.fall*, %struct.fall** %2, align 8
  %23 = load %struct.fall**, %struct.fall*** @fall, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fall*, %struct.fall** %23, i64 %25
  %27 = load %struct.fall*, %struct.fall** %26, align 8
  %28 = ptrtoint %struct.fall* %22 to i64
  %29 = ptrtoint %struct.fall* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = add nsw i32 %32, 1
  %34 = load i32*, i32** @block_sizes, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %3

41:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
