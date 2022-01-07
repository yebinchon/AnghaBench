; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_compiler.c_wpp_write_message.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_compiler.c_wpp_write_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wpp_messages_capacity = common dso_local global i32 0, align 4
@MESSAGEBUFFER_INITIAL_SIZE = common dso_local global i32 0, align 4
@wpp_messages = common dso_local global i8* null, align 8
@wpp_messages_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error reallocating memory for parser messages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @wpp_write_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpp_write_message(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @wpp_messages_capacity, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @MESSAGEBUFFER_INITIAL_SIZE, align 4
  %13 = call i8* @HeapAlloc(i32 %11, i32 0, i32 %12)
  store i8* %13, i8** @wpp_messages, align 8
  %14 = load i8*, i8** @wpp_messages, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %58

17:                                               ; preds = %10
  %18 = load i32, i32* @MESSAGEBUFFER_INITIAL_SIZE, align 4
  store i32 %18, i32* @wpp_messages_capacity, align 4
  br label %19

19:                                               ; preds = %17, %2
  br label %20

20:                                               ; preds = %19, %57
  %21 = load i8*, i8** @wpp_messages, align 8
  %22 = load i32, i32* @wpp_messages_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* @wpp_messages_capacity, align 4
  %26 = load i32, i32* @wpp_messages_size, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vsnprintf(i8* %24, i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @wpp_messages_capacity, align 4
  %36 = load i32, i32* @wpp_messages_size, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33, %20
  %40 = load i32, i32* @wpp_messages_capacity, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i8*, i8** @wpp_messages, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @HeapReAlloc(i32 %42, i32 0, i8* %43, i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %58

50:                                               ; preds = %39
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** @wpp_messages, align 8
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* @wpp_messages_capacity, align 4
  br label %57

53:                                               ; preds = %33
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @wpp_messages_size, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* @wpp_messages_size, align 4
  br label %58

57:                                               ; preds = %50
  br label %20

58:                                               ; preds = %53, %48, %16
  ret void
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
