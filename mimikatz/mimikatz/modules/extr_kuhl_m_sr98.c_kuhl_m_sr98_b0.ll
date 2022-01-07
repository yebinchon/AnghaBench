; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_b0.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_b0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 98, i32 48, i32 0], align 4
@.str.1 = private unnamed_addr constant [37 x i32] [i32 91, i32 47, i32 98, i32 48, i32 58, i32 93, i32 48, i32 120, i32 46, i32 46, i32 46, i32 46, i32 46, i32 46, i32 46, i32 46, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 105, i32 115, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_b0(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = call i32 @kull_m_string_args_byName(i32 %9, i32** %10, i8* bitcast ([3 x i32]* @.str to i8*), i32** %5, i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @wcstoul(i32* %18, i32* null, i32 0)
  %20 = call i32 @kuhl_m_sr98_b0_descr(i32 %19)
  br label %23

21:                                               ; preds = %2
  %22 = call i32 @PRINT_ERROR(i8* bitcast ([37 x i32]* @.str.1 to i8*))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %24
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #1

declare dso_local i32 @kuhl_m_sr98_b0_descr(i32) #1

declare dso_local i32 @wcstoul(i32*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
