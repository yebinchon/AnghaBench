; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_null-output.c_null_output_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_null-output.c_null_output_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.null_output = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @null_output_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_output_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.null_output*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.null_output*
  store %struct.null_output* %6, %struct.null_output** %4, align 8
  %7 = load %struct.null_output*, %struct.null_output** %4, align 8
  %8 = getelementptr inbounds %struct.null_output, %struct.null_output* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @obs_output_can_begin_data_capture(i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.null_output*, %struct.null_output** %4, align 8
  %15 = getelementptr inbounds %struct.null_output, %struct.null_output* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @obs_output_initialize_encoders(i32 %16, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %35

20:                                               ; preds = %13
  %21 = load %struct.null_output*, %struct.null_output** %4, align 8
  %22 = getelementptr inbounds %struct.null_output, %struct.null_output* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.null_output*, %struct.null_output** %4, align 8
  %27 = getelementptr inbounds %struct.null_output, %struct.null_output* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pthread_join(i32 %28, i32* null)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.null_output*, %struct.null_output** %4, align 8
  %32 = getelementptr inbounds %struct.null_output, %struct.null_output* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @obs_output_begin_data_capture(i32 %33, i32 0)
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %19, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare dso_local i32 @obs_output_initialize_encoders(i32, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @obs_output_begin_data_capture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
