; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_dump_pin_state.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_dump_pin_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32 }
%struct.mp_pin = type { i64, %struct.TYPE_4__, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"  [%p] %s %s c=%s[%p] f=%s[%p] m=%s[%p] %s %s %s\0A\00", align 1
@MP_PIN_IN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"(within)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"(request)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*, %struct.mp_pin*)* @dump_pin_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pin_state(%struct.mp_filter* %0, %struct.mp_pin* %1) #0 {
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.mp_pin*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  store %struct.mp_pin* %1, %struct.mp_pin** %4, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %6 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %7 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %8 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %11 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_PIN_IN, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %18 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %23 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @filt_name(i32 %26)
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i8* [ %27, %21 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %28 ]
  %31 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %32 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %31, i32 0, i32 6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %35 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %40 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %39, i32 0, i32 5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @filt_name(i32 %43)
  br label %46

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i8* [ %44, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %45 ]
  %48 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %49 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %48, i32 0, i32 5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %52 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @filt_name(i32 %53)
  %55 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %56 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %59 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %64 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %65 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %70 = load %struct.mp_pin*, %struct.mp_pin** %4, align 8
  %71 = getelementptr inbounds %struct.mp_pin, %struct.mp_pin* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mp_frame_type_str(i32 %73)
  %75 = call i32 @MP_WARN(%struct.mp_filter* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.mp_pin* %6, i32 %9, i8* %16, i8* %30, %struct.TYPE_5__* %33, i8* %47, %struct.TYPE_6__* %50, i8* %54, i32 %57, i8* %63, i8* %69, i32 %74)
  ret void
}

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*, %struct.mp_pin*, i32, i8*, i8*, %struct.TYPE_5__*, i8*, %struct.TYPE_6__*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @filt_name(i32) #1

declare dso_local i32 @mp_frame_type_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
