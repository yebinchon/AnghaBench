; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_write_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_write_buffer(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.TYPE_4__*, i8*, i32)**
  %13 = load i32 (%struct.TYPE_4__*, i8*, i32)*, i32 (%struct.TYPE_4__*, i8*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_4__*, i8*, i32)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %33, %16
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.TYPE_4__*, i8*, i32)**
  %25 = load i32 (%struct.TYPE_4__*, i8*, i32)*, i32 (%struct.TYPE_4__*, i8*, i32)** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %25(%struct.TYPE_4__* %26, i8* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %48

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %32, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
