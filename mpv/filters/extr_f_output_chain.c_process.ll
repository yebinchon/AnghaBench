; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.chain* }
%struct.chain = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (i32, i32)* }
%struct.mp_frame = type { i64 }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"filter input EOF\0A\00", align 1
@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"filter output EOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.chain*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 1
  %8 = load %struct.chain*, %struct.chain** %7, align 8
  store %struct.chain* %8, %struct.chain** %3, align 8
  %9 = load %struct.chain*, %struct.chain** %3, align 8
  %10 = getelementptr inbounds %struct.chain, %struct.chain* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %13 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @mp_pin_can_transfer_data(i32 %11, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %1
  %20 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %21 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @mp_pin_out_read(i32 %24)
  %26 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MP_FRAME_EOF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.chain*, %struct.chain** %3, align 8
  %33 = call i32 @MP_VERBOSE(%struct.chain* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %19
  %35 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.chain*, %struct.chain** %3, align 8
  %41 = getelementptr inbounds %struct.chain, %struct.chain* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = icmp ne i32 (i32, i32)* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.chain*, %struct.chain** %3, align 8
  %47 = getelementptr inbounds %struct.chain, %struct.chain* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load %struct.chain*, %struct.chain** %3, align 8
  %51 = getelementptr inbounds %struct.chain, %struct.chain* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @mp_frame_get_pts(i64 %55)
  %57 = call i32 %49(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %45, %39, %34
  %59 = load %struct.chain*, %struct.chain** %3, align 8
  %60 = getelementptr inbounds %struct.chain, %struct.chain* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mp_pin_in_write(i32 %61, i64 %63)
  br label %65

65:                                               ; preds = %58, %1
  %66 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %67 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.chain*, %struct.chain** %3, align 8
  %72 = getelementptr inbounds %struct.chain, %struct.chain* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @mp_pin_can_transfer_data(i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %65
  %77 = load %struct.chain*, %struct.chain** %3, align 8
  %78 = getelementptr inbounds %struct.chain, %struct.chain* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @mp_pin_out_read(i32 %79)
  %81 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MP_FRAME_EOF, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.chain*, %struct.chain** %3, align 8
  %88 = getelementptr inbounds %struct.chain, %struct.chain* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.chain*, %struct.chain** %3, align 8
  %91 = getelementptr inbounds %struct.chain, %struct.chain* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %76
  %96 = load %struct.chain*, %struct.chain** %3, align 8
  %97 = call i32 @MP_VERBOSE(%struct.chain* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %76
  %99 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %100 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @mp_pin_in_write(i32 %103, i64 %105)
  br label %107

107:                                              ; preds = %98, %65
  ret void
}

declare dso_local i64 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local i64 @mp_pin_out_read(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.chain*, i8*) #1

declare dso_local i32 @mp_frame_get_pts(i64) #1

declare dso_local i32 @mp_pin_in_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
