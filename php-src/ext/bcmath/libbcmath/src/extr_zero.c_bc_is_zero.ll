; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_zero.c_bc_is_zero.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_zero.c_bc_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8* }

@_zero_ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8 0, align 1
@FALSE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @bc_is_zero(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @_zero_, align 4
  %8 = call %struct.TYPE_4__* @BCG(i32 %7)
  %9 = icmp eq %struct.TYPE_4__* %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8, i8* @TRUE, align 1
  store i8 %11, i8* %2, align 1
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %34, %12
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  br label %23

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8, i8* @FALSE, align 1
  store i8 %41, i8* %2, align 1
  br label %44

42:                                               ; preds = %37
  %43 = load i8, i8* @TRUE, align 1
  store i8 %43, i8* %2, align 1
  br label %44

44:                                               ; preds = %42, %40, %10
  %45 = load i8, i8* %2, align 1
  ret i8 %45
}

declare dso_local %struct.TYPE_4__* @BCG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
