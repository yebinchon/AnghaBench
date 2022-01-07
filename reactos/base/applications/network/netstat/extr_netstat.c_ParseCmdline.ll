; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/netstat/extr_netstat.c_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/netstat/extr_netstat.c_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i8* null, align 8
@bNoOptions = common dso_local global i8* null, align 8
@bDoShowAllCons = common dso_local global i8* null, align 8
@bDoShowProcName = common dso_local global i8* null, align 8
@bDoShowEthStats = common dso_local global i8* null, align 8
@bDoShowNumbers = common dso_local global i8* null, align 8
@bDoShowProtoCons = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 73, i32 80, i32 0], align 4
@IP = common dso_local global i32 0, align 4
@Protocol = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 73, i32 67, i32 77, i32 80, i32 0], align 4
@ICMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 84, i32 67, i32 80, i32 0], align 4
@TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 85, i32 68, i32 80, i32 0], align 4
@UDP = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@bDoShowRouteTable = common dso_local global i8* null, align 8
@bDoShowProtoStats = common dso_local global i8* null, align 8
@bDoShowProcessId = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i32] [i32 103, i32 111, i32 116, i32 32, i32 118, i32 10, i32 0], align 4
@bDoDispSeqComp = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@Interval = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@bLoopOutput = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ParseCmdline(i32 %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32**, i32*** %5, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @iswdigit(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11, %2
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** @bNoOptions, align 8
  br label %20

20:                                               ; preds = %18, %11
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %149, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %152

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %124

28:                                               ; preds = %25
  %29 = load i32**, i32*** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %124

46:                                               ; preds = %37, %28
  br label %47

47:                                               ; preds = %122, %46
  %48 = load i32**, i32*** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %51, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @towlower(i32 %57)
  switch i32 %58, label %117 [
    i32 97, label %59
    i32 98, label %61
    i32 101, label %63
    i32 110, label %65
    i32 112, label %67
    i32 114, label %107
    i32 115, label %109
    i32 111, label %111
    i32 118, label %113
  ]

59:                                               ; preds = %56
  %60 = load i8*, i8** @TRUE, align 8
  store i8* %60, i8** @bDoShowAllCons, align 8
  br label %122

61:                                               ; preds = %56
  %62 = load i8*, i8** @TRUE, align 8
  store i8* %62, i8** @bDoShowProcName, align 8
  br label %122

63:                                               ; preds = %56
  %64 = load i8*, i8** @TRUE, align 8
  store i8* %64, i8** @bDoShowEthStats, align 8
  br label %122

65:                                               ; preds = %56
  %66 = load i8*, i8** @TRUE, align 8
  store i8* %66, i8** @bDoShowNumbers, align 8
  br label %122

67:                                               ; preds = %56
  %68 = load i8*, i8** @TRUE, align 8
  store i8* %68, i8** @bDoShowProtoCons, align 8
  %69 = load i32**, i32*** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @_wcsicmp(i8* bitcast ([3 x i32]* @.str to i8*), i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @IP, align 4
  store i32 %79, i32* @Protocol, align 4
  br label %106

80:                                               ; preds = %67
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @_wcsicmp(i8* bitcast ([5 x i32]* @.str.1 to i8*), i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @ICMP, align 4
  store i32 %85, i32* @Protocol, align 4
  br label %105

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @_wcsicmp(i8* bitcast ([4 x i32]* @.str.2 to i8*), i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @TCP, align 4
  store i32 %91, i32* @Protocol, align 4
  br label %104

92:                                               ; preds = %86
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @_wcsicmp(i8* bitcast ([4 x i32]* @.str.3 to i8*), i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @UDP, align 4
  store i32 %97, i32* @Protocol, align 4
  br label %103

98:                                               ; preds = %92
  %99 = load i32, i32* @StdOut, align 4
  %100 = load i32, i32* @IDS_USAGE, align 4
  %101 = call i32 @ConResPuts(i32 %99, i32 %100)
  %102 = load i8*, i8** @FALSE, align 8
  store i8* %102, i8** %3, align 8
  br label %154

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %78
  br label %122

107:                                              ; preds = %56
  %108 = load i8*, i8** @TRUE, align 8
  store i8* %108, i8** @bDoShowRouteTable, align 8
  br label %122

109:                                              ; preds = %56
  %110 = load i8*, i8** @TRUE, align 8
  store i8* %110, i8** @bDoShowProtoStats, align 8
  br label %122

111:                                              ; preds = %56
  %112 = load i8*, i8** @TRUE, align 8
  store i8* %112, i8** @bDoShowProcessId, align 8
  br label %122

113:                                              ; preds = %56
  %114 = load i32, i32* @StdOut, align 4
  %115 = call i32 @ConPuts(i32 %114, i8* bitcast ([7 x i32]* @.str.4 to i8*))
  %116 = load i8*, i8** @TRUE, align 8
  store i8* %116, i8** @bDoDispSeqComp, align 8
  br label %122

117:                                              ; preds = %56
  %118 = load i32, i32* @StdOut, align 4
  %119 = load i32, i32* @IDS_USAGE, align 4
  %120 = call i32 @ConResPuts(i32 %118, i32 %119)
  %121 = load i8*, i8** @FALSE, align 8
  store i8* %121, i8** %3, align 8
  br label %154

122:                                              ; preds = %113, %111, %109, %107, %106, %65, %63, %61, %59
  br label %47

123:                                              ; preds = %47
  br label %148

124:                                              ; preds = %37, %25
  %125 = load i32**, i32*** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @iswdigit(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %124
  %134 = load i32**, i32*** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @swscanf(i32* %138, i8* bitcast ([4 x i32]* @.str.5 to i8*), i32* @Interval)
  %140 = load i64, i64* @EOF, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i8*, i8** @TRUE, align 8
  store i8* %143, i8** @bLoopOutput, align 8
  br label %146

144:                                              ; preds = %133
  %145 = load i8*, i8** @FALSE, align 8
  store i8* %145, i8** %3, align 8
  br label %154

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %124
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %21

152:                                              ; preds = %21
  %153 = load i8*, i8** @TRUE, align 8
  store i8* %153, i8** %3, align 8
  br label %154

154:                                              ; preds = %152, %144, %117, %98
  %155 = load i8*, i8** %3, align 8
  ret i8* %155
}

declare dso_local i64 @iswdigit(i32) #1

declare dso_local i32 @towlower(i32) #1

declare dso_local i32 @_wcsicmp(i8*, i32*) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i64 @swscanf(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
