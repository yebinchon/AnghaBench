; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_chargen.c_GenerateChars.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_chargen.c_GenerateChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CHARS = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i32 0, align 4
@ASCII_START = common dso_local global i64 0, align 8
@ASCII_END = common dso_local global i64 0, align 8
@bShutdown = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GenerateChars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GenerateChars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @NUM_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @LINESIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load i64, i64* @ASCII_START, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %25, %1
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @ASCII_END, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i64, i64* %12, i64 %23
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %17

30:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %85, %30
  %32 = load i32, i32* @bShutdown, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @NUM_CHARS, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %69, %41
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @LINESIZE, align 4
  %46 = sub nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %12, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i64, i64* %15, i64 %53
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %12, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @NUM_CHARS, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %12, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i64 0, i64* %6, align 8
  br label %68

65:                                               ; preds = %49
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %65, %64
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %43

72:                                               ; preds = %43
  %73 = load i32, i32* @LINESIZE, align 4
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %15, i64 %75
  store i64 13, i64* %76, align 8
  %77 = load i32, i32* @LINESIZE, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %15, i64 %79
  store i64 10, i64* %80, align 8
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @SendLine(i32 %81, i64* %15)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %88

85:                                               ; preds = %72
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %31

88:                                               ; preds = %84, %31
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SendLine(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
