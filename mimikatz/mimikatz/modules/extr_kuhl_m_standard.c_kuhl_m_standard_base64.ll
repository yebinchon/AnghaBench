; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_base64.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@isBase64InterceptInput = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i32] [i32 105, i32 110, i32 112, i32 117, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 111, i32 117, i32 116, i32 0], align 4
@isBase64InterceptOutput = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i32] [i32 111, i32 117, i32 116, i32 112, i32 117, i32 116, i32 0], align 4
@.str.4 = private unnamed_addr constant [61 x i32] [i32 105, i32 115, i32 66, i32 97, i32 115, i32 101, i32 54, i32 52, i32 73, i32 110, i32 116, i32 101, i32 114, i32 99, i32 101, i32 112, i32 116, i32 73, i32 110, i32 112, i32 117, i32 116, i32 32, i32 32, i32 105, i32 115, i32 32, i32 37, i32 115, i32 10, i32 105, i32 115, i32 66, i32 97, i32 115, i32 101, i32 54, i32 52, i32 73, i32 110, i32 116, i32 101, i32 114, i32 99, i32 101, i32 112, i32 116, i32 79, i32 117, i32 116, i32 112, i32 117, i32 116, i32 32, i32 105, i32 115, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [5 x i32] [i32 116, i32 114, i32 117, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i32] [i32 102, i32 97, i32 108, i32 115, i32 101, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_standard_base64(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32**, i32*** %4, align 8
  %7 = call i32 @kull_m_string_args_bool_byName(i32 %5, i32** %6, i8* bitcast ([3 x i32]* @.str to i8*), i64* @isBase64InterceptInput)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32**, i32*** %4, align 8
  %12 = call i32 @kull_m_string_args_bool_byName(i32 %10, i32** %11, i8* bitcast ([6 x i32]* @.str.1 to i8*), i64* @isBase64InterceptInput)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = call i32 @kull_m_string_args_bool_byName(i32 %14, i32** %15, i8* bitcast ([4 x i32]* @.str.2 to i8*), i64* @isBase64InterceptOutput)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32**, i32*** %4, align 8
  %21 = call i32 @kull_m_string_args_bool_byName(i32 %19, i32** %20, i8* bitcast ([7 x i32]* @.str.3 to i8*), i64* @isBase64InterceptOutput)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i64, i64* @isBase64InterceptInput, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.6, i64 0, i64 0)
  %27 = bitcast i32* %26 to i8*
  %28 = load i64, i64* @isBase64InterceptOutput, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.6, i64 0, i64 0)
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @kprintf(i8* bitcast ([61 x i32]* @.str.4 to i8*), i8* %27, i8* %32)
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %34
}

declare dso_local i32 @kull_m_string_args_bool_byName(i32, i32**, i8*, i64*) #1

declare dso_local i32 @kprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
