; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_try_parse_ccval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_try_parse_ccval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [5 x i32] [i32 116, i32 114, i32 117, i32 101, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 102, i32 97, i32 108, i32 115, i32 101, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_parse_ccval(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = call i32 @skip_spaces(%struct.TYPE_11__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @iswdigit(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i32 @parse_numeric_literal(%struct.TYPE_11__* %22, double* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %80

26:                                               ; preds = %21
  %27 = load double, double* %6, align 8
  %28 = call i32 @ccval_num(double %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %80

30:                                               ; preds = %14
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %63

37:                                               ; preds = %30
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = call i32 @parse_cc_identifier(%struct.TYPE_11__* %38, i32** %7, i32* %8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %80

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.TYPE_12__* @find_cc_var(i32 %47, i32* %48, i32 %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = icmp ne %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  br label %60

57:                                               ; preds = %42
  %58 = load double, double* @NAN, align 8
  %59 = call i32 @ccval_num(double %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %56, %53 ], [ %59, %57 ]
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %3, align 4
  br label %80

63:                                               ; preds = %30
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call i32 @check_keyword(%struct.TYPE_11__* %64, i8* bitcast ([5 x i32]* @.str to i8*), i32* null)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @ccval_bool(i32 %68)
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %3, align 4
  br label %80

71:                                               ; preds = %63
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = call i32 @check_keyword(%struct.TYPE_11__* %72, i8* bitcast ([6 x i32]* @.str.1 to i8*), i32* null)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @ccval_bool(i32 %76)
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  store i32 1, i32* %3, align 4
  br label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %75, %67, %60, %41, %26, %25, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @skip_spaces(%struct.TYPE_11__*) #1

declare dso_local i64 @iswdigit(i8 signext) #1

declare dso_local i32 @parse_numeric_literal(%struct.TYPE_11__*, double*) #1

declare dso_local i32 @ccval_num(double) #1

declare dso_local i32 @parse_cc_identifier(%struct.TYPE_11__*, i32**, i32*) #1

declare dso_local %struct.TYPE_12__* @find_cc_var(i32, i32*, i32) #1

declare dso_local i32 @check_keyword(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @ccval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
