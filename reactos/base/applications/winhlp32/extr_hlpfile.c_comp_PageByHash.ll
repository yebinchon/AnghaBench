; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_comp_PageByHash.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_comp_PageByHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Comparing '%d' with '%d'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**)* @comp_PageByHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_PageByHash(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @GET_UINT(i8* %14, i32 0)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 8, i32 6
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = load i8**, i8*** %9, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %38

32:                                               ; preds = %4
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36, %31
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @GET_UINT(i8*, i32) #1

declare dso_local i32 @WINE_TRACE(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
