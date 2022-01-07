; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_log.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 115, i32 116, i32 111, i32 112, i32 0], align 4
@MIMIKATZ_DEFAULT_LOG = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i32] [i32 85, i32 115, i32 105, i32 110, i32 103, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 102, i32 111, i32 114, i32 32, i32 108, i32 111, i32 103, i32 102, i32 105, i32 108, i32 101, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 79, i32 75, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 75, i32 79, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_standard_log(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32**, i32*** %4, align 8
  %8 = call i64 @kull_m_string_args_byName(i32 %6, i32** %7, i8* bitcast ([5 x i32]* @.str to i8*), i32* null, i32* null)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32**, i32*** %4, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  br label %20

18:                                               ; preds = %11
  %19 = load i32*, i32** @MIMIKATZ_DEFAULT_LOG, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32* [ %17, %14 ], [ %19, %18 ]
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32* [ null, %10 ], [ %21, %20 ]
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @kull_m_output_file(i32* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.3, i64 0, i64 0)
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @kprintf(i8* bitcast ([29 x i32]* @.str.1 to i8*), i32* %24, i8* %30)
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %32
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*, i32*, i8*) #1

declare dso_local i64 @kull_m_output_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
