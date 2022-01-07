; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_asprint_perf.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_asprint_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_frame_perf = type { i32, i32*, %struct.mp_pass_perf* }
%struct.mp_pass_perf = type { i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"- %s: last %dus avg %dus peak %dus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.mp_frame_perf*)* @asprint_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @asprint_perf(i8* %0, %struct.mp_frame_perf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mp_frame_perf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_pass_perf*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mp_frame_perf* %1, %struct.mp_frame_perf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %10 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %15 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %14, i32 0, i32 2
  %16 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %16, i64 %18
  store %struct.mp_pass_perf* %19, %struct.mp_pass_perf** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %22 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %29 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = sdiv i32 %31, 1000
  %33 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %34 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = sdiv i32 %36, 1000
  %38 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %39 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = sdiv i32 %41, 1000
  %43 = call i8* @talloc_asprintf_append(i8* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %37, i32 %42)
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %13
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %7

47:                                               ; preds = %7
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
