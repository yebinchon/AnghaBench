; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_remove_pin.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_remove_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32, %struct.mp_pin**, %struct.mp_pin** }
%struct.mp_pin = type { %struct.mp_pin*, %struct.mp_filter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_filter_remove_pin(%struct.mp_filter* %0, %struct.mp_pin* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_pin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  store %struct.mp_pin* %1, %struct.mp_pin** %4, align 8
  %8 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %9 = icmp ne %struct.mp_pin* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %90

11:                                               ; preds = %2
  %12 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %13 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %12, i32 0, i32 1
  %14 = load %struct.mp_filter*, %struct.mp_filter** %13, align 8
  %15 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %16 = icmp eq %struct.mp_filter* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %20 = call i32 @mp_pin_disconnect(%struct.mp_pin* %19)
  %21 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %22 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %21, i32 0, i32 0
  %23 = load %struct.mp_pin*, %struct.mp_pin** %22, align 8
  %24 = call i32 @mp_pin_disconnect(%struct.mp_pin* %23)
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %44, %11
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %28 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %33 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %32, i32 0, i32 1
  %34 = load %struct.mp_pin**, %struct.mp_pin*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %34, i64 %36
  %38 = load %struct.mp_pin*, %struct.mp_pin** %37, align 8
  %39 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %40 = icmp eq %struct.mp_pin* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %25

47:                                               ; preds = %41, %25
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %53 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %52, i32 0, i32 2
  %54 = load %struct.mp_pin**, %struct.mp_pin*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %54, i64 %56
  %58 = load %struct.mp_pin*, %struct.mp_pin** %57, align 8
  %59 = call i32 @talloc_free(%struct.mp_pin* %58)
  %60 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %61 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %60, i32 0, i32 1
  %62 = load %struct.mp_pin**, %struct.mp_pin*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %62, i64 %64
  %66 = load %struct.mp_pin*, %struct.mp_pin** %65, align 8
  %67 = call i32 @talloc_free(%struct.mp_pin* %66)
  %68 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %69 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %72 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %71, i32 0, i32 2
  %73 = load %struct.mp_pin**, %struct.mp_pin*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_pin** %73, i32 %74, i32 %75)
  %77 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %78 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %7, align 4
  %80 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %81 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %80, i32 0, i32 1
  %82 = load %struct.mp_pin**, %struct.mp_pin*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_pin** %82, i32 %83, i32 %84)
  %86 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %87 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %47, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_pin_disconnect(%struct.mp_pin*) #1

declare dso_local i32 @talloc_free(%struct.mp_pin*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_pin**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
