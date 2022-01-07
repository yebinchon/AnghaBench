; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_binop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevaluator = type { i32 }

@PEV_MAX_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"binop: unknown op (%c)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevaluator*, i8)* @pev_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pev_binop(%struct.pevaluator* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pevaluator*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pevaluator* %0, %struct.pevaluator** %4, align 8
  store i8 %1, i8* %5, align 1
  %12 = load i32, i32* @PEV_MAX_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %17 = call i32 @pev_pop_val(%struct.pevaluator* %16, i32* %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %21 = call i32 @pev_pop_val(%struct.pevaluator* %20, i32* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %48 [
    i32 43, label %28
    i32 45, label %32
    i32 42, label %36
    i32 47, label %40
    i32 37, label %44
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  br label %52

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  br label %52

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %10, align 4
  br label %52

44:                                               ; preds = %25
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %52

48:                                               ; preds = %25
  %49 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %50 = load i8, i8* %5, align 1
  %51 = call i32 @PEV_ERROR1(%struct.pevaluator* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %50)
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

52:                                               ; preds = %44, %40, %36, %32, %28
  %53 = trunc i64 %13 to i32
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @snprintf(i8* %15, i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %57 = call i32 @pev_push(%struct.pevaluator* %56, i8* %15)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %52, %48, %23
  %60 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pev_pop_val(%struct.pevaluator*, i32*) #2

declare dso_local i32 @PEV_ERROR1(%struct.pevaluator*, i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pev_push(%struct.pevaluator*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
