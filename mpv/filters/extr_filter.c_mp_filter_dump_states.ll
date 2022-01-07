; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_dump_states.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_dump_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, %struct.mp_filter**, %struct.mp_filter* }

@.str = private unnamed_addr constant [17 x i8] c"%s[%p] (%s[%p])\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_filter_dump_states(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %5 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = call i32 @filt_name(%struct.mp_filter* %6)
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.mp_filter*, %struct.mp_filter** %12, align 8
  %14 = call i32 @filt_name(%struct.mp_filter* %13)
  %15 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %16 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.mp_filter*, %struct.mp_filter** %18, align 8
  %20 = call i32 @MP_WARN(%struct.mp_filter* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.mp_filter* %8, i32 %14, %struct.mp_filter* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %46, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %24 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %29 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %30 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dump_pin_state(%struct.mp_filter* %28, i32 %35)
  %37 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %38 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %39 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dump_pin_state(%struct.mp_filter* %37, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %21

49:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %53 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %60 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.mp_filter**, %struct.mp_filter*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %63, i64 %65
  %67 = load %struct.mp_filter*, %struct.mp_filter** %66, align 8
  call void @mp_filter_dump_states(%struct.mp_filter* %67)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %50

71:                                               ; preds = %50
  ret void
}

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*, i32, %struct.mp_filter*, i32, %struct.mp_filter*) #1

declare dso_local i32 @filt_name(%struct.mp_filter*) #1

declare dso_local i32 @dump_pin_state(%struct.mp_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
