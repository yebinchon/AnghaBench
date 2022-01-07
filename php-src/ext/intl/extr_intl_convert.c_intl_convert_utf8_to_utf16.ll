; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_convert.c_intl_convert_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_convert.c_intl_convert_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_ZERO_ERROR = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@U_BUFFER_OVERFLOW_ERROR = common dso_local global i64 0, align 8
@U_STRING_NOT_TERMINATED_WARNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intl_convert_utf8_to_utf16(i64** %0, i64* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i64* null, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @U_ZERO_ERROR, align 8
  %14 = load i64*, i64** %10, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @INT32_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %20 = load i64*, i64** %10, align 8
  store i64 %19, i64* %20, align 8
  br label %88

21:                                               ; preds = %5
  %22 = load i64**, i64*** %6, align 8
  %23 = load i64*, i64** %22, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = call i32 @u_strFromUTF8(i64* %23, i64 %25, i64* %12, i8* %26, i64 %27, i64* %28)
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @U_ZERO_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load i64**, i64*** %6, align 8
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  br label %88

41:                                               ; preds = %21
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @U_STRING_NOT_TERMINATED_WARNING, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %88

52:                                               ; preds = %46, %41
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  %55 = call i64* @eumalloc(i64 %54)
  store i64* %55, i64** %11, align 8
  %56 = load i64, i64* @U_ZERO_ERROR, align 8
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = call i32 @u_strFromUTF8(i64* %58, i64 %60, i64* null, i8* %61, i64 %62, i64* %63)
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @U_FAILURE(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load i64*, i64** %11, align 8
  %71 = call i32 @efree(i64* %70)
  br label %88

72:                                               ; preds = %52
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load i64**, i64*** %6, align 8
  %77 = load i64*, i64** %76, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i64**, i64*** %6, align 8
  %81 = load i64*, i64** %80, align 8
  %82 = call i32 @efree(i64* %81)
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i64*, i64** %11, align 8
  %85 = load i64**, i64*** %6, align 8
  store i64* %84, i64** %85, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %69, %51, %34, %18
  ret void
}

declare dso_local i32 @u_strFromUTF8(i64*, i64, i64*, i8*, i64, i64*) #1

declare dso_local i64* @eumalloc(i64) #1

declare dso_local i64 @U_FAILURE(i64) #1

declare dso_local i32 @efree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
