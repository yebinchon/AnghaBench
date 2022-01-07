; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_nt_query_information.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_nt_query_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nt_query_information.initialized = internal global i32 0, align 4
@nt_query_information.func = internal global i32 (i32, i32, i32, i32)* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"NtQuerySystemInformation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @nt_query_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt_query_information(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @nt_query_information.initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = call i64 @get_nt_func(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i32 (i32, i32, i32, i32)*
  store i32 (i32, i32, i32, i32)* %14, i32 (i32, i32, i32, i32)** @nt_query_information.func, align 8
  store i32 1, i32* @nt_query_information.initialized, align 4
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** @nt_query_information.func, align 8
  %17 = icmp ne i32 (i32, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** @nt_query_information.func, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 %19(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i64 @get_nt_func(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
