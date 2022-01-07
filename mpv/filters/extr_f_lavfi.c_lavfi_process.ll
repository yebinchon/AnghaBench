; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_lavfi_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_lavfi_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.lavfi* }
%struct.lavfi = type { i32, i32, i64, %struct.TYPE_2__**, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"recovering all eof\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @lavfi_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lavfi_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.lavfi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 0
  %10 = load %struct.lavfi*, %struct.lavfi** %9, align 8
  store %struct.lavfi* %10, %struct.lavfi** %3, align 8
  %11 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %12 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %17 = call i32 @init_graph(%struct.lavfi* %16)
  br label %18

18:                                               ; preds = %15, %1
  br label %19

19:                                               ; preds = %35, %18
  %20 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %21 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %26 = call i32 @read_output_pads(%struct.lavfi* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %28 = call i32 @feed_input_pads(%struct.lavfi* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %36

35:                                               ; preds = %31, %24
  br label %19

36:                                               ; preds = %34, %19
  %37 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %38 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %45 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %50 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %68 = call i32 @MP_VERBOSE(%struct.lavfi* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %70 = call i32 @free_graph(%struct.lavfi* %69)
  %71 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %72 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mp_filter_internal_mark_progress(i32 %73)
  br label %75

75:                                               ; preds = %66, %63
  br label %76

76:                                               ; preds = %75, %36
  %77 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %78 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %83 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mp_filter_internal_mark_failed(i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  ret void
}

declare dso_local i32 @init_graph(%struct.lavfi*) #1

declare dso_local i32 @read_output_pads(%struct.lavfi*) #1

declare dso_local i32 @feed_input_pads(%struct.lavfi*) #1

declare dso_local i32 @MP_VERBOSE(%struct.lavfi*, i8*) #1

declare dso_local i32 @free_graph(%struct.lavfi*) #1

declare dso_local i32 @mp_filter_internal_mark_progress(i32) #1

declare dso_local i32 @mp_filter_internal_mark_failed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
