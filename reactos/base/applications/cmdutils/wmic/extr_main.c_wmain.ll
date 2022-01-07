; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wmain.getW = internal constant [4 x i8] c"get\00", align 1
@wmain.quitW = internal constant [5 x i8] c"quit\00", align 1
@wmain.exitW = internal constant [5 x i8] c"exit\00", align 1
@wmain.pathW = internal constant [5 x i8] c"path\00", align 1
@wmain.classW = internal constant [6 x i8] c"class\00", align 1
@wmain.contextW = internal constant [8 x i8] c"context\00", align 1
@.str = private unnamed_addr constant [38 x i8] c"command line switch %s not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"command %s not supported\0A\00", align 1
@STRING_INVALID_PATH = common dso_local global i32 0, align 4
@STRING_ALIAS_NOT_FOUND = common dso_local global i32 0, align 4
@STRING_CMDLINE_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br label %23

23:                                               ; preds = %13, %9
  %24 = phi i1 [ false, %9 ], [ %22, %13 ]
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @debugstr_w(i8* %30)
  %32 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %9

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %147

41:                                               ; preds = %36
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmpiW(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @wmain.quitW, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmpiW(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @wmain.exitW, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49, %41
  store i32 0, i32* %3, align 4
  br label %150

58:                                               ; preds = %49
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmpiW(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @wmain.classW, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmpiW(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @wmain.contextW, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66, %58
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @debugstr_w(i8* %79)
  %81 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %147

82:                                               ; preds = %66
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmpiW(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @wmain.pathW, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @STRING_INVALID_PATH, align 4
  %97 = call i32 @output_error(i32 %96)
  store i32 1, i32* %3, align 4
  br label %150

98:                                               ; preds = %90
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %6, align 8
  br label %117

104:                                              ; preds = %82
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @find_class(i8* %109)
  store i8* %110, i8** %6, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* @STRING_ALIAS_NOT_FOUND, align 4
  %115 = call i32 @output_error(i32 %114)
  store i32 1, i32* %3, align 4
  br label %150

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %147

123:                                              ; preds = %117
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strcmpiW(i8* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @wmain.getW, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %147

137:                                              ; preds = %131
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %7, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @query_prop(i8* %143, i8* %144)
  store i32 %145, i32* %3, align 4
  br label %150

146:                                              ; preds = %123
  br label %147

147:                                              ; preds = %146, %136, %122, %74, %40
  %148 = load i32, i32* @STRING_CMDLINE_NOT_SUPPORTED, align 4
  %149 = call i32 @output_error(i32 %148)
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %147, %137, %113, %95, %57
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @WINE_FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @output_error(i32) #1

declare dso_local i8* @find_class(i8*) #1

declare dso_local i32 @query_prop(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
