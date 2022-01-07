; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodePosixTimezone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodePosixTimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDATEFIELDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @DecodePosixTimezone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodePosixTimezone(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i8*, i8** %9, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isalpha(i8 zeroext %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  br label %12

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @DecodeTimezone(i8* %28, i32* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %51

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %10, align 1
  %35 = load i8*, i8** %9, align 8
  store i8 0, i8* %35, align 1
  %36 = load i64, i64* @MAXDATEFIELDS, align 8
  %37 = sub nsw i64 %36, 1
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @DecodeSpecial(i64 %37, i8* %38, i32* %6)
  store i32 %39, i32* %8, align 4
  %40 = load i8, i8* %10, align 1
  %41 = load i8*, i8** %9, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %49 [
    i32 129, label %43
    i32 128, label %43
  ]

43:                                               ; preds = %32, %32
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 0, %46
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %50

49:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %31
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @DecodeTimezone(i8*, i32*) #1

declare dso_local i32 @DecodeSpecial(i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
