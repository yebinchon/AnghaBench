; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_list.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i32] [i32 10, i32 91, i32 37, i32 51, i32 117, i32 93, i32 32, i32 37, i32 115, i32 10, i32 32, i32 32, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 52, i32 120, i32 44, i32 32, i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 52, i32 120, i32 44, i32 32, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 52, i32 120, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 78, i32 111, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_list(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = call i64 @sr98_devices_get(%struct.TYPE_6__** %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  br label %12

12:                                               ; preds = %35, %10
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @kprintf(i8* bitcast ([62 x i32]* @.str to i8*), i32 %18, i32 %21, i32 %25, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %15
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %6, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i32 @sr98_devices_free(%struct.TYPE_6__* %40)
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @PRINT_ERROR(i8* bitcast ([17 x i32]* @.str.1 to i8*))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %45
}

declare dso_local i64 @sr98_devices_get(%struct.TYPE_6__**, i32*) #1

declare dso_local i32 @kprintf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sr98_devices_free(%struct.TYPE_6__*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
