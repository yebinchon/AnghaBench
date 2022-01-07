; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_pop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevaluator = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"pop: stack empty\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevaluator*, i8*)* @pev_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pev_pop(%struct.pevaluator* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pevaluator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.pevaluator* %0, %struct.pevaluator** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %8 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %7, i32 0, i32 1
  %9 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %10 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = call i8** @vector_at(i32* %8, i32 %12)
  store i8** %13, i8*** %6, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %18 = call i32 @PEV_ERROR(%struct.pevaluator* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcpy(i8* %20, i8* %22)
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i8** @vector_at(i32*, i32) #1

declare dso_local i32 @PEV_ERROR(%struct.pevaluator*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
