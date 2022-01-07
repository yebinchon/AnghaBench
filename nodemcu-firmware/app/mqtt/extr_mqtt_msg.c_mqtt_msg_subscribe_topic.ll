; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_msg_subscribe_topic.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_msg_subscribe_topic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_8__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @mqtt_msg_subscribe_topic(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = call %struct.TYPE_8__* @fail_message(%struct.TYPE_9__* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %4, align 8
  br label %55

19:                                               ; preds = %10
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i64 @append_string(%struct.TYPE_9__* %20, i8* %21, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call %struct.TYPE_8__* @fail_message(%struct.TYPE_9__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %4, align 8
  br label %55

29:                                               ; preds = %19
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call %struct.TYPE_8__* @fail_message(%struct.TYPE_9__* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %4, align 8
  br label %55

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %43, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %4, align 8
  br label %55

55:                                               ; preds = %42, %39, %26, %16
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %56
}

declare dso_local %struct.TYPE_8__* @fail_message(%struct.TYPE_9__*) #1

declare dso_local i64 @append_string(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
