; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_samAccountType_toString.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_samAccountType_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i32] [i32 68, i32 79, i32 77, i32 65, i32 73, i32 78, i32 95, i32 79, i32 66, i32 74, i32 69, i32 67, i32 84, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 71, i32 82, i32 79, i32 85, i32 80, i32 95, i32 79, i32 66, i32 74, i32 69, i32 67, i32 84, i32 0], align 4
@.str.2 = private unnamed_addr constant [26 x i32] [i32 78, i32 79, i32 78, i32 95, i32 83, i32 69, i32 67, i32 85, i32 82, i32 73, i32 84, i32 89, i32 95, i32 71, i32 82, i32 79, i32 85, i32 80, i32 95, i32 79, i32 66, i32 74, i32 69, i32 67, i32 84, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 65, i32 76, i32 73, i32 65, i32 83, i32 95, i32 79, i32 66, i32 74, i32 69, i32 67, i32 84, i32 0], align 4
@.str.4 = private unnamed_addr constant [26 x i32] [i32 78, i32 79, i32 78, i32 95, i32 83, i32 69, i32 67, i32 85, i32 82, i32 73, i32 84, i32 89, i32 95, i32 65, i32 76, i32 73, i32 65, i32 83, i32 95, i32 79, i32 66, i32 74, i32 69, i32 67, i32 84, i32 0], align 4
@.str.5 = private unnamed_addr constant [12 x i32] [i32 85, i32 83, i32 69, i32 82, i32 95, i32 79, i32 66, i32 74, i32 69, i32 67, i32 84, i32 0], align 4
@.str.6 = private unnamed_addr constant [16 x i32] [i32 77, i32 65, i32 67, i32 72, i32 73, i32 78, i32 69, i32 95, i32 65, i32 67, i32 67, i32 79, i32 85, i32 78, i32 84, i32 0], align 4
@.str.7 = private unnamed_addr constant [14 x i32] [i32 84, i32 82, i32 85, i32 83, i32 84, i32 95, i32 65, i32 67, i32 67, i32 79, i32 85, i32 78, i32 84, i32 0], align 4
@.str.8 = private unnamed_addr constant [16 x i32] [i32 65, i32 80, i32 80, i32 95, i32 66, i32 65, i32 83, i32 73, i32 67, i32 95, i32 71, i32 82, i32 79, i32 85, i32 80, i32 0], align 4
@.str.9 = private unnamed_addr constant [16 x i32] [i32 65, i32 80, i32 80, i32 95, i32 81, i32 85, i32 69, i32 82, i32 89, i32 95, i32 71, i32 82, i32 79, i32 85, i32 80, i32 0], align 4
@.str.10 = private unnamed_addr constant [8 x i32] [i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kuhl_m_lsadump_samAccountType_toString(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %15 [
    i32 134, label %5
    i32 133, label %6
    i32 130, label %7
    i32 137, label %8
    i32 131, label %9
    i32 128, label %10
    i32 132, label %11
    i32 129, label %12
    i32 136, label %13
    i32 135, label %14
  ]

5:                                                ; preds = %1
  store i8* bitcast ([14 x i32]* @.str to i8*), i8** %3, align 8
  br label %16

6:                                                ; preds = %1
  store i8* bitcast ([13 x i32]* @.str.1 to i8*), i8** %3, align 8
  br label %16

7:                                                ; preds = %1
  store i8* bitcast ([26 x i32]* @.str.2 to i8*), i8** %3, align 8
  br label %16

8:                                                ; preds = %1
  store i8* bitcast ([13 x i32]* @.str.3 to i8*), i8** %3, align 8
  br label %16

9:                                                ; preds = %1
  store i8* bitcast ([26 x i32]* @.str.4 to i8*), i8** %3, align 8
  br label %16

10:                                               ; preds = %1
  store i8* bitcast ([12 x i32]* @.str.5 to i8*), i8** %3, align 8
  br label %16

11:                                               ; preds = %1
  store i8* bitcast ([16 x i32]* @.str.6 to i8*), i8** %3, align 8
  br label %16

12:                                               ; preds = %1
  store i8* bitcast ([14 x i32]* @.str.7 to i8*), i8** %3, align 8
  br label %16

13:                                               ; preds = %1
  store i8* bitcast ([16 x i32]* @.str.8 to i8*), i8** %3, align 8
  br label %16

14:                                               ; preds = %1
  store i8* bitcast ([16 x i32]* @.str.9 to i8*), i8** %3, align 8
  br label %16

15:                                               ; preds = %1
  store i8* bitcast ([8 x i32]* @.str.10 to i8*), i8** %3, align 8
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %17 = load i8*, i8** %3, align 8
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
