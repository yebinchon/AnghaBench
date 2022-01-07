; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_ParseQuantifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_ParseQuantifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i8* }

@REOP_QUANT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@JSREPORT_ERROR = common dso_local global i32 0, align 4
@errp = common dso_local global i32 0, align 4
@TREE_DEPTH_MAX = common dso_local global i64 0, align 8
@JSMSG_REGEXP_TOO_COMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*)* @ParseQuantifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ParseQuantifier(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ult i32* %11, %14
  br i1 %15, label %16, label %132

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %130 [
    i32 43, label %21
    i32 42, label %51
    i32 63, label %81
    i32 123, label %111
  ]

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load i32, i32* @REOP_QUANT, align 4
  %24 = call i8* @NewRENode(%struct.TYPE_13__* %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_12__*
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load i8*, i8** @FALSE, align 8
  store i8* %33, i8** %2, align 8
  br label %195

34:                                               ; preds = %21
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 ptrtoint (i8* inttoptr (i64 -1 to i8*) to i32), i32* %46, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %48, align 8
  br label %134

51:                                               ; preds = %16
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = load i32, i32* @REOP_QUANT, align 4
  %54 = call i8* @NewRENode(%struct.TYPE_13__* %52, i32 %53)
  %55 = bitcast i8* %54 to %struct.TYPE_12__*
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  %63 = load i8*, i8** @FALSE, align 8
  store i8* %63, i8** %2, align 8
  br label %195

64:                                               ; preds = %51
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i32 ptrtoint (i8* inttoptr (i64 -1 to i8*) to i32), i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %78, align 8
  br label %134

81:                                               ; preds = %16
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load i32, i32* @REOP_QUANT, align 4
  %84 = call i8* @NewRENode(%struct.TYPE_13__* %82, i32 %83)
  %85 = bitcast i8* %84 to %struct.TYPE_12__*
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 4
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  %93 = load i8*, i8** @FALSE, align 8
  store i8* %93, i8** %2, align 8
  br label %195

94:                                               ; preds = %81
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 4
  store i32 %110, i32* %108, align 8
  br label %134

111:                                              ; preds = %16
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = load i8*, i8** @FALSE, align 8
  %114 = call i32 @ParseMinMaxQuantifier(%struct.TYPE_13__* %112, i8* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %134

118:                                              ; preds = %111
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i8*, i8** @TRUE, align 8
  store i8* %122, i8** %2, align 8
  br label %195

123:                                              ; preds = %118
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = load i32, i32* @JSREPORT_ERROR, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @errp, align 4
  %128 = call i32 @ReportRegExpErrorHelper(%struct.TYPE_13__* %124, i32 %125, i32 %126, i32 %127)
  %129 = load i8*, i8** @FALSE, align 8
  store i8* %129, i8** %2, align 8
  br label %195

130:                                              ; preds = %16
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %1
  %133 = load i8*, i8** @TRUE, align 8
  store i8* %133, i8** %2, align 8
  br label %195

134:                                              ; preds = %117, %94, %64, %34
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TREE_DEPTH_MAX, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = load i32, i32* @JSREPORT_ERROR, align 4
  %143 = load i32, i32* @JSMSG_REGEXP_TOO_COMPLEX, align 4
  %144 = call i32 @ReportRegExpError(%struct.TYPE_13__* %141, i32 %142, i32 %143)
  %145 = load i8*, i8** @FALSE, align 8
  store i8* %145, i8** %2, align 8
  br label %195

146:                                              ; preds = %134
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %152, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store %struct.TYPE_12__* %155, %struct.TYPE_12__** %159, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ult i32* %162, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %146
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 63
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %175, align 8
  %178 = load i8*, i8** @FALSE, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  store i8* %178, i8** %184, align 8
  br label %193

185:                                              ; preds = %167, %146
  %186 = load i8*, i8** @TRUE, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  store i8* %186, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %173
  %194 = load i8*, i8** @TRUE, align 8
  store i8* %194, i8** %2, align 8
  br label %195

195:                                              ; preds = %193, %140, %132, %123, %121, %92, %62, %32
  %196 = load i8*, i8** %2, align 8
  ret i8* %196
}

declare dso_local i8* @NewRENode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ParseMinMaxQuantifier(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ReportRegExpErrorHelper(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ReportRegExpError(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
