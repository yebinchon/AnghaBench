; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_ece_function_is_safe.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_ece_function_is_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@PROVOLATILE_IMMUTABLE = common dso_local global i8 0, align 1
@PROVOLATILE_STABLE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ece_function_is_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ece_function_is_safe(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call signext i8 @func_volatile(i32 %7)
  store i8 %8, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @PROVOLATILE_IMMUTABLE, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @PROVOLATILE_STABLE, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %20, %15
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local signext i8 @func_volatile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
