; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_push.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevaluator = type { i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"push: out of memory\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevaluator*, i8*)* @pev_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pev_push(%struct.pevaluator* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pevaluator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.pevaluator* %0, %struct.pevaluator** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %8 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %11 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %10, i32 0, i32 2
  %12 = call i64 @vector_length(i32* %11)
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %16 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %15, i32 0, i32 2
  %17 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %18 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8** @vector_at(i32* %16, i64 %19)
  store i8** %20, i8*** %6, align 8
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %23 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %22, i32 0, i32 2
  %24 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %25 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %24, i32 0, i32 1
  %26 = call i8** @vector_add(i32* %23, i32* %25)
  store i8** %26, i8*** %6, align 8
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i8**, i8*** %6, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %32 = call i32 @PEV_ERROR(%struct.pevaluator* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %27
  %34 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %35 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %34, i32 0, i32 1
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @pool_strdup(i32* %35, i8* %36)
  %38 = load i8**, i8*** %6, align 8
  store i8* %37, i8** %38, align 8
  %39 = load %struct.pevaluator*, %struct.pevaluator** %4, align 8
  %40 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %30
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @vector_length(i32*) #1

declare dso_local i8** @vector_at(i32*, i64) #1

declare dso_local i8** @vector_add(i32*, i32*) #1

declare dso_local i32 @PEV_ERROR(%struct.pevaluator*, i8*) #1

declare dso_local i8* @pool_strdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
