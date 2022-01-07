; ModuleID = '/home/carl/AnghaBench/reactos/base/system/format/extr_format.c_ParseCommandLine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/format/extr_format.c_ParseCommandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 70, i32 83, i32 58, i32 0], align 4
@FileSystem = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 65, i32 58, i32 0], align 4
@LegalSizes = common dso_local global %struct.TYPE_2__* null, align 8
@ClusterSize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 86, i32 58, i32 0], align 4
@Label = common dso_local global i32* null, align 8
@GotALabel = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i32] [i32 81, i32 0], align 4
@QuickFormat = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i32] [i32 67, i32 0], align 4
@CompressDrive = common dso_local global i8* null, align 8
@Drive = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @ParseCommandLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseCommandLine(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** @FALSE, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %12, align 8
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %195, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %198

22:                                               ; preds = %18
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %172 [
    i32 45, label %30
    i32 47, label %30
  ]

30:                                               ; preds = %22, %22
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @_wcsnicmp(i32* %36, i8* bitcast ([4 x i32]* @.str to i8*), i32 3)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %199

43:                                               ; preds = %39
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** @FileSystem, align 8
  %50 = load i8*, i8** @TRUE, align 8
  store i8* %50, i8** %8, align 8
  br label %171

51:                                               ; preds = %30
  %52 = load i32**, i32*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i32 @_wcsnicmp(i32* %57, i8* bitcast ([3 x i32]* @.str.1 to i8*), i32 2)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %199

64:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LegalSizes, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LegalSizes, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = call i32 (i32*, ...) @wcsicmp(i32* %79, i32* %85)
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %73, %65
  %89 = phi i1 [ false, %65 ], [ %87, %73 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %65

93:                                               ; preds = %88
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LegalSizes, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %199

103:                                              ; preds = %93
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @LegalSizes, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* @ClusterSize, align 4
  %110 = load i8*, i8** @TRUE, align 8
  store i8* %110, i8** %10, align 8
  br label %170

111:                                              ; preds = %51
  %112 = load i32**, i32*** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = call i32 @_wcsnicmp(i32* %117, i8* bitcast ([3 x i32]* @.str.2 to i8*), i32 2)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %111
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %199

124:                                              ; preds = %120
  %125 = load i32**, i32*** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32* %130, i32** @Label, align 8
  %131 = load i8*, i8** @TRUE, align 8
  store i8* %131, i8** %11, align 8
  %132 = load i8*, i8** @TRUE, align 8
  store i8* %132, i8** @GotALabel, align 8
  br label %169

133:                                              ; preds = %111
  %134 = load i32**, i32*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = call i32 (i32*, ...) @wcsicmp(i32* %139, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.3, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %133
  %143 = load i8*, i8** %9, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 -1, i32* %3, align 4
  br label %199

146:                                              ; preds = %142
  %147 = load i8*, i8** @TRUE, align 8
  store i8* %147, i8** @QuickFormat, align 8
  %148 = load i8*, i8** @TRUE, align 8
  store i8* %148, i8** %9, align 8
  br label %168

149:                                              ; preds = %133
  %150 = load i32**, i32*** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = call i32 (i32*, ...) @wcsicmp(i32* %155, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.4, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %149
  %159 = load i8*, i8** %12, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 -1, i32* %3, align 4
  br label %199

162:                                              ; preds = %158
  %163 = load i8*, i8** @TRUE, align 8
  store i8* %163, i8** @CompressDrive, align 8
  %164 = load i8*, i8** @TRUE, align 8
  store i8* %164, i8** %12, align 8
  br label %167

165:                                              ; preds = %149
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %3, align 4
  br label %199

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168, %124
  br label %170

170:                                              ; preds = %169, %103
  br label %171

171:                                              ; preds = %170, %43
  br label %194

172:                                              ; preds = %22
  %173 = load i32*, i32** @Drive, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %199

177:                                              ; preds = %172
  %178 = load i32**, i32*** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 58
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %199

188:                                              ; preds = %177
  %189 = load i32**, i32*** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** @Drive, align 8
  br label %194

194:                                              ; preds = %188, %171
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %18

198:                                              ; preds = %18
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %198, %186, %175, %165, %161, %145, %123, %101, %63, %42
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i32 @wcsicmp(i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
