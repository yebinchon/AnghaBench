; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/route/extr_route.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/route/extr_route.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @Usage()
  store i32 %9, i32* %3, align 4
  br label %47

10:                                               ; preds = %2
  %11 = load i32**, i32*** %5, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @_tcscmp(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 (...) @PrintRoutes()
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %10
  %20 = load i32**, i32*** %5, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @_tcscmp(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 2
  %29 = load i32**, i32*** %5, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 2
  %31 = call i32 @add_route(i32 %28, i32** %30)
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %19
  %33 = load i32**, i32*** %5, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @_tcscmp(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 2
  %42 = load i32**, i32*** %5, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 2
  %44 = call i32 @del_route(i32 %41, i32** %43)
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %32
  %46 = call i32 (...) @Usage()
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %39, %26, %17, %8
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @_tcscmp(i32*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @PrintRoutes(...) #1

declare dso_local i32 @add_route(i32, i32**) #1

declare dso_local i32 @del_route(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
