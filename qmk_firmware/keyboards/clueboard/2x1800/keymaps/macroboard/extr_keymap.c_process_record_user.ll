; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/2x1800/keymaps/macroboard/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/2x1800/keymaps/macroboard/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"This is macro 01\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"This is macro 02\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"This is macro 03\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"This is macro 04\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"This is macro 05\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"This is macro 06\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"This is macro 07\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"This is macro 08\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"This is macro 09\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"This is macro 10\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"This is macro 11\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"This is macro 12\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"This is macro 13\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"This is macro 14\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"This is macro 15\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"This is macro 16\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"This is macro 17\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"This is macro 18\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"This is macro 19\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"This is macro 20\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"This is macro 21\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %55 [
    i32 148, label %13
    i32 147, label %15
    i32 146, label %17
    i32 145, label %19
    i32 144, label %21
    i32 143, label %23
    i32 142, label %25
    i32 141, label %27
    i32 140, label %29
    i32 139, label %31
    i32 138, label %33
    i32 137, label %35
    i32 136, label %37
    i32 135, label %39
    i32 134, label %41
    i32 133, label %43
    i32 132, label %45
    i32 131, label %47
    i32 130, label %49
    i32 129, label %51
    i32 128, label %53
  ]

13:                                               ; preds = %11
  %14 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %11
  %16 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

17:                                               ; preds = %11
  %18 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

19:                                               ; preds = %11
  %20 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

21:                                               ; preds = %11
  %22 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %11
  %24 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

25:                                               ; preds = %11
  %26 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

27:                                               ; preds = %11
  %28 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

29:                                               ; preds = %11
  %30 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

31:                                               ; preds = %11
  %32 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %11
  %34 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

35:                                               ; preds = %11
  %36 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %11
  %38 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

39:                                               ; preds = %11
  %40 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

41:                                               ; preds = %11
  %42 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

43:                                               ; preds = %11
  %44 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

45:                                               ; preds = %11
  %46 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

47:                                               ; preds = %11
  %48 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

49:                                               ; preds = %11
  %50 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

51:                                               ; preds = %11
  %52 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

53:                                               ; preds = %11
  %54 = call i32 @SEND_STRING(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

55:                                               ; preds = %11
  br label %56

56:                                               ; preds = %55, %2
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
