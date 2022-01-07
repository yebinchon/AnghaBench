; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/redox/keymaps/finex/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/redox/keymaps/finex/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c":-) \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c":-( \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAKDHMK = common dso_local global i32 0, align 4
@_QWERTY_MAC = common dso_local global i32 0, align 4
@_COLEMAKDHMK_MAC = common dso_local global i32 0, align 4

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
  br i1 %10, label %11, label %83

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %82 [
    i32 134, label %13
    i32 138, label %15
    i32 133, label %17
    i32 137, label %20
    i32 139, label %24
    i32 132, label %27
    i32 136, label %31
    i32 135, label %33
    i32 142, label %35
    i32 141, label %38
    i32 140, label %40
    i32 129, label %42
    i32 131, label %52
    i32 128, label %62
    i32 130, label %72
  ]

13:                                               ; preds = %11
  %14 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

15:                                               ; preds = %11
  %16 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

17:                                               ; preds = %11
  %18 = call i8* @SS_RALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @SEND_STRING(i8* %18)
  store i32 0, i32* %3, align 4
  br label %84

20:                                               ; preds = %11
  %21 = call i8* @SS_LSFT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i8* @SS_RALT(i8* %21)
  %23 = call i32 @SEND_STRING(i8* %22)
  store i32 0, i32* %3, align 4
  br label %84

24:                                               ; preds = %11
  %25 = call i8* @SS_RALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @SEND_STRING(i8* %25)
  store i32 0, i32* %3, align 4
  br label %84

27:                                               ; preds = %11
  %28 = call i8* @SS_LSFT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i8* @SS_RALT(i8* %28)
  %30 = call i32 @SEND_STRING(i8* %29)
  store i32 0, i32* %3, align 4
  br label %84

31:                                               ; preds = %11
  %32 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

33:                                               ; preds = %11
  %34 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

35:                                               ; preds = %11
  %36 = call i8* @SS_RALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %37 = call i32 @SEND_STRING(i8* %36)
  store i32 0, i32* %3, align 4
  br label %84

38:                                               ; preds = %11
  %39 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

40:                                               ; preds = %11
  %41 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

42:                                               ; preds = %11
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @_QWERTY, align 4
  %50 = call i32 @set_single_persistent_default_layer(i32 %49)
  br label %51

51:                                               ; preds = %48, %42
  store i32 0, i32* %3, align 4
  br label %84

52:                                               ; preds = %11
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @_COLEMAKDHMK, align 4
  %60 = call i32 @set_single_persistent_default_layer(i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  store i32 0, i32* %3, align 4
  br label %84

62:                                               ; preds = %11
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @_QWERTY_MAC, align 4
  %70 = call i32 @set_single_persistent_default_layer(i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %84

72:                                               ; preds = %11
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @_COLEMAKDHMK_MAC, align 4
  %80 = call i32 @set_single_persistent_default_layer(i32 %79)
  br label %81

81:                                               ; preds = %78, %72
  store i32 0, i32* %3, align 4
  br label %84

82:                                               ; preds = %11
  br label %83

83:                                               ; preds = %82, %2
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %81, %71, %61, %51, %40, %38, %35, %33, %31, %27, %24, %20, %17, %15, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i8* @SS_RALT(i8*) #1

declare dso_local i8* @SS_LSFT(i8*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
