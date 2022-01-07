; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_count.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"targe range bigger than 64-bits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @range6list_count(%struct.Range6List* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.Range6List*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.Range6List* %0, %struct.Range6List** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %10 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %16 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.Range6List*, %struct.Range6List** %3, align 8
  %24 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @DIFF(i32 %22, i32 %30)
  %32 = add i64 %31, 1
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %13
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %2, align 8
  br label %47

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @DIFF(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
