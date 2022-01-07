; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_load_return_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_load_return_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"function %s is unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*)* @load_return_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_return_type(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @LLVMGetNamedFunction(i32 %7, i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @LLVMTypeOf(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @LLVMGetElementType(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32* @LLVMGetReturnType(i32* %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32*, i32** %6, align 8
  ret i32* %35
}

declare dso_local i32 @LLVMGetNamedFunction(i32, i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32* @LLVMTypeOf(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @LLVMGetElementType(i32*) #1

declare dso_local i32* @LLVMGetReturnType(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
