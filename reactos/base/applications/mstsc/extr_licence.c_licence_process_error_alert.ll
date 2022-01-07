; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process_error_alert.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_process_error_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i8* null, align 8
@g_licence_issued = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"License error alert from server: No license server\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"License error alert from server: Invalid client\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"License error alert from server: code %u, state transition %u\0A\00", align 1
@g_licence_error_result = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @licence_process_error_alert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @in_uint32(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @in_uint32(i32 %9, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @in_uint32(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i8*, i8** @True, align 8
  store i8* %18, i8** @g_licence_issued, align 8
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %26 [
    i32 6, label %21
    i32 8, label %23
    i32 4, label %25
    i32 11, label %25
    i32 12, label %25
  ]

21:                                               ; preds = %19
  %22 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %30

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %30

25:                                               ; preds = %19, %19, %19
  br label %26

26:                                               ; preds = %19, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %23, %21
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %32 [
  ]

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** @True, align 8
  store i8* %34, i8** @g_licence_error_result, align 8
  br label %35

35:                                               ; preds = %33, %17
  ret void
}

declare dso_local i32 @in_uint32(i32, i32) #1

declare dso_local i32 @warning(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
