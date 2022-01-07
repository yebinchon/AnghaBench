; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_get_publish_data.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_mqtt_msg.c_mqtt_get_publish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mqtt_get_publish_data(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 127
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = mul nsw i32 7, %22
  %24 = shl i32 %20, %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %14
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %9

41:                                               ; preds = %34, %9
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 2
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i8* null, i8** %3, align 8
  br label %119

51:                                               ; preds = %41
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  store i32 %58, i32* %8, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %51
  %74 = load i32*, i32** %5, align 8
  store i32 0, i32* %74, align 4
  store i8* null, i8** %3, align 8
  br label %119

75:                                               ; preds = %51
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @mqtt_get_qos(i32* %79)
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 2
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i8* null, i8** %3, align 8
  br label %119

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %75
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8* null, i8** %3, align 8
  br label %119

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %98, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  br label %113

107:                                              ; preds = %97
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = bitcast i32* %117 to i8*
  store i8* %118, i8** %3, align 8
  br label %119

119:                                              ; preds = %113, %96, %88, %73, %50
  %120 = load i8*, i8** %3, align 8
  ret i8* %120
}

declare dso_local i64 @mqtt_get_qos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
