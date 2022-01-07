; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_cc_parser.tab.c_cc_parser_lex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_cc_parser.tab.c_cc_parser_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@tCCValue = common dso_local global i32 0, align 4
@tEQEQ = common dso_local global i32 0, align 4
@tEQ = common dso_local global i32 0, align 4
@tNEQEQ = common dso_local global i32 0, align 4
@tNEQ = common dso_local global i32 0, align 4
@tLSHIFT = common dso_local global i32 0, align 4
@tLEQ = common dso_local global i32 0, align 4
@tRRSHIFT = common dso_local global i32 0, align 4
@tRSHIFT = common dso_local global i32 0, align 4
@tGEQ = common dso_local global i32 0, align 4
@tOR = common dso_local global i32 0, align 4
@tAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to interpret %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @cc_parser_lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_parser_lex(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @try_parse_ccval(%struct.TYPE_4__* %7, i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @tCCValue, align 4
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ -1, %17 ]
  store i32 %19, i32* %3, align 4
  br label %159

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %152 [
    i32 40, label %25
    i32 41, label %25
    i32 43, label %25
    i32 45, label %25
    i32 42, label %25
    i32 47, label %25
    i32 126, label %25
    i32 37, label %25
    i32 94, label %25
    i32 61, label %31
    i32 33, label %54
    i32 60, label %77
    i32 62, label %96
    i32 124, label %124
    i32 38, label %138
  ]

25:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %27, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %3, align 4
  br label %159

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %33, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 61
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %40, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 61
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %47, align 8
  %50 = load i32, i32* @tEQEQ, align 4
  store i32 %50, i32* %3, align 4
  br label %159

51:                                               ; preds = %38
  %52 = load i32, i32* @tEQ, align 4
  store i32 %52, i32* %3, align 4
  br label %159

53:                                               ; preds = %31
  br label %152

54:                                               ; preds = %20
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %56, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 61
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %63, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 61
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %70, align 8
  %73 = load i32, i32* @tNEQEQ, align 4
  store i32 %73, i32* %3, align 4
  br label %159

74:                                               ; preds = %61
  %75 = load i32, i32* @tNEQ, align 4
  store i32 %75, i32* %3, align 4
  br label %159

76:                                               ; preds = %54
  store i32 33, i32* %3, align 4
  br label %159

77:                                               ; preds = %20
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %79, align 8
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %95 [
    i32 60, label %83
    i32 61, label %89
  ]

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %85, align 8
  %88 = load i32, i32* @tLSHIFT, align 4
  store i32 %88, i32* %3, align 4
  br label %159

89:                                               ; preds = %77
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %91, align 8
  %94 = load i32, i32* @tLEQ, align 4
  store i32 %94, i32* %3, align 4
  br label %159

95:                                               ; preds = %77
  store i32 60, i32* %3, align 4
  br label %159

96:                                               ; preds = %20
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %98, align 8
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %123 [
    i32 62, label %102
    i32 61, label %117
  ]

102:                                              ; preds = %96
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %104, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 62
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %111, align 8
  %114 = load i32, i32* @tRRSHIFT, align 4
  store i32 %114, i32* %3, align 4
  br label %159

115:                                              ; preds = %102
  %116 = load i32, i32* @tRSHIFT, align 4
  store i32 %116, i32* %3, align 4
  br label %159

117:                                              ; preds = %96
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %119, align 8
  %122 = load i32, i32* @tGEQ, align 4
  store i32 %122, i32* %3, align 4
  br label %159

123:                                              ; preds = %96
  store i32 62, i32* %3, align 4
  br label %159

124:                                              ; preds = %20
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %126, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 124
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %133, align 8
  %136 = load i32, i32* @tOR, align 4
  store i32 %136, i32* %3, align 4
  br label %159

137:                                              ; preds = %124
  store i32 124, i32* %3, align 4
  br label %159

138:                                              ; preds = %20
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %140, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 38
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %147, align 8
  %150 = load i32, i32* @tAND, align 4
  store i32 %150, i32* %3, align 4
  br label %159

151:                                              ; preds = %138
  store i32 38, i32* %3, align 4
  br label %159

152:                                              ; preds = %20, %53
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = call i32 @debugstr_w(i8* %156)
  %158 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %157)
  store i32 -1, i32* %3, align 4
  br label %159

159:                                              ; preds = %152, %151, %145, %137, %131, %123, %117, %115, %109, %95, %89, %83, %76, %74, %68, %51, %45, %25, %18
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @try_parse_ccval(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
