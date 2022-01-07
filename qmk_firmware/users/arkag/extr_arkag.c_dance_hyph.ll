; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_dance_hyph.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_dance_hyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KC_MINS = common dso_local global i32 0, align 4
@aesthetic = common dso_local global i64 0, align 8
@KC_SPACE = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"2014\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_hyph(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @KC_MINS, align 4
  %11 = call i32 @tap_code(i32 %10)
  %12 = load i64, i64* @aesthetic, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @KC_SPACE, align 4
  %16 = call i32 @tap_code(i32 %15)
  br label %17

17:                                               ; preds = %14, %9
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* @KC_LSFT, align 4
  %25 = call i32 @register_code(i32 %24)
  %26 = load i32, i32* @KC_MINS, align 4
  %27 = call i32 @tap_code(i32 %26)
  %28 = load i64, i64* @aesthetic, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @KC_SPACE, align 4
  %32 = call i32 @tap_code(i32 %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @KC_LSFT, align 4
  %35 = call i32 @unregister_code(i32 %34)
  br label %44

36:                                               ; preds = %18
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %17
  ret void
}

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @send_unicode_hex_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
