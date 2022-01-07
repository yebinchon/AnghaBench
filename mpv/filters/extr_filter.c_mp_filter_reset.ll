; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32, %struct.TYPE_4__*, %struct.mp_pin** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.mp_filter** }
%struct.TYPE_3__ = type { i32 (%struct.mp_filter*)* }
%struct.mp_pin = type { %struct.mp_pin* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_filter_reset(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_pin*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %16 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.mp_filter**, %struct.mp_filter*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %19, i64 %21
  %23 = load %struct.mp_filter*, %struct.mp_filter** %22, align 8
  call void @mp_filter_reset(%struct.mp_filter* %23)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %36 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %35, i32 0, i32 2
  %37 = load %struct.mp_pin**, %struct.mp_pin*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %37, i64 %39
  %41 = load %struct.mp_pin*, %struct.mp_pin** %40, align 8
  store %struct.mp_pin* %41, %struct.mp_pin** %5, align 8
  %42 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %43 = call i32 @reset_pin(%struct.mp_pin* %42)
  %44 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %45 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %44, i32 0, i32 0
  %46 = load %struct.mp_pin*, %struct.mp_pin** %45, align 8
  %47 = call i32 @reset_pin(%struct.mp_pin* %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %53 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.mp_filter*)*, i32 (%struct.mp_filter*)** %57, align 8
  %59 = icmp ne i32 (%struct.mp_filter*)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %62 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.mp_filter*)*, i32 (%struct.mp_filter*)** %66, align 8
  %68 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %69 = call i32 %67(%struct.mp_filter* %68)
  br label %70

70:                                               ; preds = %60, %51
  ret void
}

declare dso_local i32 @reset_pin(%struct.mp_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
