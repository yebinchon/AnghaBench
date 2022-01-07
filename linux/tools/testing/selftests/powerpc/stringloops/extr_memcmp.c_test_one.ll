; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_memcmp.c_test_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_memcmp.c_test_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"memcmp returned %d, should have returned %d (offset %ld size %ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@vmx_count = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"vmx enter/exit not paired.(offset:%ld size:%ld s1:%p s2:%p vc:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i64)* @test_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_one(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %116, %5
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %119

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %112, %20
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub i64 %24, %25
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %115

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @memcmp(i8* %31, i8* %34, i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @test_memcmp(i8* %39, i8* %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = xor i32 %45, %46
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %28
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %99

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i64 %57, i64 %58)
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %15, align 8
  br label %61

61:                                               ; preds = %74, %54
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %63, %64
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %15, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %15, align 8
  br label %61

77:                                               ; preds = %61
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i64, i64* %11, align 8
  store i64 %79, i64* %15, align 8
  br label %80

80:                                               ; preds = %93, %77
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %82, %83
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %15, align 8
  br label %80

96:                                               ; preds = %80
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %98 = call i32 (...) @abort() #3
  unreachable

99:                                               ; preds = %49, %28
  %100 = load i64, i64* @vmx_count, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* @vmx_count, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %103, i64 %104, i8* %105, i8* %106, i64 %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %110 = call i32 (...) @abort() #3
  unreachable

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %22

115:                                              ; preds = %22
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %16

119:                                              ; preds = %16
  ret void
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @test_memcmp(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
