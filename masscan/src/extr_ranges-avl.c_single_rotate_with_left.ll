; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges-avl.c_single_rotate_with_left.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges-avl.c_single_rotate_with_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RavlNode = type { i8*, %struct.RavlNode*, %struct.RavlNode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RavlNode* (%struct.RavlNode*)* @single_rotate_with_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RavlNode* @single_rotate_with_left(%struct.RavlNode* %0) #0 {
  %2 = alloca %struct.RavlNode*, align 8
  %3 = alloca %struct.RavlNode*, align 8
  store %struct.RavlNode* %0, %struct.RavlNode** %2, align 8
  store %struct.RavlNode* null, %struct.RavlNode** %3, align 8
  %4 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %5 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %4, i32 0, i32 1
  %6 = load %struct.RavlNode*, %struct.RavlNode** %5, align 8
  store %struct.RavlNode* %6, %struct.RavlNode** %3, align 8
  %7 = load %struct.RavlNode*, %struct.RavlNode** %3, align 8
  %8 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %7, i32 0, i32 2
  %9 = load %struct.RavlNode*, %struct.RavlNode** %8, align 8
  %10 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %11 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %10, i32 0, i32 1
  store %struct.RavlNode* %9, %struct.RavlNode** %11, align 8
  %12 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %13 = load %struct.RavlNode*, %struct.RavlNode** %3, align 8
  %14 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %13, i32 0, i32 2
  store %struct.RavlNode* %12, %struct.RavlNode** %14, align 8
  %15 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %16 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %15, i32 0, i32 1
  %17 = load %struct.RavlNode*, %struct.RavlNode** %16, align 8
  %18 = call i8* @height(%struct.RavlNode* %17)
  %19 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %20 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %19, i32 0, i32 2
  %21 = load %struct.RavlNode*, %struct.RavlNode** %20, align 8
  %22 = call i8* @height(%struct.RavlNode* %21)
  %23 = call i8* @max(i8* %18, i8* %22)
  %24 = getelementptr i8, i8* %23, i64 1
  %25 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %26 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.RavlNode*, %struct.RavlNode** %3, align 8
  %28 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %27, i32 0, i32 1
  %29 = load %struct.RavlNode*, %struct.RavlNode** %28, align 8
  %30 = call i8* @height(%struct.RavlNode* %29)
  %31 = load %struct.RavlNode*, %struct.RavlNode** %2, align 8
  %32 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @max(i8* %30, i8* %33)
  %35 = getelementptr i8, i8* %34, i64 1
  %36 = load %struct.RavlNode*, %struct.RavlNode** %3, align 8
  %37 = getelementptr inbounds %struct.RavlNode, %struct.RavlNode* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.RavlNode*, %struct.RavlNode** %3, align 8
  ret %struct.RavlNode* %38
}

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i8* @height(%struct.RavlNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
