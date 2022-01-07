; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_share_type.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_net.c_kuhl_m_net_share_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 100, i32 105, i32 115, i32 107, i32 116, i32 114, i32 101, i32 101, i32 32, i32 59, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 112, i32 114, i32 105, i32 110, i32 116, i32 113, i32 32, i32 59, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 59, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 105, i32 112, i32 99, i32 32, i32 59, i32 32, i32 0], align 4
@STYPE_TEMPORARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 116, i32 101, i32 109, i32 112, i32 111, i32 114, i32 97, i32 114, i32 121, i32 32, i32 59, i32 32, i32 0], align 4
@STYPE_SPECIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i32] [i32 115, i32 112, i32 101, i32 99, i32 105, i32 97, i32 108, i32 32, i32 59, i32 32, i32 0], align 4
@STYPE_RESERVED_ALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i32] [i32 114, i32 101, i32 115, i32 101, i32 114, i32 118, i32 101, i32 100, i32 32, i32 102, i32 108, i32 97, i32 103, i32 40, i32 115, i32 41, i32 32, i32 59, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_net_share_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @STYPE_MASK, align 4
  %5 = and i32 %3, %4
  switch i32 %5, label %14 [
    i32 130, label %6
    i32 128, label %8
    i32 131, label %10
    i32 129, label %12
  ]

6:                                                ; preds = %1
  %7 = call i32 @kprintf(i8* bitcast ([12 x i32]* @.str to i8*))
  br label %14

8:                                                ; preds = %1
  %9 = call i32 @kprintf(i8* bitcast ([10 x i32]* @.str.1 to i8*))
  br label %14

10:                                               ; preds = %1
  %11 = call i32 @kprintf(i8* bitcast ([10 x i32]* @.str.2 to i8*))
  br label %14

12:                                               ; preds = %1
  %13 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.3 to i8*))
  br label %14

14:                                               ; preds = %1, %12, %10, %8, %6
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @STYPE_TEMPORARY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @kprintf(i8* bitcast ([13 x i32]* @.str.4 to i8*))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @STYPE_SPECIAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @kprintf(i8* bitcast ([11 x i32]* @.str.5 to i8*))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @STYPE_RESERVED_ALL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @kprintf(i8* bitcast ([20 x i32]* @.str.6 to i8*))
  br label %35

35:                                               ; preds = %33, %28
  %36 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  ret void
}

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
