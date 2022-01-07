; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_check_srf_call_placement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_check_srf_call_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [59 x i8] c"set-returning functions are not allowed in JOIN conditions\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"set-returning functions must appear at top level of FROM\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"set-returning functions are not allowed in policy expressions\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"set-returning functions are not allowed in window definitions\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"set-returning functions are not allowed in check constraints\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"set-returning functions are not allowed in DEFAULT expressions\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"set-returning functions are not allowed in index expressions\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"set-returning functions are not allowed in index predicates\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"set-returning functions are not allowed in transform expressions\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"set-returning functions are not allowed in EXECUTE parameters\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"set-returning functions are not allowed in trigger WHEN conditions\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"set-returning functions are not allowed in partition bound\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"set-returning functions are not allowed in partition key expressions\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"set-returning functions are not allowed in CALL arguments\00", align 1
@.str.14 = private unnamed_addr constant [70 x i8] c"set-returning functions are not allowed in COPY FROM WHERE conditions\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"set-returning functions are not allowed in column generation expressions\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"set-returning functions are not allowed in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_srf_call_placement(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %87 [
    i32 147, label %12
    i32 144, label %14
    i32 150, label %15
    i32 149, label %15
    i32 158, label %17
    i32 159, label %18
    i32 133, label %37
    i32 141, label %38
    i32 154, label %40
    i32 160, label %41
    i32 128, label %42
    i32 129, label %42
    i32 131, label %45
    i32 130, label %45
    i32 132, label %45
    i32 139, label %47
    i32 151, label %47
    i32 137, label %50
    i32 136, label %50
    i32 155, label %51
    i32 145, label %51
    i32 163, label %54
    i32 148, label %57
    i32 146, label %57
    i32 140, label %58
    i32 135, label %59
    i32 134, label %60
    i32 166, label %63
    i32 162, label %63
    i32 165, label %65
    i32 157, label %65
    i32 153, label %67
    i32 152, label %69
    i32 168, label %71
    i32 161, label %73
    i32 138, label %75
    i32 143, label %77
    i32 142, label %79
    i32 167, label %81
    i32 164, label %83
    i32 156, label %85
  ]

12:                                               ; preds = %3
  %13 = call i32 @Assert(i32 0)
  br label %87

14:                                               ; preds = %3
  br label %87

15:                                               ; preds = %3, %3
  %16 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  br label %87

17:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %87

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @exprLocation(i32* %32)
  %34 = call i32 @parser_errposition(%struct.TYPE_4__* %29, i32 %33)
  %35 = call i32 @ereport(i32 %25, i32 %34)
  br label %36

36:                                               ; preds = %24, %18
  br label %87

37:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %87

38:                                               ; preds = %3
  %39 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i8* %39, i8** %7, align 8
  br label %87

40:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %87

41:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %87

42:                                               ; preds = %3, %3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %87

45:                                               ; preds = %3, %3, %3
  %46 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  store i8* %46, i8** %7, align 8
  br label %87

47:                                               ; preds = %3, %3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %87

50:                                               ; preds = %3, %3
  store i32 1, i32* %8, align 4
  br label %87

51:                                               ; preds = %3, %3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %87

54:                                               ; preds = %3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %87

57:                                               ; preds = %3, %3
  store i32 1, i32* %8, align 4
  br label %87

58:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %87

59:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %87

60:                                               ; preds = %3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %87

63:                                               ; preds = %3, %3
  %64 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  store i8* %64, i8** %7, align 8
  br label %87

65:                                               ; preds = %3, %3
  %66 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  store i8* %66, i8** %7, align 8
  br label %87

67:                                               ; preds = %3
  %68 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  store i8* %68, i8** %7, align 8
  br label %87

69:                                               ; preds = %3
  %70 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  store i8* %70, i8** %7, align 8
  br label %87

71:                                               ; preds = %3
  %72 = call i8* @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  store i8* %72, i8** %7, align 8
  br label %87

73:                                               ; preds = %3
  %74 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  store i8* %74, i8** %7, align 8
  br label %87

75:                                               ; preds = %3
  %76 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0))
  store i8* %76, i8** %7, align 8
  br label %87

77:                                               ; preds = %3
  %78 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  store i8* %78, i8** %7, align 8
  br label %87

79:                                               ; preds = %3
  %80 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  store i8* %80, i8** %7, align 8
  br label %87

81:                                               ; preds = %3
  %82 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  store i8* %82, i8** %7, align 8
  br label %87

83:                                               ; preds = %3
  %84 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0))
  store i8* %84, i8** %7, align 8
  br label %87

85:                                               ; preds = %3
  %86 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0))
  store i8* %86, i8** %7, align 8
  br label %87

87:                                               ; preds = %3, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %60, %59, %58, %57, %54, %51, %50, %47, %45, %42, %41, %40, %38, %37, %36, %17, %15, %14, %12
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @parser_errposition(%struct.TYPE_4__* %96, i32 %97)
  %99 = call i32 @ereport(i32 %91, i32 %98)
  br label %100

100:                                              ; preds = %90, %87
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %106 = call i32 @errcode(i32 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ParseExprKindName(i32 %109)
  %111 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @parser_errposition(%struct.TYPE_4__* %112, i32 %113)
  %115 = call i32 @ereport(i32 %104, i32 %114)
  br label %116

116:                                              ; preds = %103, %100
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @exprLocation(i32*) #1

declare dso_local i32 @errmsg_internal(i8*, i8*) #1

declare dso_local i32 @ParseExprKindName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
