; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-time/src/extr_time.c_my_timgm.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-time/src/extr_time.c_my_timgm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@timegm.ndays = internal constant [2 x [12 x i32]] [[12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31]], align 16
@timegm.epoch_year = internal constant i32 70, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @timegm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timegm(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.tm* %0, %struct.tm** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.tm*, %struct.tm** %2, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1900
  %10 = call i64 @is_leapyear(i32 %9)
  %11 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @timegm.ndays, i64 0, i64 %10
  %12 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  store i32* %12, i32** %5, align 8
  %13 = load %struct.tm*, %struct.tm** %2, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 70
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  store i32 70, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tm*, %struct.tm** %2, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1900
  %27 = call i64 @is_leapyear(i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 31622400, i32 31536000
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %18
  br label %57

37:                                               ; preds = %1
  %38 = load %struct.tm*, %struct.tm** %2, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %53, %37
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 70
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1900
  %47 = call i64 @is_leapyear(i32 %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 31622400, i32 31536000
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %41

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %36
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.tm*, %struct.tm** %2, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = mul i32 %69, 24
  %71 = mul i32 %70, 60
  %72 = mul i32 %71, 60
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load %struct.tm*, %struct.tm** %2, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = mul nsw i32 %82, 24
  %84 = mul nsw i32 %83, 60
  %85 = mul nsw i32 %84, 60
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load %struct.tm*, %struct.tm** %2, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 60
  %92 = mul nsw i32 %91, 60
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load %struct.tm*, %struct.tm** %2, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 60
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load %struct.tm*, %struct.tm** %2, align 8
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @is_leapyear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
