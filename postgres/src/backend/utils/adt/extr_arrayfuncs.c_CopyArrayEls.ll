; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_CopyArrayEls.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_CopyArrayEls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"null array element where not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CopyArrayEls(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i8 signext %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8 %6, i8* %15, align 1
  store i32 %7, i32* %16, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i8* @ARR_DATA_PTR(i32* %22)
  store i8* %23, i8** %17, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @ARR_NULLBITMAP(i32* %24)
  store i32* %25, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %28, %8
  store i32 0, i32* %21, align 4
  br label %30

30:                                               ; preds = %93, %29
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %21, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32*, i32** %18, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  br label %79

51:                                               ; preds = %37, %34
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %19, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %19, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i8, i8* %15, align 1
  %63 = load i8*, i8** %17, align 8
  %64 = call i32 @ArrayCastAndSet(i32 %59, i32 %60, i32 %61, i8 signext %62, i8* %63)
  %65 = load i8*, i8** %17, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %17, align 8
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %51
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DatumGetPointer(i32 %75)
  %77 = call i32 @pfree(i32 %76)
  br label %78

78:                                               ; preds = %70, %51
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32*, i32** %18, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %20, align 4
  %84 = shl i32 %83, 1
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp eq i32 %85, 256
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %19, align 4
  %89 = load i32*, i32** %18, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %18, align 8
  store i32 %88, i32* %89, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %91

91:                                               ; preds = %87, %82
  br label %92

92:                                               ; preds = %91, %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %30

96:                                               ; preds = %30
  %97 = load i32*, i32** %18, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %19, align 4
  %104 = load i32*, i32** %18, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99, %96
  ret void
}

declare dso_local i8* @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ArrayCastAndSet(i32, i32, i32, i8 signext, i8*) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
