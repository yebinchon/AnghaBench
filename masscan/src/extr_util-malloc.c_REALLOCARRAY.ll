; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_util-malloc.c_REALLOCARRAY.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_util-malloc.c_REALLOCARRAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXNUM = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[-] alloc too large, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[-] out of memory, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @REALLOCARRAY(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAXNUM, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MAXNUM, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @SIZE_MAX, align 8
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %19, %20
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %17, %14
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = mul i64 %30, %31
  %33 = call i8* @realloc(i8* %29, i64 %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = mul i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (...) @abort() #3
  unreachable

45:                                               ; preds = %36, %28
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
