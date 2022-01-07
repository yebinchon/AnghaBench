; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_symbol.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_symbol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_symbol_properties = type { i32 }

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_symbol_properties, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = call i8* @nn_symbol(i32 -1, i32* null)
  %7 = icmp eq i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @nn_assert(i32 %8)
  %10 = call i64 (...) @nn_errno()
  %11 = load i64, i64* @EINVAL, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @nn_assert(i32 %13)
  %15 = call i32 @nn_symbol_info(i32 -1, %struct.nn_symbol_properties* %3, i32 4)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @nn_assert(i32 %17)
  %19 = call i8* @nn_symbol(i32 2000, i32* null)
  %20 = icmp eq i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @nn_assert(i32 %21)
  %23 = call i64 (...) @nn_errno()
  %24 = load i64, i64* @EINVAL, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @nn_assert(i32 %26)
  %28 = call i32 @nn_symbol_info(i32 2000, %struct.nn_symbol_properties* %3, i32 4)
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @nn_assert(i32 %30)
  %32 = call i8* @nn_symbol(i32 6, i32* %4)
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @nn_assert(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @nn_assert(i32 %38)
  %40 = call i32 @nn_symbol_info(i32 6, %struct.nn_symbol_properties* %3, i32 4)
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  %43 = zext i1 %42 to i32
  %44 = call i32 @nn_assert(i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %57, %0
  %46 = load i32, i32* %2, align 4
  %47 = call i8* @nn_symbol(i32 %46, i32* %4)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = call i64 (...) @nn_errno()
  %52 = load i64, i64* @EINVAL, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @nn_assert(i32 %54)
  br label %60

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %45

60:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %67, %60
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @nn_symbol_info(i32 %62, %struct.nn_symbol_properties* %3, i32 4)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %70

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %61

70:                                               ; preds = %65
  ret i32 0
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @nn_symbol(i32, i32*) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @nn_symbol_info(i32, %struct.nn_symbol_properties*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
