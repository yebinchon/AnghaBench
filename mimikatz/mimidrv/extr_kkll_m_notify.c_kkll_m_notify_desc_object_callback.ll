; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_desc_object_callback.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_desc_object_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i32] [i32 9, i32 42, i32 32, i32 67, i32 97, i32 108, i32 108, i32 98, i32 97, i32 99, i32 107, i32 32, i32 91, i32 116, i32 121, i32 112, i32 101, i32 32, i32 37, i32 117, i32 93, i32 32, i32 45, i32 32, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 32, i32 48, i32 120, i32 37, i32 112, i32 32, i32 40, i32 64, i32 32, i32 48, i32 120, i32 37, i32 112, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [19 x i32] [i32 9, i32 9, i32 80, i32 114, i32 101, i32 79, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 9, i32 9, i32 80, i32 111, i32 115, i32 116, i32 79, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 58, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_notify_desc_object_callback(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = call i32 (i32, i8*, ...) @kprintf(i32 %17, i8* bitcast ([46 x i32]* @.str to i8*), i32 %20, i32 %23, %struct.TYPE_3__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @NT_SUCCESS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @kprintf(i32 %35, i8* bitcast ([19 x i32]* @.str.1 to i8*))
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @kkll_m_modules_fromAddr(i32 %41, i64 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %29, %16
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @NT_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i32, i8*, ...) @kprintf(i32 %57, i8* bitcast ([19 x i32]* @.str.2 to i8*))
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @NT_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @kkll_m_modules_fromAddr(i32 %63, i64 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %51, %47
  br label %70

70:                                               ; preds = %69, %11
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @kprintf(i32, i8*, ...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kkll_m_modules_fromAddr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
