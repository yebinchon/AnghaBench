; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_encode_eia608.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_encode_eia608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@cc_type_ntsc_cc_field_1 = common dso_local global i32 0, align 4
@eia608_control_resume_caption_loading = common dso_local global i32 0, align 4
@DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@eia608_control_end_of_caption = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sei_encode_eia608(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 31, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call i32 @sei_append_708(i32* %13, %struct.TYPE_7__* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %25 = load i32, i32* @eia608_control_resume_caption_loading, align 4
  %26 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %27 = call i64 @eia608_control_command(i32 %25, i32 %26)
  %28 = call i32 @cea708_add_cc_data(%struct.TYPE_7__* %23, i32 1, i32 %24, i64 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %31 = load i32, i32* @eia608_control_resume_caption_loading, align 4
  %32 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %33 = call i64 @eia608_control_command(i32 %31, i32 %32)
  %34 = call i32 @cea708_add_cc_data(%struct.TYPE_7__* %29, i32 1, i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %22, %16
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 0, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32, i32* @eia608_control_end_of_caption, align 4
  %42 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %43 = call i64 @eia608_control_command(i32 %41, i32 %42)
  call void @sei_encode_eia608(i32* %39, %struct.TYPE_7__* %40, i64 %43)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load i32, i32* @eia608_control_end_of_caption, align 4
  %47 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %48 = call i64 @eia608_control_command(i32 %46, i32 %47)
  call void @sei_encode_eia608(i32* %44, %struct.TYPE_7__* %45, i64 %48)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i32 @sei_append_708(i32* %49, %struct.TYPE_7__* %50)
  br label %57

52:                                               ; preds = %35
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @cea708_add_cc_data(%struct.TYPE_7__* %53, i32 1, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %38
  ret void
}

declare dso_local i32 @sei_append_708(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @cea708_add_cc_data(%struct.TYPE_7__*, i32, i32, i64) #1

declare dso_local i64 @eia608_control_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
