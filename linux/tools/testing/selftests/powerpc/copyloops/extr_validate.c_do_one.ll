; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/copyloops/extr_validate.c_do_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/copyloops/extr_validate.c_do_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_REDZONE = common dso_local global i32 0, align 4
@POISON = common dso_local global i32 0, align 4
@BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(%p,%p,%ld) returned %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"(%p,%p,%ld) miscompare\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"src: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0Adst: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"(%p,%p,%ld) redzone before corrupted\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"(%p,%p,%ld) redzone after corrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i64, i8*, i8*)* @do_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_one(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @MIN_REDZONE, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @MIN_REDZONE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @POISON, align 4
  %33 = load i32, i32* @BUFLEN, align 4
  %34 = call i32 @memset(i8* %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @POISON, align 4
  %37 = load i32, i32* @BUFLEN, align 4
  %38 = call i32 @memset(i8* %35, i32 %36, i32 %37)
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  %43 = load i8*, i8** %16, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @COPY_LOOP(i8* %43, i8* %44, i64 %45)
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %7
  %50 = load i64, i64* %17, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %16, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %17, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56, i64 %57, i64 %58)
  %60 = call i32 (...) @abort() #3
  unreachable

61:                                               ; preds = %49, %7
  %62 = load i8*, i8** %16, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i64 @memcmp(i8* %62, i8* %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %61
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70, i64 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %18, align 8
  br label %74

74:                                               ; preds = %85, %68
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i8*, i8** %15, align 8
  %80 = load i64, i64* %18, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %18, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %18, align 8
  br label %74

88:                                               ; preds = %74
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %18, align 8
  br label %90

90:                                               ; preds = %101, %88
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i8*, i8** %16, align 8
  %96 = load i64, i64* %18, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i64, i64* %18, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %18, align 8
  br label %90

104:                                              ; preds = %90
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i32 (...) @abort() #3
  unreachable

107:                                              ; preds = %61
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i64 @memcmp(i8* %108, i8* %109, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %107
  %119 = load i8*, i8** %16, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %119, i8* %120, i64 %121)
  %123 = call i32 (...) @abort() #3
  unreachable

124:                                              ; preds = %107
  %125 = load i8*, i8** %16, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* @BUFLEN, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8*, i8** %16, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = ptrtoint i8* %132 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  %140 = call i64 @memcmp(i8* %127, i8* %128, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %124
  %143 = load i8*, i8** %16, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i64, i64* %12, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %143, i8* %144, i64 %145)
  %147 = call i32 (...) @abort() #3
  unreachable

148:                                              ; preds = %124
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @COPY_LOOP(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
