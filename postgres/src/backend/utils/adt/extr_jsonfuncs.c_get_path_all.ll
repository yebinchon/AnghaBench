; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_get_path_all.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_get_path_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_path_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_path_all(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = call i32* @PG_GETARG_TEXT_PP(i32 0)
  store i32* %17, i32** %6, align 8
  %18 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 1)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @array_contains_nulls(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @PG_RETURN_NULL()
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @TEXTOID, align 4
  %27 = call i32 @deconstruct_array(i32* %25, i32 %26, i32 -1, i32 0, i8 signext 105, i32** %9, i32** %10, i32* %11)
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i8* @palloc(i32 %31)
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i8* @palloc(i32 %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %117, %24
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %40
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @TextDatumGetCString(i32 %58)
  %60 = load i8**, i8*** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %59, i8** %63, align 8
  %64 = load i8**, i8*** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %44
  store i64 0, i64* @errno, align 8
  %73 = load i8**, i8*** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strtol(i8* %77, i8** %16, i32 10)
  store i64 %78, i64* %15, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %72
  %84 = load i64, i64* @errno, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @INT_MAX, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @INT_MIN, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i64, i64* %15, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %108

101:                                              ; preds = %90, %86, %83, %72
  %102 = load i64, i64* @INT_MIN, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %94
  br label %116

109:                                              ; preds = %44
  %110 = load i64, i64* @INT_MIN, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %108
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %40

120:                                              ; preds = %40
  %121 = load i32*, i32** %6, align 8
  %122 = load i8**, i8*** %12, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32* @get_worker(i32* %121, i8** %122, i32* %123, i32 %124, i32 %125)
  store i32* %126, i32** %8, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @PG_RETURN_TEXT_P(i32* %130)
  br label %134

132:                                              ; preds = %120
  %133 = call i32 (...) @PG_RETURN_NULL()
  br label %134

134:                                              ; preds = %132, %129
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32* @PG_GETARG_TEXT_PP(i32) #1

declare dso_local i32* @PG_GETARG_ARRAYTYPE_P(i32) #1

declare dso_local i64 @array_contains_nulls(i32*) #1

declare dso_local i32 @PG_RETURN_NULL(...) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @get_worker(i32*, i8**, i32*, i32, i32) #1

declare dso_local i32 @PG_RETURN_TEXT_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
