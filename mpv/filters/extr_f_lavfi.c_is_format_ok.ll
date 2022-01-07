; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_is_format_ok.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_is_format_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_frame = type { i64, i32 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32)* @is_format_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_format_ok(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_frame, align 8
  %7 = alloca %struct.mp_frame, align 8
  %8 = bitcast %struct.mp_frame* %6 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.mp_frame* %7 to { i64, i32 }*
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @is_vformat_ok(i32 %26, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %48

30:                                               ; preds = %19, %4
  %31 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @is_aformat_ok(i32 %43, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %36, %30
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %41, %24
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @is_vformat_ok(i32, i32) #1

declare dso_local i32 @is_aformat_ok(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
