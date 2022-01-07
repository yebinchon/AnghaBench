; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_rdm.c_kuhl_m_rdm_version.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_rdm.c_kuhl_m_rdm_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [7 x i32] [i32 91, i32 37, i32 51, i32 117, i32 93, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 37, i32 83, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 78, i32 111, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_rdm_version(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %9 = call i64 @rdm_devices_get(%struct.TYPE_4__** %5, i32* %7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  br label %13

13:                                               ; preds = %32, %11
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str to i8*), i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @rdm_get_version(i32 %23, i32* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*), i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @LocalFree(i32 %29)
  br label %31

31:                                               ; preds = %26, %16
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %6, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = call i32 @rdm_devices_free(%struct.TYPE_4__* %37)
  br label %41

39:                                               ; preds = %2
  %40 = call i32 @PRINT_ERROR(i8* bitcast ([17 x i32]* @.str.2 to i8*))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %42
}

declare dso_local i64 @rdm_devices_get(%struct.TYPE_4__**, i32*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i64 @rdm_get_version(i32, i32*) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @rdm_devices_free(%struct.TYPE_4__*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
