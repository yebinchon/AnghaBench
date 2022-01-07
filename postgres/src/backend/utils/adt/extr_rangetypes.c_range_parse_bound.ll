; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_parse_bound.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_parse_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"malformed range literal: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected end of input.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**, i32*)* @range_parse_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @range_parse_bound(i8* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 44
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 41
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 93
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16, %4
  %27 = load i8**, i8*** %7, align 8
  store i8* null, i8** %27, align 8
  %28 = load i32*, i32** %8, align 8
  store i32 1, i32* %28, align 4
  br label %122

29:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  %30 = call i32 @initStringInfo(%struct.TYPE_4__* %9)
  br label %31

31:                                               ; preds = %116, %29
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 44
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 41
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 93
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = phi i1 [ true, %39 ], [ true, %34 ], [ %48, %44 ]
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %49, %31
  %53 = phi i1 [ true, %31 ], [ %51, %49 ]
  br i1 %53, label %54, label %117

54:                                               ; preds = %52
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  store i8 %57, i8* %11, align 1
  %58 = load i8, i8* %11, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = call i32 @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @ereport(i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = load i8, i8* %11, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 92
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %81 = call i32 @errcode(i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = call i32 @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %85 = call i32 @ereport(i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  %89 = load i8, i8* %87, align 1
  %90 = call i32 @appendStringInfoChar(%struct.TYPE_4__* %9, i8 signext %89)
  br label %116

91:                                               ; preds = %69
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 34
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* %10, align 4
  br label %111

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 34
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  %107 = load i8, i8* %105, align 1
  %108 = call i32 @appendStringInfoChar(%struct.TYPE_4__* %9, i8 signext %107)
  br label %110

109:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %104
  br label %111

111:                                              ; preds = %110, %98
  br label %115

112:                                              ; preds = %91
  %113 = load i8, i8* %11, align 1
  %114 = call i32 @appendStringInfoChar(%struct.TYPE_4__* %9, i8 signext %113)
  br label %115

115:                                              ; preds = %112, %111
  br label %116

116:                                              ; preds = %115, %86
  br label %31

117:                                              ; preds = %52
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** %7, align 8
  store i8* %119, i8** %120, align 8
  %121 = load i32*, i32** %8, align 8
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %26
  %123 = load i8*, i8** %6, align 8
  ret i8* %123
}

declare dso_local i32 @initStringInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_4__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
