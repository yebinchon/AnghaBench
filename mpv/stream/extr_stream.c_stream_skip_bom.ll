; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_skip_bom.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_skip_bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@bom = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_skip_bom(%struct.stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  %8 = load %struct.stream*, %struct.stream** %3, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %10 = call i32 @stream_read_peek(%struct.stream* %8, i8* %9, i32 4)
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %13, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load i32*, i32** @bom, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %struct.TYPE_3__* %6 to { i8*, i32 }*
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %24, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @bstr_startswith0(i8* %26, i32 %28, i32 %23)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load %struct.stream*, %struct.stream** %3, align 8
  %33 = load i32*, i32** @bom, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = call i32 @stream_skip(%struct.stream* %32, i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %15

45:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @stream_read_peek(%struct.stream*, i8*, i32) #1

declare dso_local i64 @bstr_startswith0(i8*, i32, i32) #1

declare dso_local i32 @stream_skip(%struct.stream*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
