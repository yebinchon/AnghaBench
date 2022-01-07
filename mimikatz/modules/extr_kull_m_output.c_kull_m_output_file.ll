; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_output.c_kull_m_output_file.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_output.c_kull_m_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 97, i32 0], align 4
@logfile = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_output_file(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i32* @_wfopen(i64 %9, i8* bitcast ([2 x i32]* @.str to i8*))
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %2, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14, %11
  %18 = load i32*, i32** @logfile, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** @logfile, align 8
  %22 = call i32 @fclose(i32* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32*, i32** %4, align 8
  store i32* %24, i32** @logfile, align 8
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i64, i64* %2, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* %2, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** @logfile, align 8
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i1 [ true, %25 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i32* @_wfopen(i64, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
