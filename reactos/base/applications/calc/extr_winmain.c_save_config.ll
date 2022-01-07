; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_save_config.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_save_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"SciCalc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"UseSep\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SOFTWARE\\Microsoft\\Calc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_config() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 8, i32* %3, align 4
  %4 = call i32 @GetVersionEx(%struct.TYPE_4__* %2)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %28 [
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %0, %0
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %9 = call i32* @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 4
  %11 = call i32 @_stprintf(i32* %8, i32* %9, i32 %10)
  %12 = call i32* @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %15 = call i32 @WriteProfileString(i32* %12, i32* %13, i32* %14)
  %16 = call i32* @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = call i32* @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %25

23:                                               ; preds = %7
  %24 = call i32* @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32* [ %22, %21 ], [ %24, %23 ]
  %27 = call i32 @WriteProfileString(i32* %16, i32* %17, i32* %26)
  br label %37

28:                                               ; preds = %0
  %29 = call i32* @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 4
  %32 = call i32 @SaveRegInt(i32* %29, i32* %30, i32 %31)
  %33 = call i32* @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 4
  %36 = call i32 @SaveRegInt(i32* %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @GetVersionEx(%struct.TYPE_4__*) #1

declare dso_local i32 @_stprintf(i32*, i32*, i32) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @WriteProfileString(i32*, i32*, i32*) #1

declare dso_local i32 @SaveRegInt(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
