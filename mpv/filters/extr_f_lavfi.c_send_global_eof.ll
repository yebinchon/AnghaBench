; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_send_global_eof.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_send_global_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavfi = type { i32, %struct.lavfi_pad** }
%struct.lavfi_pad = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"could not send EOF to filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lavfi*)* @send_global_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_global_eof(%struct.lavfi* %0) #0 {
  %2 = alloca %struct.lavfi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lavfi_pad*, align 8
  store %struct.lavfi* %0, %struct.lavfi** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %8 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %5
  %12 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %13 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %12, i32 0, i32 1
  %14 = load %struct.lavfi_pad**, %struct.lavfi_pad*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lavfi_pad*, %struct.lavfi_pad** %14, i64 %16
  %18 = load %struct.lavfi_pad*, %struct.lavfi_pad** %17, align 8
  store %struct.lavfi_pad* %18, %struct.lavfi_pad** %4, align 8
  %19 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %20 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %25 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %11
  br label %41

29:                                               ; preds = %23
  %30 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %31 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @av_buffersrc_add_frame(i32 %32, i32* null)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.lavfi*, %struct.lavfi** %2, align 8
  %37 = call i32 @MP_FATAL(%struct.lavfi* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %40 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %5

44:                                               ; preds = %5
  ret void
}

declare dso_local i64 @av_buffersrc_add_frame(i32, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.lavfi*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
