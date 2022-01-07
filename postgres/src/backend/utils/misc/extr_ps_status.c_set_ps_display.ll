; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_ps_status.c_set_ps_display.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_ps_status.c_set_ps_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@update_process_title = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i32 0, align 4
@ps_buffer = common dso_local global i64 0, align 8
@ps_buffer_fixed_size = common dso_local global i64 0, align 8
@ps_buffer_size = common dso_local global i64 0, align 8
@ps_buffer_cur_len = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i32 0, align 4
@PSTAT_SETCMD = common dso_local global i32 0, align 4
@PS_BUFFER_SIZE = common dso_local global i32 0, align 4
@PS_PADDING = common dso_local global i32 0, align 4
@PS_STRINGS = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@last_status_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ps_display(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @update_process_title, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %26

11:                                               ; preds = %7, %2
  %12 = load i32, i32* @IsUnderPostmaster, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %26

15:                                               ; preds = %11
  %16 = load i64, i64* @ps_buffer, align 8
  %17 = load i64, i64* @ps_buffer_fixed_size, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* @ps_buffer_size, align 8
  %21 = load i64, i64* @ps_buffer_fixed_size, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i32 @strlcpy(i64 %18, i8* %19, i64 %22)
  %24 = load i64, i64* @ps_buffer, align 8
  %25 = call i64 @strlen(i64 %24)
  store i64 %25, i64* @ps_buffer_cur_len, align 8
  br label %26

26:                                               ; preds = %15, %14, %10
  ret void
}

declare dso_local i32 @strlcpy(i64, i8*, i64) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
