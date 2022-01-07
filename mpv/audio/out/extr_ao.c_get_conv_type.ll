; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_get_conv_type.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_get_conv_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao_convert_fmt = type { i64, i32, i32 }

@AF_FORMAT_S32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao_convert_fmt*)* @get_conv_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_conv_type(%struct.ao_convert_fmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao_convert_fmt*, align 8
  store %struct.ao_convert_fmt* %0, %struct.ao_convert_fmt** %3, align 8
  %4 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %5 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @af_fmt_to_bytes(i64 %6)
  %8 = mul nsw i32 %7, 8
  %9 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %10 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %15 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %54

19:                                               ; preds = %13, %1
  %20 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %21 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_FORMAT_S32, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %27 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %32 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %54

36:                                               ; preds = %30, %25, %19
  %37 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %38 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_FORMAT_S32, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %44 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.ao_convert_fmt*, %struct.ao_convert_fmt** %3, align 8
  %49 = getelementptr inbounds %struct.ao_convert_fmt, %struct.ao_convert_fmt* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 2, i32* %2, align 4
  br label %54

53:                                               ; preds = %47, %42, %36
  store i32 -1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %35, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @af_fmt_to_bytes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
