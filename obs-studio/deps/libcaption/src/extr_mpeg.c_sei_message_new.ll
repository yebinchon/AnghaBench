; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_message_new.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_message_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._sei_message_t = type { i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sei_message_new(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._sei_message_t*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = add i64 24, %8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to %struct._sei_message_t*
  store %struct._sei_message_t* %12, %struct._sei_message_t** %7, align 8
  %13 = load %struct._sei_message_t*, %struct._sei_message_t** %7, align 8
  %14 = getelementptr inbounds %struct._sei_message_t, %struct._sei_message_t* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct._sei_message_t*, %struct._sei_message_t** %7, align 8
  %17 = getelementptr inbounds %struct._sei_message_t, %struct._sei_message_t* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct._sei_message_t*, %struct._sei_message_t** %7, align 8
  %20 = getelementptr inbounds %struct._sei_message_t, %struct._sei_message_t* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct._sei_message_t*, %struct._sei_message_t** %7, align 8
  %25 = call i32 @sei_message_data(%struct._sei_message_t* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memcpy(i32 %25, i32* %26, i64 %27)
  br label %34

29:                                               ; preds = %3
  %30 = load %struct._sei_message_t*, %struct._sei_message_t** %7, align 8
  %31 = call i32 @sei_message_data(%struct._sei_message_t* %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @memset(i32 %31, i32 0, i64 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct._sei_message_t*, %struct._sei_message_t** %7, align 8
  %36 = bitcast %struct._sei_message_t* %35 to i32*
  ret i32* %36
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @sei_message_data(%struct._sei_message_t*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
