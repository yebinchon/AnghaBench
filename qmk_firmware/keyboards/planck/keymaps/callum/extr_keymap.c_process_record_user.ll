; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/callum/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/callum/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@cmd_keys_down = common dso_local global i32 0, align 4
@KC_LCMD = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %98 [
    i32 148, label %7
    i32 147, label %10
    i32 146, label %13
    i32 145, label %16
    i32 144, label %19
    i32 142, label %22
    i32 141, label %25
    i32 140, label %28
    i32 139, label %31
    i32 138, label %34
    i32 137, label %37
    i32 136, label %40
    i32 135, label %43
    i32 134, label %46
    i32 133, label %49
    i32 132, label %52
    i32 131, label %55
    i32 130, label %58
    i32 129, label %61
    i32 128, label %64
    i32 143, label %67
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %3, align 4
  br label %99

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  br label %99

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %99

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  br label %99

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 %30, i32* %3, align 4
  br label %99

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %99

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 %36, i32* %3, align 4
  br label %99

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %39, i32* %3, align 4
  br label %99

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 %45, i32* %3, align 4
  br label %99

46:                                               ; preds = %2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  br label %99

49:                                               ; preds = %2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32 %54, i32* %3, align 4
  br label %99

55:                                               ; preds = %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32 %57, i32* %3, align 4
  br label %99

58:                                               ; preds = %2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = call i32 @send_string_if_keydown(%struct.TYPE_6__* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store i32 %66, i32* %3, align 4
  br label %99

67:                                               ; preds = %2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i32, i32* @cmd_keys_down, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @KC_LCMD, align 4
  %78 = call i32 @register_code(i32 %77)
  br label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @KC_LCTL, align 4
  %81 = call i32 @register_code(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @cmd_keys_down, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @cmd_keys_down, align 4
  br label %97

85:                                               ; preds = %67
  %86 = load i32, i32* @cmd_keys_down, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @KC_LCMD, align 4
  %90 = call i32 @unregister_code(i32 %89)
  br label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @KC_LCTL, align 4
  %93 = call i32 @unregister_code(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @cmd_keys_down, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* @cmd_keys_down, align 4
  br label %97

97:                                               ; preds = %94, %82
  store i32 1, i32* %3, align 4
  br label %99

98:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %97, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @send_string_if_keydown(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
