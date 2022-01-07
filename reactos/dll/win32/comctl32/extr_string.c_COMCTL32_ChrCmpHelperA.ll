; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_string.c_COMCTL32_ChrCmpHelperA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_string.c_COMCTL32_ChrCmpHelperA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSTR_EQUAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @COMCTL32_ChrCmpHelperA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COMCTL32_ChrCmpHelperA(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [3 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call signext i8 @LOBYTE(i32 %9)
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @IsDBCSLeadByte(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = call signext i8 @HIBYTE(i32 %17)
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %20, align 1
  br label %23

21:                                               ; preds = %3
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %5, align 4
  %25 = call signext i8 @LOBYTE(i32 %24)
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @IsDBCSLeadByte(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call signext i8 @HIBYTE(i32 %32)
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %35, align 1
  br label %38

36:                                               ; preds = %23
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %31
  %39 = call i32 (...) @GetThreadLocale()
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %43 = call i64 @CompareStringA(i32 %39, i32 %40, i8* %41, i32 -1, i8* %42, i32 -1)
  %44 = load i64, i64* @CSTR_EQUAL, align 8
  %45 = sub nsw i64 %43, %44
  ret i64 %45
}

declare dso_local signext i8 @LOBYTE(i32) #1

declare dso_local i64 @IsDBCSLeadByte(i8 signext) #1

declare dso_local signext i8 @HIBYTE(i32) #1

declare dso_local i64 @CompareStringA(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @GetThreadLocale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
