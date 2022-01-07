; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_wprintf_hex.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_wprintf_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPRINTF_TYPES = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i32] [i32 10, i32 66, i32 89, i32 84, i32 69, i32 32, i32 100, i32 97, i32 116, i32 97, i32 91, i32 93, i32 32, i32 61, i32 32, i32 123, i32 10, i32 9, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 9, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 10, i32 125, i32 59, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_string_wprintf_hex(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 16
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** @WPRINTF_TYPES, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str to i8*))
  br label %23

23:                                               ; preds = %21, %3
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i64, i64* %4, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @kprintf(i8* %31, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = srem i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 15
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %41, %28
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 15
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.3 to i8*))
  br label %65

65:                                               ; preds = %63, %59
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
