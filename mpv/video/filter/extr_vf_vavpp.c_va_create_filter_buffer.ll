; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_va_create_filter_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_va_create_filter_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@VAProcFilterParameterBufferType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vaCreateBuffer()\00", align 1
@VA_INVALID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, i32, i32, i8*)* @va_create_filter_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va_create_filter_buffer(%struct.mp_filter* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %13 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %12, i32 0, i32 0
  %14 = load %struct.priv*, %struct.priv** %13, align 8
  store %struct.priv* %14, %struct.priv** %9, align 8
  %15 = load %struct.priv*, %struct.priv** %9, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.priv*, %struct.priv** %9, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VAProcFilterParameterBufferType, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @vaCreateBuffer(i32 %17, i32 %20, i32 %21, i32 %22, i32 %23, i8* %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %27 = call i64 @CHECK_VA_STATUS(%struct.mp_filter* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @VA_INVALID_ID, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  ret i32 %34
}

declare dso_local i32 @vaCreateBuffer(i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @CHECK_VA_STATUS(%struct.mp_filter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
