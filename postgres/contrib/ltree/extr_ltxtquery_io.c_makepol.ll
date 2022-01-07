; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_io.c_makepol.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltxtquery_io.c_makepol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACKDEPTH = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stack too short\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @makepol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makepol(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @STACKDEPTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = call i32 (...) @check_stack_depth()
  br label %18

18:                                               ; preds = %146, %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @gettoken_query(i32* %19, i32* %4, i32* %6, i8** %7, i32* %11)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @END, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %147

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %140 [
    i32 128, label %25
    i32 129, label %62
    i32 130, label %87
    i32 132, label %124
    i32 131, label %139
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @pushval_asis(i32* %26, i32 128, i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %52, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %16, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 38
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %16, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 33
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi i1 [ true, %34 ], [ %47, %41 ]
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi i1 [ false, %31 ], [ %49, %48 ]
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %16, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pushquery(i32* %55, i32 129, i32 %59, i32 0, i32 0, i32 0)
  br label %31

61:                                               ; preds = %50
  br label %146

62:                                               ; preds = %23
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 124
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @pushquery(i32* %69, i32 129, i32 %70, i32 0, i32 0, i32 0)
  br label %86

72:                                               ; preds = %65, %62
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @STACKDEPTH, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %16, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %79, %68
  br label %146

87:                                               ; preds = %23
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @makepol(i32* %88)
  %90 = icmp eq i32 %89, 131
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 131, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %162

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %114, %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %16, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 38
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %16, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 33
  br label %110

110:                                              ; preds = %103, %96
  %111 = phi i1 [ true, %96 ], [ %109, %103 ]
  br label %112

112:                                              ; preds = %110, %93
  %113 = phi i1 [ false, %93 ], [ %111, %110 ]
  br i1 %113, label %114, label %123

114:                                              ; preds = %112
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %16, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pushquery(i32* %117, i32 129, i32 %121, i32 0, i32 0, i32 0)
  br label %93

123:                                              ; preds = %112
  br label %146

124:                                              ; preds = %23
  br label %125

125:                                              ; preds = %128, %124
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %10, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %16, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pushquery(i32* %131, i32 129, i32 %135, i32 0, i32 0, i32 0)
  br label %125

137:                                              ; preds = %125
  %138 = load i32, i32* @END, align 4
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %162

139:                                              ; preds = %23
  br label %140

140:                                              ; preds = %23, %139
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %143 = call i32 @errcode(i32 %142)
  %144 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %145 = call i32 @ereport(i32 %141, i32 %144)
  store i32 131, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %162

146:                                              ; preds = %123, %86, %61
  br label %18

147:                                              ; preds = %18
  br label %148

148:                                              ; preds = %151, %147
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %10, align 4
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %16, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pushquery(i32* %154, i32 129, i32 %158, i32 0, i32 0, i32 0)
  br label %148

160:                                              ; preds = %148
  %161 = load i32, i32* @END, align 4
  store i32 %161, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %162

162:                                              ; preds = %160, %140, %137, %91
  %163 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_stack_depth(...) #2

declare dso_local i32 @gettoken_query(i32*, i32*, i32*, i8**, i32*) #2

declare dso_local i32 @pushval_asis(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @pushquery(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
