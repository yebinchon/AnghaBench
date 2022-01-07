; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_load_tzoffsets.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_load_tzoffsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TZParserMemory\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_tzoffsets(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %9 = load i32, i32* @CurrentMemoryContext, align 4
  %10 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %11 = call i32 @AllocSetContextCreate(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MemoryContextSwitchTo(i32 %12)
  store i32 %13, i32* %5, align 4
  store i32 128, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @palloc(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @ParseTzFile(i8* %20, i32 0, i32** %6, i32* %7, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @ConvertTimeZoneAbbrevs(i32* %25, i32 %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @MemoryContextDelete(i32 %36)
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @ParseTzFile(i8*, i32, i32**, i32*, i32) #1

declare dso_local i32* @ConvertTimeZoneAbbrevs(i32*, i32) #1

declare dso_local i32 @GUC_check_errmsg(i8*) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
