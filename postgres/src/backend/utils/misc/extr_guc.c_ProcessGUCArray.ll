; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ProcessGUCArray.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ProcessGUCArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not parse setting for parameter \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessGUCArray(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ARR_ELEMTYPE(i32* %19)
  %21 = load i64, i64* @TEXTOID, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ARR_NDIM(i32* %25)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @ARR_LBOUND(i32* %30)
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %83, %4
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32* @ARR_DIMS(i32* %39)
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %38, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @array_ref(i32* %45, i32 1, i32* %9, i32 -1, i32 -1, i32 0, i8 signext 105, i32* %11)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %83

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @TextDatumGetCString(i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @ParseLongOption(i8* %53, i8** %13, i8** %14)
  %55 = load i8*, i8** %14, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @WARNING, align 4
  %59 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = call i32 @ereport(i32 %58, i32 %62)
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @free(i8* %64)
  br label %83

66:                                               ; preds = %50
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @set_config_option(i8* %67, i8* %68, i32 %69, i32 %70, i32 %71, i32 1, i32 0, i32 0)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %14, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %77, %66
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @pfree(i8* %81)
  br label %83

83:                                               ; preds = %80, %57, %49
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %37

86:                                               ; preds = %37
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_LBOUND(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @array_ref(i32*, i32, i32*, i32, i32, i32, i8 signext, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @ParseLongOption(i8*, i8**, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
