; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/simplelink/extr_sl_mg_task.c_mg_start_task.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/simplelink/extr_sl_mg_task.c_mg_start_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_mg_q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"MG\00", align 1
@OSI_OK = common dso_local global i64 0, align 8
@mg_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_start_task(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = call i64 @osi_MsgQCreate(i32* @s_mg_q, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4, i32 16)
  %9 = load i64, i64* @OSI_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

12:                                               ; preds = %3
  %13 = load i32, i32* @mg_task, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @osi_TaskCreate(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %16, i32 %17, i32* null)
  %19 = load i64, i64* @OSI_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %23

22:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21, %11
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @osi_MsgQCreate(i32*, i8*, i32, i32) #1

declare dso_local i64 @osi_TaskCreate(i32, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
