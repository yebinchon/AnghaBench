; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_print_exception.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_print_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Traceback (most recent call last):\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  File \22%q\22\00", align 1
@MP_QSTRnull = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c", in %q\0A\00", align 1
@PRINT_EXC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_obj_print_exception(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @mp_obj_is_exception_instance(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mp_obj_exception_get_traceback(i32 %13, i64* %5, i64** %6)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = urem i64 %18, 3
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @mp_print_str(i32* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 3
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %56, %17
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32*, i8*, i64, ...) @mp_printf(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i64*, i64** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @MP_QSTRnull, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @mp_print_str(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %55

51:                                               ; preds = %31
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 (i32*, i8*, i64, ...) @mp_printf(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 3
  store i32 %58, i32* %7, align 4
  br label %28

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59, %12
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @PRINT_EXC, align 4
  %65 = call i32 @mp_obj_print_helper(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @mp_print_str(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @mp_obj_is_exception_instance(i32) #1

declare dso_local i32 @mp_obj_exception_get_traceback(i32, i64*, i64**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_print_str(i32*, i8*) #1

declare dso_local i32 @mp_printf(i32*, i8*, i64, ...) #1

declare dso_local i32 @mp_obj_print_helper(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
