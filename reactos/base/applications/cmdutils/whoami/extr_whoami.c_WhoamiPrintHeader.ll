; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiPrintHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/whoami/extr_whoami.c_WhoamiPrintHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NoHeader = common dso_local global i64 0, align 8
@PrintFormat = common dso_local global i64 0, align 8
@csv = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i32] [i32 10, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 45, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WhoamiPrintHeader(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i8* @WhoamiLoadRcString(i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @wcslen(i8* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @NoHeader, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @PrintFormat, align 8
  %13 = load i64, i64* @csv, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %27

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i8*, ...) @wprintf(i8* bitcast ([5 x i32]* @.str to i8*), i8* %17)
  br label %19

19:                                               ; preds = %23, %16
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @wprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %19

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @wprintf(i8* bitcast ([3 x i32]* @.str.2 to i8*))
  br label %27

27:                                               ; preds = %25, %15
  ret void
}

declare dso_local i8* @WhoamiLoadRcString(i32) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @wprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
