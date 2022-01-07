; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_msg_publish.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_msg_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@MQTT_MSG_TYPE_PUBLISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mqtt_msg_publish(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = call i32 @init_message(%struct.TYPE_10__* %16)
  %18 = load i8*, i8** %10, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %7
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %7
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = call i32* @fail_message(%struct.TYPE_10__* %27)
  store i32* %28, i32** %8, align 8
  br label %92

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i64 @append_string(%struct.TYPE_10__* %30, i8* %31, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = call i32* @fail_message(%struct.TYPE_10__* %37)
  store i32* %38, i32** %8, align 8
  br label %92

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = call i32 @append_message_id(%struct.TYPE_10__* %43, i32 0)
  %45 = load i32*, i32** %15, align 8
  store i32 %44, i32* %45, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = call i32* @fail_message(%struct.TYPE_10__* %48)
  store i32* %49, i32** %8, align 8
  br label %92

50:                                               ; preds = %42
  br label %53

51:                                               ; preds = %39
  %52 = load i32*, i32** %15, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = call i32* @fail_message(%struct.TYPE_10__* %66)
  store i32* %67, i32** %8, align 8
  br label %92

68:                                               ; preds = %53
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %71, %75
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memcpy(i64 %76, i8* %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %81
  store i64 %86, i64* %84, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = load i32, i32* @MQTT_MSG_TYPE_PUBLISH, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32* @fini_message(%struct.TYPE_10__* %87, i32 %88, i32 0, i32 %89, i32 %90)
  store i32* %91, i32** %8, align 8
  br label %92

92:                                               ; preds = %68, %65, %47, %36, %26
  %93 = load i32*, i32** %8, align 8
  ret i32* %93
}

declare dso_local i32 @init_message(%struct.TYPE_10__*) #1

declare dso_local i32* @fail_message(%struct.TYPE_10__*) #1

declare dso_local i64 @append_string(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @append_message_id(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32* @fini_message(%struct.TYPE_10__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
