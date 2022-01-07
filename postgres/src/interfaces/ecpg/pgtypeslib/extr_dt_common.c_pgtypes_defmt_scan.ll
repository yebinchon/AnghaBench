; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_pgtypes_defmt_scan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_pgtypes_defmt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.un_fmt_comb = type { i64 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.un_fmt_comb*, i32, i8**, i8*)* @pgtypes_defmt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgtypes_defmt_scan(%union.un_fmt_comb* %0, i32 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.un_fmt_comb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %union.un_fmt_comb* %0, %union.un_fmt_comb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %20, %4
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %8, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @find_end_token(i8* %25, i8* %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %109

31:                                               ; preds = %23
  %32 = load i8*, i8** %12, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %10, align 1
  %34 = load i8*, i8** %12, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %91 [
    i32 129, label %36
    i32 128, label %58
    i32 130, label %79
  ]

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  br label %37

47:                                               ; preds = %37
  store i32 0, i32* @errno, align 4
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strtol(i8* %49, i8** %13, i32 10)
  %51 = trunc i64 %50 to i32
  %52 = load %union.un_fmt_comb*, %union.un_fmt_comb** %6, align 8
  %53 = bitcast %union.un_fmt_comb* %52 to i32*
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @errno, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %47
  br label %91

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %65, %58
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %66, align 8
  br label %59

69:                                               ; preds = %59
  store i32 0, i32* @errno, align 4
  %70 = load i8**, i8*** %8, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strtol(i8* %71, i8** %13, i32 10)
  %73 = load %union.un_fmt_comb*, %union.un_fmt_comb** %6, align 8
  %74 = bitcast %union.un_fmt_comb* %73 to i64*
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %69
  br label %91

79:                                               ; preds = %31
  %80 = load i8**, i8*** %8, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32* @pgtypes_strdup(i8* %81)
  %83 = load %union.un_fmt_comb*, %union.un_fmt_comb** %6, align 8
  %84 = bitcast %union.un_fmt_comb* %83 to i32**
  store i32* %82, i32** %84, align 8
  %85 = load %union.un_fmt_comb*, %union.un_fmt_comb** %6, align 8
  %86 = bitcast %union.un_fmt_comb* %85 to i32**
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %31, %90, %78, %57
  %92 = load i8*, i8** %13, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %13, align 8
  %101 = load i8**, i8*** %8, align 8
  store i8* %100, i8** %101, align 8
  br label %105

102:                                              ; preds = %94, %91
  %103 = load i8*, i8** %12, align 8
  %104 = load i8**, i8*** %8, align 8
  store i8* %103, i8** %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i8, i8* %10, align 1
  %107 = load i8*, i8** %12, align 8
  store i8 %106, i8* %107, align 1
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %30
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i8* @find_end_token(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @pgtypes_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
