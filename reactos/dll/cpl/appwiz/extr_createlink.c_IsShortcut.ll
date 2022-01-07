; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_createlink.c_IsShortcut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_createlink.c_IsShortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i32] [i32 73, i32 115, i32 83, i32 104, i32 111, i32 114, i32 116, i32 99, i32 117, i32 116, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 121, i32 101, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsShortcut(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 40, i64* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %9 = ptrtoint i32* %8 to i32
  %10 = call i64 @RegQueryValueExW(i32 %7, i8* bitcast ([11 x i32]* @.str to i8*), i32* null, i64* %6, i32 %9, i64* %5)
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @REG_SZ, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %23 = call i64 @wcsicmp(i32* %22, i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i64 @wcsicmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
