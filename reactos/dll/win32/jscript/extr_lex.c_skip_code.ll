; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_skip_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_skip_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"No @end\0A\00", align 1
@JS_E_EXPECTED_CCEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 101, i32 110, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 101, i32 108, i32 105, i32 102, i32 0], align 4
@JS_E_MISSING_LBRACKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 101, i32 108, i32 115, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [3 x i32] [i32 105, i32 102, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @skip_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_code(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %2, %32, %44, %71, %87, %97, %100
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @wcschr(i8* %11, i8 signext 64)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = call i32 @WARN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = load i32, i32* @JS_E_EXPECTED_CCEND, align 4
  %19 = call i32 @lex_error(%struct.TYPE_7__* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = call i32 @check_keyword(%struct.TYPE_7__* %25, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %8

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %105

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @check_keyword(%struct.TYPE_7__* %38, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32* null)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %8

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i32 @skip_spaces(%struct.TYPE_7__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 40
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %45
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i32, i32* @JS_E_MISSING_LBRACKET, align 4
  %59 = call i32 @lex_error(%struct.TYPE_7__* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %105

60:                                               ; preds = %49
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = call i32 @parse_cc_expr(%struct.TYPE_7__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %105

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @get_ccbool(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %8

72:                                               ; preds = %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %105

77:                                               ; preds = %37, %34
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = call i32 @check_keyword(%struct.TYPE_7__* %81, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32* null)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %8

88:                                               ; preds = %84
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %105

93:                                               ; preds = %80, %77
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = call i32 @check_keyword(%struct.TYPE_7__* %94, i8* bitcast ([3 x i32]* @.str.4 to i8*), i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %8

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  br label %8

105:                                              ; preds = %88, %72, %64, %56, %33, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @lex_error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @check_keyword(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @skip_spaces(%struct.TYPE_7__*) #1

declare dso_local i32 @parse_cc_expr(%struct.TYPE_7__*) #1

declare dso_local i32 @get_ccbool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
