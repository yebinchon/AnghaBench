; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseConst.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseConst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"::%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"0123456789+-eE.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"eE.\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"B'%s'\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @deparseConst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseConst(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @appendStringInfoString(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @deparse_type_name(i32 %29, i32 %32)
  %34 = call i32 @appendStringInfo(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %25, %20
  br label %146

36:                                               ; preds = %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @getTypeOutputInfo(i32 %39, i32* %8, i32* %9)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @OidOutputFunctionCall(i32 %41, i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %103 [
    i32 134, label %49
    i32 133, label %49
    i32 132, label %49
    i32 130, label %49
    i32 136, label %49
    i32 135, label %49
    i32 131, label %49
    i32 138, label %88
    i32 128, label %88
    i32 137, label %92
  ]

49:                                               ; preds = %36, %36, %36, %36, %36, %36, %36
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strspn(i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %55
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @appendStringInfo(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @appendStringInfoString(i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @strcspn(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %75
  br label %87

83:                                               ; preds = %49
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @appendStringInfo(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %83, %82
  br label %107

88:                                               ; preds = %36, %36
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @appendStringInfo(i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  br label %107

92:                                               ; preds = %36
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @appendStringInfoString(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @appendStringInfoString(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %96
  br label %107

103:                                              ; preds = %36
  %104 = load i32, i32* %7, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @deparseStringLiteral(i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %102, %88, %87
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @pfree(i8* %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %146

113:                                              ; preds = %107
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %129 [
    i32 137, label %117
    i32 133, label %117
    i32 129, label %117
    i32 131, label %118
  ]

117:                                              ; preds = %113, %113, %113
  store i32 0, i32* %12, align 4
  br label %130

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 0
  br label %126

126:                                              ; preds = %121, %118
  %127 = phi i1 [ true, %118 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %12, align 4
  br label %130

129:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %126, %117
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @deparse_type_name(i32 %140, i32 %143)
  %145 = call i32 @appendStringInfo(i32 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %35, %112, %136, %133
  ret void
}

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i8* @deparse_type_name(i32, i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @deparseStringLiteral(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
