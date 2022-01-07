; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_sample_encoded_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_sample_encoded_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sample_encoded_callback(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @UNUSED_PARAMETER(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @UNUSED_PARAMETER(i32 %15)
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @CFRetain(i32* %22)
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @CMSimpleQueueEnqueue(i8* %24, i32* %25)
  br label %27

27:                                               ; preds = %21, %5
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @CFRelease(i8* %28)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @CFRetain(i32*) #1

declare dso_local i32 @CMSimpleQueueEnqueue(i8*, i32*) #1

declare dso_local i32 @CFRelease(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
