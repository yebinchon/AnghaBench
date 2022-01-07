; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_delete_idx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_delete_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jsdisp_delete_idx.formatW = internal constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsdisp_delete_idx(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @swprintf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @jsdisp_delete_idx.formatW, i64 0, i64 0), i8* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %15 = call i32 @string_hash(i8* %14)
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %17 = call i32 @find_prop_name(i32* %13, i32 %15, i8* %16, i32** %7)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @delete_prop(i32* %27, i32* %8)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @swprintf(i8*, i8*, i8*) #1

declare dso_local i32 @find_prop_name(i32*, i32, i8*, i32**) #1

declare dso_local i32 @string_hash(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @delete_prop(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
