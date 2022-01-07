; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_resize_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_resize_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32, i32, i32, i32, i8*, i32 }

@STREAM_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"resize stream to %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i32)* @stream_resize_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_resize_buffer(%struct.stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.stream*, %struct.stream** %4, align 8
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.stream*, %struct.stream** %4, align 8
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.stream*, %struct.stream** %4, align 8
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.stream*, %struct.stream** %4, align 8
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MPMAX(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.stream*, %struct.stream** %4, align 8
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @MPMAX(i32 %27, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @STREAM_MIN_BUFFER_SIZE, align 4
  %34 = call i32 @MPMAX(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mp_round_next_power_of_2(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @INT_MAX, align 4
  %42 = sdiv i32 %41, 8
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %106

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.stream*, %struct.stream** %4, align 8
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %106

53:                                               ; preds = %45
  %54 = load %struct.stream*, %struct.stream** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @MP_DBG(%struct.stream* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.stream*, %struct.stream** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i8* @ta_alloc_size(%struct.stream* %57, i32 %58)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %106

63:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  %64 = load %struct.stream*, %struct.stream** %4, align 8
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.stream*, %struct.stream** %4, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.stream*, %struct.stream** %4, align 8
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ring_copy(%struct.stream* %69, i8* %70, i32 %71, i32 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.stream*, %struct.stream** %4, align 8
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 5
  store i32 0, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.stream*, %struct.stream** %4, align 8
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.stream*, %struct.stream** %4, align 8
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.stream*, %struct.stream** %4, align 8
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @ta_free(i8* %97)
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.stream*, %struct.stream** %4, align 8
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.stream*, %struct.stream** %4, align 8
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %76, %62, %52, %44
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @mp_round_next_power_of_2(i32) #1

declare dso_local i32 @MP_DBG(%struct.stream*, i8*, i32) #1

declare dso_local i8* @ta_alloc_size(%struct.stream*, i32) #1

declare dso_local i32 @ring_copy(%struct.stream*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ta_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
