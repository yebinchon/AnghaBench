; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_scannum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_scannum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }

@DIGIT = common dso_local global i32 0, align 4
@DUPMAX = common dso_local global i32 0, align 4
@REG_BADBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*)* @scannum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scannum(%struct.vars* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vars*, align 8
  %4 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* @DIGIT, align 4
  %7 = call i64 @SEE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DUPMAX, align 4
  %12 = icmp slt i32 %10, %11
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 10
  %18 = load %struct.vars*, %struct.vars** %3, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @NEXT()
  br label %5

23:                                               ; preds = %13
  %24 = load i32, i32* @DIGIT, align 4
  %25 = call i64 @SEE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DUPMAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @REG_BADBR, align 4
  %33 = call i32 @ERR(i32 %32)
  store i32 0, i32* %2, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @SEE(i32) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
