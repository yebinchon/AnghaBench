; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_find_pagesizes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_thuge-gen.c_find_pagesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"/sys/kernel/mm/hugepages/hugepages-*kB\00", align 1
@NUM_PAGESIZES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"/sys/kernel/mm/hugepages/hugepages-%lukB\00", align 1
@page_sizes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Found %luMB\0A\00", align 1
@num_page_sizes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_pagesizes() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @glob(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, %struct.TYPE_4__* %1)
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @NUM_PAGESIZES, align 4
  %7 = icmp sle i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %40, %0
  %11 = load i32, i32* %2, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @page_sizes, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @sscanf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** @page_sizes, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 10
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** @page_sizes, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 20
  %39 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %15
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %10

43:                                               ; preds = %10
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* @num_page_sizes, align 4
  %46 = call i32 @globfree(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @globfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
