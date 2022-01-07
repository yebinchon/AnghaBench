; ModuleID = '/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_bool.c_makepol.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_bool.c_makepol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACKDEPTH = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_STATEMENT_TOO_COMPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"statement too complex\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @makepol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makepol(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @STACKDEPTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 (...) @check_stack_depth()
  br label %15

15:                                               ; preds = %145, %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @gettoken(i32* %16, i32* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @END, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %146

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %139 [
    i32 128, label %22
    i32 129, label %58
    i32 130, label %86
    i32 132, label %123
    i32 131, label %138
  ]

22:                                               ; preds = %20
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pushquery(i32* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %48, %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %13, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 38
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %13, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 33
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ true, %30 ], [ %43, %37 ]
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i1 [ false, %27 ], [ %45, %44 ]
  br i1 %47, label %48, label %57

48:                                               ; preds = %46
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %13, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pushquery(i32* %51, i32 129, i32 %55)
  br label %27

57:                                               ; preds = %46
  br label %145

58:                                               ; preds = %20
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 124
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @pushquery(i32* %65, i32 129, i32 %66)
  br label %85

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @STACKDEPTH, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_STATEMENT_TOO_COMPLEX, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %13, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %64
  br label %145

86:                                               ; preds = %20
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @makepol(i32* %87)
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 131, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %161

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %113, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %13, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 38
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %13, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 33
  br label %109

109:                                              ; preds = %102, %95
  %110 = phi i1 [ true, %95 ], [ %108, %102 ]
  br label %111

111:                                              ; preds = %109, %92
  %112 = phi i1 [ false, %92 ], [ %110, %109 ]
  br i1 %112, label %113, label %122

113:                                              ; preds = %111
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %8, align 4
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %13, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pushquery(i32* %116, i32 129, i32 %120)
  br label %92

122:                                              ; preds = %111
  br label %145

123:                                              ; preds = %20
  br label %124

124:                                              ; preds = %127, %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %8, align 4
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %13, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pushquery(i32* %130, i32 129, i32 %134)
  br label %124

136:                                              ; preds = %124
  %137 = load i32, i32* @END, align 4
  store i32 %137, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %161

138:                                              ; preds = %20
  br label %139

139:                                              ; preds = %20, %138
  %140 = load i32, i32* @ERROR, align 4
  %141 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %142 = call i32 @errcode(i32 %141)
  %143 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %144 = call i32 @ereport(i32 %140, i32 %143)
  store i32 131, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %161

145:                                              ; preds = %122, %85, %57
  br label %15

146:                                              ; preds = %15
  br label %147

147:                                              ; preds = %150, %146
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %8, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %13, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @pushquery(i32* %153, i32 129, i32 %157)
  br label %147

159:                                              ; preds = %147
  %160 = load i32, i32* @END, align 4
  store i32 %160, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %161

161:                                              ; preds = %159, %139, %136, %90
  %162 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_stack_depth(...) #2

declare dso_local i32 @gettoken(i32*, i32*) #2

declare dso_local i32 @pushquery(i32*, i32, i32) #2

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
