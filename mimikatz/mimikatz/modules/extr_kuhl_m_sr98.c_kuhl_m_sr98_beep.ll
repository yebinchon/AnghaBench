; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_beep.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [17 x i32] [i32 78, i32 111, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_beep(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 9, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32**, i32*** %4, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @wcstoul(i32* %14, i32* null, i32 0)
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = call i64 @sr98_devices_get(%struct.TYPE_4__** %5, i32* %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %6, align 8
  br label %21

21:                                               ; preds = %30, %19
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @sr98_beep(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %6, align 8
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = call i32 @sr98_devices_free(%struct.TYPE_4__* %35)
  br label %39

37:                                               ; preds = %16
  %38 = call i32 @PRINT_ERROR(i8* bitcast ([17 x i32]* @.str to i8*))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %40
}

declare dso_local i32 @wcstoul(i32*, i32*, i32) #1

declare dso_local i64 @sr98_devices_get(%struct.TYPE_4__**, i32*) #1

declare dso_local i32 @sr98_beep(i32, i32) #1

declare dso_local i32 @sr98_devices_free(%struct.TYPE_4__*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
