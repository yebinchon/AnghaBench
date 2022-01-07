; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gotsig = common dso_local global i32 0, align 4
@testing = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"  Got signal %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_memcpy(i8* %0, i8* %1, i32 %2, i32 %3, void (i8*, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (i8*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store void (i8*, i8*)* %4, void (i8*, i8*)** %11, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i8*, i8** %12, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 16
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 0, i32* @gotsig, align 4
  store i32 1, i32* @testing, align 4
  %28 = load void (i8*, i8*)*, void (i8*, i8*)** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i8*, i8** %13, align 8
  call void %28(i8* %29, i8* %30)
  store i32 0, i32* @testing, align 4
  %31 = load i32, i32* @gotsig, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load i64, i64* @debug, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @gotsig, align 4
  %38 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  store i32 1, i32* %6, align 4
  br label %41

40:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
