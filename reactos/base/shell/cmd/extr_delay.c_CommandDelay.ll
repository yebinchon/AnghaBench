; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_delay.c_CommandDelay.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_delay.c_CommandDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STRING_DELAY_HELP = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"/m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CommandDelay(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 1000, i32* %5, align 4
  %6 = load i64*, i64** %3, align 8
  %7 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = call i64 @_tcsncmp(i64* %6, i32 %7, i32 2)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @TRUE, align 4
  %12 = load i32, i32* @STRING_DELAY_HELP, align 4
  %13 = call i32 @ConOutResPaging(i32 %11, i32 %12)
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  store i64 0, i64* @nErrorLevel, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @error_req_param_missing()
  store i32 1, i32* %2, align 4
  br label %35

20:                                               ; preds = %14
  %21 = load i64*, i64** %3, align 8
  %22 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i64 @_tcsnicmp(i64* %21, i32 %22, i32 2)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  store i64* %27, i64** %3, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i64*, i64** %3, align 8
  %30 = call i32 @_ttoi(i64* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @Sleep(i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %18, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @_tcsncmp(i64*, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ConOutResPaging(i32, i32) #1

declare dso_local i32 @error_req_param_missing(...) #1

declare dso_local i64 @_tcsnicmp(i64*, i32, i32) #1

declare dso_local i32 @_ttoi(i64*) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
