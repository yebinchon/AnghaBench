; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DetermineTimeZoneAbbrevOffsetInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DetermineTimeZoneAbbrevOffsetInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TZ_STRLEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32*, i32*)* @DetermineTimeZoneAbbrevOffsetInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DetermineTimeZoneAbbrevOffsetInternal(i32 %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = trunc i64 %19 to i32
  %24 = call i32 @strlcpy(i8* %21, i8* %22, i32 %23)
  store i8* %21, i8** %14, align 8
  br label %25

25:                                               ; preds = %34, %5
  %26 = load i8*, i8** %14, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8*, i8** %14, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call zeroext i8 @pg_toupper(i8 zeroext %31)
  %33 = load i8*, i8** %14, align 8
  store i8 %32, i8* %33, align 1
  br label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %14, align 8
  br label %25

37:                                               ; preds = %25
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @pg_interpret_timezone_abbrev(i8* %21, i32* %7, i64* %15, i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* %15, align 8
  %44 = sub nsw i64 0, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %48

47:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local zeroext i8 @pg_toupper(i8 zeroext) #2

declare dso_local i64 @pg_interpret_timezone_abbrev(i8*, i32*, i64*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
