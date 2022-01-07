; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_event.c_kuhl_m_event_clear.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_event.c_kuhl_m_event_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 108, i32 111, i32 103, i32 0], align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 83, i32 101, i32 99, i32 117, i32 114, i32 105, i32 116, i32 121, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 85, i32 115, i32 105, i32 110, i32 103, i32 32, i32 34, i32 37, i32 115, i32 34, i32 32, i32 101, i32 118, i32 101, i32 110, i32 116, i32 32, i32 108, i32 111, i32 103, i32 32, i32 58, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 45, i32 32, i32 37, i32 117, i32 32, i32 101, i32 118, i32 101, i32 110, i32 116, i32 40, i32 115, i32 41, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 45, i32 32, i32 67, i32 108, i32 101, i32 97, i32 114, i32 101, i32 100, i32 32, i32 33, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 67, i32 108, i32 101, i32 97, i32 114, i32 69, i32 118, i32 101, i32 110, i32 116, i32 76, i32 111, i32 103, i32 0], align 4
@.str.6 = private unnamed_addr constant [13 x i32] [i32 79, i32 112, i32 101, i32 110, i32 69, i32 118, i32 101, i32 110, i32 116, i32 76, i32 111, i32 103, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_event_clear(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = call i32 @kull_m_string_args_byName(i32 %8, i32** %9, i8* bitcast ([4 x i32]* @.str to i8*), i32* %6, i8* bitcast ([9 x i32]* @.str.1 to i8*))
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.2 to i8*), i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @OpenEventLog(i32* null, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @GetNumberOfEventLogRecords(i32 %17, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ClearEventLog(i32 %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.4 to i8*))
  br label %31

29:                                               ; preds = %23
  %30 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([14 x i32]* @.str.5 to i8*))
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @GetNumberOfEventLogRecords(i32 %32, i32* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 %36)
  br label %38

38:                                               ; preds = %35, %31
  br label %41

39:                                               ; preds = %2
  %40 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str.6 to i8*))
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %42
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @OpenEventLog(i32*, i32) #1

declare dso_local i64 @GetNumberOfEventLogRecords(i32, i32*) #1

declare dso_local i64 @ClearEventLog(i32, i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
