; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"TCP or socket address must be specified following '-b' option.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"<path> or <file> must be specified following '-c' option.\0A\00", align 1
@source_highlight = common dso_local global i32 0, align 4
@ignore_php_ini = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, i8**, i8**)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt(i32 %0, i8** %1, i32* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i8**, i8*** %8, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8** %16, i8*** %12, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8** %20, i8*** %13, align 8
  br label %21

21:                                               ; preds = %86, %5
  %22 = load i8**, i8*** %12, align 8
  %23 = load i8**, i8*** %13, align 8
  %24 = icmp ult i8** %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8**, i8*** %12, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %87

33:                                               ; preds = %31
  %34 = load i8**, i8*** %12, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load i8**, i8*** %12, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i32 1
  store i8** %40, i8*** %12, align 8
  %41 = load i32, i32* %14, align 4
  switch i32 %41, label %84 [
    i32 98, label %42
    i32 99, label %56
    i32 115, label %70
    i32 110, label %71
    i32 63, label %72
    i32 104, label %83
    i32 105, label %83
    i32 108, label %83
    i32 113, label %83
    i32 118, label %83
  ]

42:                                               ; preds = %33
  %43 = load i8**, i8*** %12, align 8
  %44 = load i8**, i8*** %13, align 8
  %45 = icmp uge i8** %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %100

49:                                               ; preds = %42
  %50 = load i8**, i8*** %12, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %12, align 8
  %52 = load i8*, i8** %50, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = call i8* @strdup(i32 %53)
  %55 = load i8**, i8*** %11, align 8
  store i8* %54, i8** %55, align 8
  br label %86

56:                                               ; preds = %33
  %57 = load i8**, i8*** %12, align 8
  %58 = load i8**, i8*** %13, align 8
  %59 = icmp uge i8** %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %100

63:                                               ; preds = %56
  %64 = load i8**, i8*** %12, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %12, align 8
  %66 = load i8*, i8** %64, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = call i8* @strdup(i32 %67)
  %69 = load i8**, i8*** %10, align 8
  store i8* %68, i8** %69, align 8
  br label %86

70:                                               ; preds = %33
  store i32 1, i32* @source_highlight, align 4
  br label %86

71:                                               ; preds = %33
  store i32 1, i32* @ignore_php_ini, align 4
  br label %86

72:                                               ; preds = %33
  %73 = load i8**, i8*** %12, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 -1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 115
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @exit(i32 99) #3
  unreachable

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %33, %33, %33, %33, %33, %82
  br label %84

84:                                               ; preds = %33, %83
  %85 = load i32*, i32** %9, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %71, %70, %63, %49
  br label %21

87:                                               ; preds = %31
  %88 = load i8**, i8*** %12, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = ptrtoint i8** %88 to i64
  %91 = ptrtoint i8** %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32*, i32** %9, align 8
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %87
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %60, %46
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
