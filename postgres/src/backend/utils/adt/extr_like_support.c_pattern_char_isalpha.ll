; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_pattern_char_isalpha.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_pattern_char_isalpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@COLLPROVIDER_LIBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32, %struct.TYPE_5__*, i32)* @pattern_char_isalpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_char_isalpha(i8 signext %0, i32 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 90
  br i1 %19, label %30, label %20

20:                                               ; preds = %16, %12
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 97
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 122
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %16
  %31 = phi i1 [ true, %16 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8, i8* %6, align 1
  %38 = call i64 @IS_HIGHBIT_SET(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %78

41:                                               ; preds = %36, %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @COLLPROVIDER_ICU, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load i8, i8* %6, align 1
  %52 = call i64 @IS_HIGHBIT_SET(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %50
  %55 = load i8, i8* %6, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 65
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 90
  br i1 %61, label %72, label %62

62:                                               ; preds = %58, %54
  %63 = load i8, i8* %6, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sge i32 %64, 97
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 122
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br label %72

72:                                               ; preds = %70, %58, %50
  %73 = phi i1 [ true, %58 ], [ true, %50 ], [ %71, %70 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %44, %41
  %76 = load i8, i8* %6, align 1
  %77 = call i32 @isalpha(i8 zeroext %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %72, %40, %30
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i32 @isalpha(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
