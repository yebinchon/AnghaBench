; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_to_caption_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_to_caption_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@LIBCAPTION_OK = common dso_local global i64 0, align 8
@sei_type_user_data_registered_itu_t_t35 = common dso_local global i64 0, align 8
@LIBCAPTION_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sei_to_caption_frame(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i64, i64* @LIBCAPTION_OK, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cea708_init(i32* %5, i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32* @sei_message_head(%struct.TYPE_7__* %13)
  store i32* %14, i32** %6, align 8
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i64, i64* @sei_type_user_data_registered_itu_t_t35, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @sei_message_type(i32* %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @sei_message_data(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @sei_message_size(i32* %26)
  %28 = call i32 @cea708_parse_h264(i32 %25, i32 %27, i32* %5)
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @cea708_to_caption_frame(%struct.TYPE_8__* %30, i32* %5)
  %32 = call i64 @libcaption_status_update(i64 %29, i32 %31)
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %23, %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @sei_message_next(i32* %35)
  store i32* %36, i32** %6, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i64, i64* @LIBCAPTION_READY, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %37
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local i32 @cea708_init(i32*, i32) #1

declare dso_local i32* @sei_message_head(%struct.TYPE_7__*) #1

declare dso_local i64 @sei_message_type(i32*) #1

declare dso_local i32 @cea708_parse_h264(i32, i32, i32*) #1

declare dso_local i32 @sei_message_data(i32*) #1

declare dso_local i32 @sei_message_size(i32*) #1

declare dso_local i64 @libcaption_status_update(i64, i32) #1

declare dso_local i32 @cea708_to_caption_frame(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @sei_message_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
