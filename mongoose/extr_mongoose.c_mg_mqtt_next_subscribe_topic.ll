; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mqtt_next_subscribe_topic.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mqtt_next_subscribe_topic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mqtt_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mg_str = type { i8, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_mqtt_next_subscribe_topic(%struct.mg_mqtt_message* %0, %struct.mg_str* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_mqtt_message*, align 8
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mg_mqtt_message* %0, %struct.mg_mqtt_message** %6, align 8
  store %struct.mg_str* %1, %struct.mg_str** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %6, align 8
  %13 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %6, align 8
  %23 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %74

28:                                               ; preds = %4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %33, %37
  %39 = trunc i32 %38 to i8
  %40 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %41 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %40, i32 0, i32 0
  store i8 %39, i8* %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %45 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 2
  %48 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %49 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 8
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %47, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %6, align 8
  %57 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %74

62:                                               ; preds = %28
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %65 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 8
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %8, align 8
  store i8 %71, i8* %72, align 1
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %62, %61, %27
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
