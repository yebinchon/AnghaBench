; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_daylight_saving_ta.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_daylight_saving_ta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_3__*)* @daylight_saving_ta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @daylight_saving_ta(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @year_from_time(i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @isnan(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %70

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @convert_time(i32 %16, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @convert_time(i32 %21, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @isnan(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %15
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @isnan(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %15
  store i64 0, i64* %3, align 8
  br label %70

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %3, align 8
  br label %70

50:                                               ; preds = %42, %38
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  br label %70

54:                                               ; preds = %34
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %3, align 8
  br label %70

66:                                               ; preds = %58, %54
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %66, %62, %50, %46, %33, %14
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @year_from_time(i64) #1

declare dso_local i64 @isnan(i64) #1

declare dso_local i64 @convert_time(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
