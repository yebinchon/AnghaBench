; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_decode_control.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_decode_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@LIBCAPTION_OK = common dso_local global i32 0, align 4
@LIBCAPTION_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caption_frame_decode_control(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @eia608_parse_control(i32 %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %87 [
    i32 137, label %11
    i32 140, label %20
    i32 136, label %25
    i32 135, label %34
    i32 134, label %43
    i32 143, label %52
    i32 144, label %55
    i32 142, label %58
    i32 138, label %61
    i32 139, label %70
    i32 141, label %75
    i32 131, label %78
    i32 130, label %78
    i32 129, label %78
    i32 128, label %78
    i32 146, label %88
    i32 145, label %88
    i32 133, label %88
    i32 132, label %88
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = call i32 @caption_frame_buffer_clear(i32* %22)
  %24 = load i32, i32* @LIBCAPTION_READY, align 4
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %90

43:                                               ; preds = %2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 3, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %90

52:                                               ; preds = %2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = call i32 @caption_frame_carriage_return(%struct.TYPE_9__* %53)
  store i32 %54, i32* %3, align 4
  br label %90

55:                                               ; preds = %2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = call i32 @caption_frame_backspace(%struct.TYPE_9__* %56)
  store i32 %57, i32* %3, align 4
  br label %90

58:                                               ; preds = %2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = call i32 @caption_frame_delete_to_end_of_row(%struct.TYPE_9__* %59)
  store i32 %60, i32* %3, align 4
  br label %90

61:                                               ; preds = %2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %90

70:                                               ; preds = %2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = call i32 @caption_frame_buffer_clear(i32* %72)
  %74 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %90

75:                                               ; preds = %2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = call i32 @caption_frame_end(%struct.TYPE_9__* %76)
  store i32 %77, i32* %3, align 4
  br label %90

78:                                               ; preds = %2, %2, %2, %2
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 131
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %90

87:                                               ; preds = %2
  br label %88

88:                                               ; preds = %2, %2, %2, %2, %87
  %89 = load i32, i32* @LIBCAPTION_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %78, %75, %70, %61, %58, %55, %52, %43, %34, %25, %20, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @eia608_parse_control(i32, i32*) #1

declare dso_local i32 @caption_frame_buffer_clear(i32*) #1

declare dso_local i32 @caption_frame_carriage_return(%struct.TYPE_9__*) #1

declare dso_local i32 @caption_frame_backspace(%struct.TYPE_9__*) #1

declare dso_local i32 @caption_frame_delete_to_end_of_row(%struct.TYPE_9__*) #1

declare dso_local i32 @caption_frame_end(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
