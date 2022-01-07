; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_esc_encode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_esc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @esc_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esc_encode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %79, %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %10, align 1
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i8, i8* %10, align 1
  %28 = call i64 @IS_HIGHBIT_SET(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %26, %20
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 92, i8* %32, align 1
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 6
  %36 = trunc i32 %35 to i8
  %37 = call signext i8 @DIG(i8 zeroext %36)
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %37, i8* %39, align 1
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, 3
  %43 = and i32 %42, 7
  %44 = trunc i32 %43 to i8
  %45 = call signext i8 @DIG(i8 zeroext %44)
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8 %45, i8* %47, align 1
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 7
  %51 = trunc i32 %50 to i8
  %52 = call signext i8 @DIG(i8 zeroext %51)
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  store i8 %52, i8* %54, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  store i8* %56, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %9, align 4
  br label %79

59:                                               ; preds = %26
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 92, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 92, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %9, align 4
  br label %78

72:                                               ; preds = %59
  %73 = load i8, i8* %10, align 1
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %63
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  br label %16

82:                                               ; preds = %16
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i64 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local signext i8 @DIG(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
