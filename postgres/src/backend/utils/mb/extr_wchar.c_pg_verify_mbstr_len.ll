; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_verify_mbstr_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_verify_mbstr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32)* }

@pg_wchar_table = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_verify_mbstr_len(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @PG_VALID_ENCODING(i32 %14)
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pg_encoding_max_length(i32 %17)
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @memchr(i8* %21, i32 0, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %5, align 4
  br label %100

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %100

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @report_invalid_encoding(i32 %33, i8* %34, i32 1)
  br label %36

36:                                               ; preds = %32, %4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pg_wchar_table, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i8*, i32)*, i32 (i8*, i32)** %41, align 8
  store i32 (i8*, i32)* %42, i32 (i8*, i32)** %10, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %88, %56, %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @IS_HIGHBIT_SET(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %43

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %100

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @report_invalid_encoding(i32 %68, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %46
  %73 = load i32 (i8*, i32)*, i32 (i8*, i32)** %10, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 %73(i8* %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %100

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @report_invalid_encoding(i32 %84, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %72
  %89 = load i32, i32* %13, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %43

98:                                               ; preds = %43
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %82, %66, %31, %26
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_VALID_ENCODING(i32) #1

declare dso_local i32 @pg_encoding_max_length(i32) #1

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
