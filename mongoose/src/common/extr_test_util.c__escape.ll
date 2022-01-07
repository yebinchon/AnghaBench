; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/extr_test_util.c__escape.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/extr_test_util.c__escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_escape(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = mul i64 %8, 4
  %10 = add i64 %9, 1
  %11 = call i64 @malloc(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %55, %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %58

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @iscntrl(i32 %31) #3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %42, align 1
  br label %54

43:                                               ; preds = %26
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @sprintf(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %50)
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %43, %34
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %13

58:                                               ; preds = %24
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %7, align 8
  ret i8* %62
}

declare dso_local i64 @malloc(i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @iscntrl(i32) #2

declare dso_local i64 @sprintf(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
