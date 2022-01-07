; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_set_gmlan.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_set_gmlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@can_num_lookup = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Disable GMLAN on CAN\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current_board = common dso_local global %struct.TYPE_2__* null, align 8
@CAN_MODE_NORMAL = common dso_local global i32 0, align 4
@bus_lookup = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Enable GMLAN on CAN\00", align 1
@CAN_MODE_GMLAN_CAN2 = common dso_local global i32 0, align 4
@CAN_MODE_GMLAN_CAN3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"GMLAN can only be set on CAN2 or CAN3\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"GMLAN not available on black panda\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_set_gmlan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @board_has_gmlan()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %79

6:                                                ; preds = %1
  %7 = load i32*, i32** @can_num_lookup, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %40 [
    i32 1, label %15
    i32 2, label %15
  ]

15:                                               ; preds = %13, %13
  %16 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  %19 = call i32 @puth(i32 %18)
  %20 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load i32, i32* @CAN_MODE_NORMAL, align 4
  %25 = call i32 %23(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** @bus_lookup, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32*, i32** @can_num_lookup, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32*, i32** @can_num_lookup, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @can_init(i32 %38)
  br label %41

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40, %15
  br label %42

42:                                               ; preds = %41, %6
  %43 = load i32, i32* %2, align 4
  switch i32 %43, label %76 [
    i32 1, label %44
    i32 2, label %44
    i32 255, label %75
  ]

44:                                               ; preds = %42, %42
  %45 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %2, align 4
  %47 = add i32 %46, 1
  %48 = call i32 @puth(i32 %47)
  %49 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @CAN_MODE_GMLAN_CAN2, align 4
  br label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @CAN_MODE_GMLAN_CAN3, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 %52(i32 %60)
  %62 = load i32*, i32** @bus_lookup, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 3, i32* %65, align 4
  %66 = load i32*, i32** @can_num_lookup, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 -1, i32* %69, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32*, i32** @can_num_lookup, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @can_init(i32 %73)
  br label %78

75:                                               ; preds = %42
  br label %78

76:                                               ; preds = %42
  %77 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %75, %59
  br label %81

79:                                               ; preds = %1
  %80 = call i32 @puts(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %78
  ret void
}

declare dso_local i64 @board_has_gmlan(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @puth(i32) #1

declare dso_local i32 @can_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
