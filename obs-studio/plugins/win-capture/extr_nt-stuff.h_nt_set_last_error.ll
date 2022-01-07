; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_nt_set_last_error.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_nt_set_last_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nt_set_last_error.initialized = internal global i32 0, align 4
@nt_set_last_error.func = internal global i32 (i32)* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"RtlNtStatusToDosError\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nt_set_last_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nt_set_last_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @nt_set_last_error.initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = call i64 @get_nt_func(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i32 (i32)*
  store i32 (i32)* %7, i32 (i32)** @nt_set_last_error.func, align 8
  store i32 1, i32* @nt_set_last_error.initialized, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32 (i32)*, i32 (i32)** @nt_set_last_error.func, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32 (i32)*, i32 (i32)** @nt_set_last_error.func, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 %12(i32 %13)
  %15 = call i32 @SetLastError(i32 %14)
  br label %16

16:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @get_nt_func(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
