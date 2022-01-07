; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_list.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 91, i32 37, i32 46, i32 50, i32 117, i32 93, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_notify_list(i32 %0, i32 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64*, i64** %9, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = call i32 @kkll_m_notify_search(i32 %19, i32 %20, i64* %21, i64* %22, i32* null)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %18, %5
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  store i64 0, i64* %13, align 8
  br label %29

29:                                               ; preds = %65, %28
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %34, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  br i1 %39, label %40, label %68

40:                                               ; preds = %38
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @KIWI_mask3bits(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %12, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @kprintf(i32 %51, i8* bitcast ([8 x i32]* @.str to i8*), i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kkll_m_modules_fromAddr(i32 %58, i32 %61)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %57, %50
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  br label %29

68:                                               ; preds = %38
  br label %69

69:                                               ; preds = %68, %24
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @kkll_m_notify_search(i32, i32, i64*, i64*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i64 @KIWI_mask3bits(i32) #1

declare dso_local i32 @kprintf(i32, i8*, i64) #1

declare dso_local i32 @kkll_m_modules_fromAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
