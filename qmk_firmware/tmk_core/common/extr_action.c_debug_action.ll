; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action.c_debug_action.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action.c_debug_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ACT_LMODS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ACT_RMODS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ACT_LMODS_TAP\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ACT_RMODS_TAP\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ACT_USAGE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ACT_MOUSEKEY\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ACT_LAYER\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ACT_LAYER_MODS\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ACT_LAYER_TAP\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ACT_LAYER_TAP_EXT\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ACT_MACRO\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ACT_COMMAND\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ACT_FUNCTION\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"ACT_SWAP_HANDS\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"[%X:%02X]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_action(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = bitcast %struct.TYPE_4__* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %36 [
    i32 135, label %8
    i32 131, label %10
    i32 134, label %12
    i32 130, label %14
    i32 128, label %16
    i32 132, label %18
    i32 139, label %20
    i32 138, label %22
    i32 137, label %24
    i32 136, label %26
    i32 133, label %28
    i32 141, label %30
    i32 140, label %32
    i32 129, label %34
  ]

8:                                                ; preds = %1
  %9 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %38

10:                                               ; preds = %1
  %11 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %38

12:                                               ; preds = %1
  %13 = call i32 @dprint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %38

14:                                               ; preds = %1
  %15 = call i32 @dprint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %38

16:                                               ; preds = %1
  %17 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %38

18:                                               ; preds = %1
  %19 = call i32 @dprint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %38

20:                                               ; preds = %1
  %21 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %38

22:                                               ; preds = %1
  %23 = call i32 @dprint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %38

24:                                               ; preds = %1
  %25 = call i32 @dprint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %38

26:                                               ; preds = %1
  %27 = call i32 @dprint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %38

28:                                               ; preds = %1
  %29 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %38

30:                                               ; preds = %1
  %31 = call i32 @dprint(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %38

32:                                               ; preds = %1
  %33 = call i32 @dprint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %38

34:                                               ; preds = %1
  %35 = call i32 @dprint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %38

36:                                               ; preds = %1
  %37 = call i32 @dprint(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %42, i32 %46)
  ret void
}

declare dso_local i32 @dprint(i8*) #1

declare dso_local i32 @dprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
