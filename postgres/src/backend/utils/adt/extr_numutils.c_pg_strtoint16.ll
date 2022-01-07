; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numutils.c_pg_strtoint16.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numutils.c_pg_strtoint16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_INT16_MIN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"value \22%s\22 is out of range for type %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"smallint\00", align 1
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_strtoint16(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @likely(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isspace(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %9

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  store i32 1, i32* %6, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isdigit(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %130

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isdigit(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %82

64:                                               ; preds = %62
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @pg_mul_s16_overflow(i32 %70, i32 10, i32* %5)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @pg_sub_s16_overflow(i32 %75, i32 %76, i32* %5)
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %64
  br label %123

81:                                               ; preds = %74
  br label %52

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %95, %82
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isspace(i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ false, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  br label %83

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %130

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @PG_INT16_MIN, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %123

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %137

123:                                              ; preds = %117, %80
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = load i8*, i8** %3, align 8
  %128 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %129 = call i32 @ereport(i32 %124, i32 %128)
  br label %130

130:                                              ; preds = %123, %106, %50
  %131 = load i32, i32* @ERROR, align 4
  %132 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %133 = call i32 @errcode(i32 %132)
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  %136 = call i32 @ereport(i32 %131, i32 %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %130, %121
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @likely(i8 signext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @pg_mul_s16_overflow(i32, i32, i32*) #1

declare dso_local i32 @pg_sub_s16_overflow(i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
