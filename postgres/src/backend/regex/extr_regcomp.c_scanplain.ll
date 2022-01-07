; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_scanplain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_scanplain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32* }

@COLLEL = common dso_local global i32 0, align 4
@ECLASS = common dso_local global i32 0, align 4
@CCLASS = common dso_local global i32 0, align 4
@PLAIN = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.vars*)* @scanplain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scanplain(%struct.vars* %0) #0 {
  %2 = alloca %struct.vars*, align 8
  %3 = alloca i32*, align 8
  store %struct.vars* %0, %struct.vars** %2, align 8
  %4 = load i32, i32* @COLLEL, align 4
  %5 = call i64 @SEE(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ECLASS, align 4
  %9 = call i64 @SEE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @CCLASS, align 4
  %13 = call i64 @SEE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = phi i1 [ true, %7 ], [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 (...) @NEXT()
  %20 = load %struct.vars*, %struct.vars** %2, align 8
  %21 = getelementptr inbounds %struct.vars, %struct.vars* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %3, align 8
  br label %23

23:                                               ; preds = %27, %15
  %24 = load i32, i32* @PLAIN, align 4
  %25 = call i64 @SEE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.vars*, %struct.vars** %2, align 8
  %29 = getelementptr inbounds %struct.vars, %struct.vars* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %3, align 8
  %31 = call i32 (...) @NEXT()
  br label %23

32:                                               ; preds = %23
  %33 = load i32, i32* @END, align 4
  %34 = call i64 @SEE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = call i64 (...) @ISERR()
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ true, %32 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 (...) @NEXT()
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEE(i32) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i64 @ISERR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
