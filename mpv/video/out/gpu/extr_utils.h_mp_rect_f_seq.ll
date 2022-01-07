; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.h_mp_rect_f_seq.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.h_mp_rect_f_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_rect_f = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_rect_f*, %struct.mp_rect_f*)* @mp_rect_f_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_rect_f_seq(%struct.mp_rect_f* byval(%struct.mp_rect_f) align 8 %0, %struct.mp_rect_f* byval(%struct.mp_rect_f) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %0, i32 0, i32 3
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %1, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %4, %6
  %8 = call i32 @fabs(i64 %7)
  %9 = sitofp i32 %8 to double
  %10 = fcmp olt double %9, 0x3EB0C6F7A0B5ED8D
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %0, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %1, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %13, %15
  %17 = call i32 @fabs(i64 %16)
  %18 = sitofp i32 %17 to double
  %19 = fcmp olt double %18, 0x3EB0C6F7A0B5ED8D
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %0, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = call i32 @fabs(i64 %25)
  %27 = sitofp i32 %26 to double
  %28 = fcmp olt double %27, 0x3EB0C6F7A0B5ED8D
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %0, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.mp_rect_f, %struct.mp_rect_f* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %31, %33
  %35 = call i32 @fabs(i64 %34)
  %36 = sitofp i32 %35 to double
  %37 = fcmp olt double %36, 0x3EB0C6F7A0B5ED8D
  br label %38

38:                                               ; preds = %29, %20, %11, %2
  %39 = phi i1 [ false, %20 ], [ false, %11 ], [ false, %2 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
