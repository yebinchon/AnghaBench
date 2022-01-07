; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/keymaps/ridingintraffic/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/keymaps/ridingintraffic/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"0028 3063 25D5 203F 25D5 0029 3063\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"t(-_-t)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0298 203F 0298\00", align 1
@KC_LGUI = common dso_local global i32 0, align 4
@KC_A = common dso_local global i32 0, align 4
@KC_DEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"00AF 005C 005F 0028 30C4 0029 005F 002F 00AF\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"2665 203F 2665\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"0CA0 005F 0CA0\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"0028 256F 00B0 25A1 00B0 0029 256F 0020 FE35 0020 253B 2501 253B\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"253B 2501 253B FE35 0020 005C 0028 00B0 25A1 00B0 0029 002F 0020 FE35 0020 253B 2501 253B\00", align 1

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
  br i1 %10, label %11, label %102

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %101 [
    i32 136, label %13
    i32 133, label %22
    i32 132, label %31
    i32 135, label %40
    i32 130, label %56
    i32 131, label %65
    i32 134, label %74
    i32 129, label %83
    i32 128, label %92
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %103

22:                                               ; preds = %11
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @SEND_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  store i32 0, i32* %3, align 4
  br label %103

31:                                               ; preds = %11
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  store i32 0, i32* %3, align 4
  br label %103

40:                                               ; preds = %11
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* @KC_LGUI, align 4
  %48 = call i32 @register_code(i32 %47)
  %49 = load i32, i32* @KC_A, align 4
  %50 = call i32 @tap_code(i32 %49)
  %51 = load i32, i32* @KC_LGUI, align 4
  %52 = call i32 @unregister_code(i32 %51)
  %53 = load i32, i32* @KC_DEL, align 4
  %54 = call i32 @tap_code(i32 %53)
  br label %55

55:                                               ; preds = %46, %40
  store i32 0, i32* %3, align 4
  br label %103

56:                                               ; preds = %11
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  store i32 0, i32* %3, align 4
  br label %103

65:                                               ; preds = %11
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %103

74:                                               ; preds = %11
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %74
  store i32 0, i32* %3, align 4
  br label %103

83:                                               ; preds = %11
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  store i32 0, i32* %3, align 4
  br label %103

92:                                               ; preds = %11
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %92
  store i32 0, i32* %3, align 4
  br label %103

101:                                              ; preds = %11
  br label %102

102:                                              ; preds = %101, %2
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %100, %91, %82, %73, %64, %55, %39, %30, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @send_unicode_hex_string(i8*) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
