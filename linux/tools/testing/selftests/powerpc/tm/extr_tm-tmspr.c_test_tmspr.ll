; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-tmspr.c_test_tmspr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-tmspr.c_test_tmspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@tfiar_tfhar = common dso_local global i64 0, align 8
@texasr = common dso_local global i64 0, align 8
@passed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_tmspr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = call i32 (...) @have_htm()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @SKIP_IF(i32 %8)
  %10 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %11 = call i32 @sysconf(i32 %10)
  %12 = mul nsw i32 10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32* @malloc(i32 %16)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %21, i32* %1, align 4
  br label %92

22:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i64, i64* @tfiar_tfhar, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i64, i64* %4, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i64 @pthread_create(i32* %31, i32* null, i8* %33, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %39, i32* %1, align 4
  br label %92

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %4, align 8
  br label %23

44:                                               ; preds = %23
  store i64 1, i64* %4, align 8
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32*, i32** %2, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i64, i64* @texasr, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i64, i64* %4, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i64 @pthread_create(i32* %53, i32* null, i8* %55, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %61, i32* %1, align 4
  br label %92

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 2
  store i64 %65, i64* %4, align 8
  br label %45

66:                                               ; preds = %45
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i32*, i32** %2, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @pthread_join(i32 %76, i32* null)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %80, i32* %1, align 4
  br label %92

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %4, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %4, align 8
  br label %67

85:                                               ; preds = %67
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @free(i32* %86)
  %88 = load i64, i64* @passed, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %1, align 4
  br label %92

91:                                               ; preds = %85
  store i32 1, i32* %1, align 4
  br label %92

92:                                               ; preds = %91, %90, %79, %60, %38, %20
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @pthread_join(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
