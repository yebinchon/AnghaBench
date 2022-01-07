; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/copyloops/extr_validate.c_test_copy_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/copyloops/extr_validate.c_test_copy_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFLEN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@POISON = common dso_local global i32 0, align 4
@MAX_LEN = common dso_local global i64 0, align 8
@MAX_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_copy_loop() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i64, i64* @BUFLEN, align 8
  %10 = load i64, i64* @BUFLEN, align 8
  %11 = call i8* @memalign(i64 %9, i64 %10)
  store i8* %11, i8** %1, align 8
  %12 = load i64, i64* @BUFLEN, align 8
  %13 = load i64, i64* @BUFLEN, align 8
  %14 = call i8* @memalign(i64 %12, i64 %13)
  store i8* %14, i8** %2, align 8
  %15 = load i64, i64* @BUFLEN, align 8
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %3, align 8
  %17 = load i64, i64* @BUFLEN, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %0
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %24, %21, %0
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %27
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @POISON, align 4
  %37 = load i64, i64* @BUFLEN, align 8
  %38 = call i32 @memset(i8* %35, i32 %36, i64 %37)
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %50, %34
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @BUFLEN, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, 255
  %46 = trunc i64 %45 to i8
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %49, align 1
  br label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %39

53:                                               ; preds = %39
  store i64 1, i64* %5, align 8
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @MAX_LEN, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @MAX_OFFSET, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @MAX_OFFSET, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8*, i8** %1, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @do_one(i8* %69, i8* %70, i64 %71, i64 %72, i64 %73, i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %64

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %59

84:                                               ; preds = %59
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %5, align 8
  br label %54

88:                                               ; preds = %54
  ret i32 0
}

declare dso_local i8* @memalign(i64, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @do_one(i8*, i8*, i64, i64, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
