; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_construct_array.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_construct_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @construct_array(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 signext %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca [1 x i32], align 4
  %14 = alloca [1 x i32], align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8 %5, i8* %12, align 1
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  store i32 1, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i8, i8* %12, align 1
  %25 = call i32* @construct_md_array(i32* %18, i32* null, i32 1, i32* %19, i32* %20, i32 %21, i32 %22, i32 %23, i8 signext %24)
  ret i32* %25
}

declare dso_local i32* @construct_md_array(i32*, i32*, i32, i32*, i32*, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
