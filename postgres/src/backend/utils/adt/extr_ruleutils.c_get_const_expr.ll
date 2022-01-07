; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_const_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_get_const_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"::%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"eE.\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @get_const_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_const_expr(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @appendStringInfoString(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @format_type_with_typemod(i32 %28, i32 %31)
  %33 = call i32 @appendStringInfo(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = call i32 @get_const_collation(%struct.TYPE_8__* %34, %struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %24, %19
  br label %143

38:                                               ; preds = %3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @getTypeOutputInfo(i32 %41, i32* %8, i32* %9)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @OidOutputFunctionCall(i32 %43, i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %98 [
    i32 130, label %51
    i32 129, label %66
    i32 131, label %87
  ]

51:                                               ; preds = %38
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 45
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @appendStringInfoString(i32 %58, i8* %59)
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @appendStringInfo(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %102

66:                                               ; preds = %38
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @isdigit(i8 zeroext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @strcspn(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @appendStringInfoString(i32 %79, i8* %80)
  br label %86

82:                                               ; preds = %72, %66
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @appendStringInfo(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %102

87:                                               ; preds = %38
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @appendStringInfoString(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @appendStringInfoString(i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %91
  br label %102

98:                                               ; preds = %38
  %99 = load i32, i32* %7, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @simple_quote_literal(i32 %99, i8* %100)
  br label %102

102:                                              ; preds = %98, %97, %86, %65
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @pfree(i8* %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %143

108:                                              ; preds = %102
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %122 [
    i32 131, label %112
    i32 128, label %112
    i32 130, label %113
    i32 129, label %114
  ]

112:                                              ; preds = %108, %108
  store i32 0, i32* %11, align 4
  br label %123

113:                                              ; preds = %108
  br label %123

114:                                              ; preds = %108
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %123

122:                                              ; preds = %108
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %122, %114, %113, %112
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @format_type_with_typemod(i32 %133, i32 %136)
  %138 = call i32 @appendStringInfo(i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %129, %126
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = call i32 @get_const_collation(%struct.TYPE_8__* %140, %struct.TYPE_7__* %141)
  br label %143

143:                                              ; preds = %139, %107, %37
  ret void
}

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i8* @format_type_with_typemod(i32, i32) #1

declare dso_local i32 @get_const_collation(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @simple_quote_literal(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
