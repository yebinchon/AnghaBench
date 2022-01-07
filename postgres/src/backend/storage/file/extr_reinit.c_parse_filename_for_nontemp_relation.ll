; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_reinit.c_parse_filename_for_nontemp_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_reinit.c_parse_filename_for_nontemp_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OIDCHARS = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_filename_for_nontemp_relation(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %20, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isdigit(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @OIDCHARS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23
  store i32 0, i32* %4, align 4
  br label %101

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 95
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @MAIN_FORKNUM, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %60

44:                                               ; preds = %31
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @forkname_chars(i8* %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %101

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %41
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %91

68:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isdigit(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = icmp sle i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %101

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %60
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %101

100:                                              ; preds = %91
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %99, %86, %54, %30
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @forkname_chars(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
