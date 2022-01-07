; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_acquire_tuplock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_acquire_tuplock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"could not obtain lock on row in relation \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @heap_acquire_tuplock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_acquire_tuplock(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %48

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %46 [
    i32 130, label %18
    i32 128, label %23
    i32 129, label %31
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @LockTupleTuplock(i32 %19, i32 %20, i32 %21)
  br label %46

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ConditionalLockTupleTuplock(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %48

30:                                               ; preds = %23
  br label %46

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ConditionalLockTupleTuplock(i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @RelationGetRelationName(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @ereport(i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %37, %31
  br label %46

46:                                               ; preds = %16, %45, %30, %18
  %47 = load i32*, i32** %11, align 8
  store i32 1, i32* %47, align 4
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %29, %15
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @LockTupleTuplock(i32, i32, i32) #1

declare dso_local i32 @ConditionalLockTupleTuplock(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
