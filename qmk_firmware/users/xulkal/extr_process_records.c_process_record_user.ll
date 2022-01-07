; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_process_records.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_process_records.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@process_record_user.reset_timer = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = call i32 @process_custom_tap_dance(i32 %6, %struct.TYPE_8__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %32 [
    i32 129, label %13
    i32 130, label %14
  ]

13:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = call i32 (...) @timer_read()
  %22 = add nsw i32 %21, 500
  store i32 %22, i32* @process_record_user.reset_timer, align 4
  br label %31

23:                                               ; preds = %14
  %24 = call i32 (...) @timer_read()
  %25 = load i32, i32* @process_record_user.reset_timer, align 4
  %26 = call i32 @timer_expired(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @reset_keyboard()
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %20
  store i32 0, i32* %3, align 4
  br label %45

32:                                               ; preds = %11
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = call i64 @process_record_encoder(i32 %33, %struct.TYPE_8__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = call i64 @process_record_keymap(i32 %38, %struct.TYPE_8__* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %31, %13, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @process_custom_tap_dance(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_expired(i32, i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i64 @process_record_encoder(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @process_record_keymap(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
