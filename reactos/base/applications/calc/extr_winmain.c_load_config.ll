; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_load_config.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"SciCalc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@CALC_LAYOUT_STANDARD = common dso_local global i8* null, align 8
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"UseSep\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"SOFTWARE\\Microsoft\\Calc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_config() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 8, i32* %2, align 4
  %3 = call i32 @GetVersionEx(%struct.TYPE_4__* %1)
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %22 [
    i32 128, label %6
    i32 129, label %6
  ]

6:                                                ; preds = %0, %0
  %7 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i8*, i8** @CALC_LAYOUT_STANDARD, align 8
  %10 = call i32 @GetProfileInt(i32 %7, i32 %8, i8* %9)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 2), align 8
  %11 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i8*, i8** @FALSE, align 8
  %14 = call i32 @GetProfileInt(i32 %11, i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i8*, i8** @TRUE, align 8
  br label %20

18:                                               ; preds = %6
  %19 = load i8*, i8** @FALSE, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i8* [ %17, %16 ], [ %19, %18 ]
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 8
  br label %38

22:                                               ; preds = %0
  %23 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** @CALC_LAYOUT_STANDARD, align 8
  %26 = call i32 @LoadRegInt(i32 %23, i32 %24, i8* %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 2), align 8
  %27 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i8*, i8** @FALSE, align 8
  %30 = call i32 @LoadRegInt(i32 %27, i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i8*, i8** @TRUE, align 8
  br label %36

34:                                               ; preds = %22
  %35 = load i8*, i8** @FALSE, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i8* [ %33, %32 ], [ %35, %34 ]
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 8
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 8
  %40 = call i32 (...) @UpdateNumberIntl()
  ret void
}

declare dso_local i32 @GetVersionEx(%struct.TYPE_4__*) #1

declare dso_local i32 @GetProfileInt(i32, i32, i8*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @LoadRegInt(i32, i32, i8*) #1

declare dso_local i32 @UpdateNumberIntl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
