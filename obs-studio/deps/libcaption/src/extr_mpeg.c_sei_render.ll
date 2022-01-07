; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sei_render(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  store i64 0, i64* %3, align 8
  br label %92

20:                                               ; preds = %14
  store i64 2, i64* %7, align 8
  %21 = load i32*, i32** %5, align 8
  store i32 6, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = call i32* @sei_message_head(%struct.TYPE_4__* %24)
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %86, %20
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %89

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @sei_message_type(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @sei_message_size(i32* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @sei_message_data(i32* %35)
  store i32* %36, i32** %11, align 8
  br label %37

37:                                               ; preds = %40, %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 255, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  store i32 255, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 255
  store i32 %47, i32* %9, align 4
  br label %37

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %58, %48
  %56 = load i32, i32* %10, align 4
  %57 = icmp sle i32 255, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  store i32 255, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 255
  store i32 %65, i32* %10, align 4
  br label %55

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @_copy_from_rbsp(i32* %73, i32* %74, i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = icmp uge i64 0, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i64 0, i64* %3, align 8
  br label %92

79:                                               ; preds = %66
  %80 = load i64, i64* %6, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  store i32* %82, i32** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %79
  %87 = load i32*, i32** %8, align 8
  %88 = call i32* @sei_message_next(i32* %87)
  store i32* %88, i32** %8, align 8
  br label %26

89:                                               ; preds = %26
  %90 = load i32*, i32** %5, align 8
  store i32 128, i32* %90, align 4
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %89, %78, %19
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32* @sei_message_head(%struct.TYPE_4__*) #1

declare dso_local i32 @sei_message_type(i32*) #1

declare dso_local i64 @sei_message_size(i32*) #1

declare dso_local i32* @sei_message_data(i32*) #1

declare dso_local i64 @_copy_from_rbsp(i32*, i32*, i32) #1

declare dso_local i32* @sei_message_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
