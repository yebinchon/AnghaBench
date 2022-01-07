; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_get_named_pin.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_get_named_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i32 }
%struct.mp_filter = type { i32, %struct.mp_pin** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_pin* @mp_filter_get_named_pin(%struct.mp_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_pin*, align 8
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 1
  %19 = load %struct.mp_pin**, %struct.mp_pin*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %19, i64 %21
  %23 = load %struct.mp_pin*, %struct.mp_pin** %22, align 8
  %24 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 1
  %32 = load %struct.mp_pin**, %struct.mp_pin*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %32, i64 %34
  %36 = load %struct.mp_pin*, %struct.mp_pin** %35, align 8
  store %struct.mp_pin* %36, %struct.mp_pin** %3, align 8
  br label %42

37:                                               ; preds = %16, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %7
  store %struct.mp_pin* null, %struct.mp_pin** %3, align 8
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  ret %struct.mp_pin* %43
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
