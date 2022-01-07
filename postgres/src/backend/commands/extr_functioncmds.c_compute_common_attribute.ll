; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_compute_common_attribute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_compute_common_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"volatility\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"security\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"leakproof\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cost\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"support\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"conflicting or redundant options\00", align 1
@ERRCODE_INVALID_FUNCTION_DEFINITION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"invalid attribute in procedure definition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**, i32**, %struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__**)* @compute_common_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_common_attribute(i32* %0, i32 %1, %struct.TYPE_11__* %2, %struct.TYPE_11__** %3, %struct.TYPE_11__** %4, %struct.TYPE_11__** %5, %struct.TYPE_11__** %6, i32** %7, %struct.TYPE_11__** %8, %struct.TYPE_11__** %9, %struct.TYPE_11__** %10, %struct.TYPE_11__** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__**, align 8
  %18 = alloca %struct.TYPE_11__**, align 8
  %19 = alloca %struct.TYPE_11__**, align 8
  %20 = alloca %struct.TYPE_11__**, align 8
  %21 = alloca i32**, align 8
  %22 = alloca %struct.TYPE_11__**, align 8
  %23 = alloca %struct.TYPE_11__**, align 8
  %24 = alloca %struct.TYPE_11__**, align 8
  %25 = alloca %struct.TYPE_11__**, align 8
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %17, align 8
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %18, align 8
  store %struct.TYPE_11__** %5, %struct.TYPE_11__*** %19, align 8
  store %struct.TYPE_11__** %6, %struct.TYPE_11__*** %20, align 8
  store i32** %7, i32*** %21, align 8
  store %struct.TYPE_11__** %8, %struct.TYPE_11__*** %22, align 8
  store %struct.TYPE_11__** %9, %struct.TYPE_11__*** %23, align 8
  store %struct.TYPE_11__** %10, %struct.TYPE_11__*** %24, align 8
  store %struct.TYPE_11__** %11, %struct.TYPE_11__*** %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %12
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %200

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %17, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %189

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %17, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %42, align 8
  br label %188

43:                                               ; preds = %12
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcmp(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %200

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %18, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %189

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %18, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %60, align 8
  br label %187

61:                                               ; preds = %43
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @strcmp(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %189

72:                                               ; preds = %67
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %74, align 8
  br label %186

75:                                               ; preds = %61
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %200

85:                                               ; preds = %81
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %20, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %189

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %20, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %92, align 8
  br label %185

93:                                               ; preds = %75
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i32**, i32*** %21, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @lappend(i32* %101, i32 %104)
  %106 = load i32**, i32*** %21, align 8
  store i32* %105, i32** %106, align 8
  br label %184

107:                                              ; preds = %93
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @strcmp(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %200

117:                                              ; preds = %113
  %118 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = icmp ne %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %189

122:                                              ; preds = %117
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %124 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %124, align 8
  br label %183

125:                                              ; preds = %107
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @strcmp(i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %200

135:                                              ; preds = %131
  %136 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = icmp ne %struct.TYPE_11__* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %189

140:                                              ; preds = %135
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %142 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %142, align 8
  br label %182

143:                                              ; preds = %125
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @strcmp(i32 %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %200

153:                                              ; preds = %149
  %154 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = icmp ne %struct.TYPE_11__* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %189

158:                                              ; preds = %153
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %160, align 8
  br label %181

161:                                              ; preds = %143
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @strcmp(i32 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %200

171:                                              ; preds = %167
  %172 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = icmp ne %struct.TYPE_11__* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %189

176:                                              ; preds = %171
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %178 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %178, align 8
  br label %180

179:                                              ; preds = %161
  store i32 0, i32* %13, align 4
  br label %211

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %158
  br label %182

182:                                              ; preds = %181, %140
  br label %183

183:                                              ; preds = %182, %122
  br label %184

184:                                              ; preds = %183, %99
  br label %185

185:                                              ; preds = %184, %90
  br label %186

186:                                              ; preds = %185, %72
  br label %187

187:                                              ; preds = %186, %58
  br label %188

188:                                              ; preds = %187, %40
  store i32 1, i32* %13, align 4
  br label %211

189:                                              ; preds = %175, %157, %139, %121, %89, %71, %57, %39
  %190 = load i32, i32* @ERROR, align 4
  %191 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %192 = call i32 @errcode(i32 %191)
  %193 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %194 = load i32*, i32** %14, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @parser_errposition(i32* %194, i32 %197)
  %199 = call i32 @ereport(i32 %190, i32 %198)
  store i32 0, i32* %13, align 4
  br label %211

200:                                              ; preds = %170, %152, %134, %116, %84, %52, %34
  %201 = load i32, i32* @ERROR, align 4
  %202 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %203 = call i32 @errcode(i32 %202)
  %204 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %205 = load i32*, i32** %14, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @parser_errposition(i32* %205, i32 %208)
  %210 = call i32 @ereport(i32 %201, i32 %209)
  store i32 0, i32* %13, align 4
  br label %211

211:                                              ; preds = %200, %189, %188, %179
  %212 = load i32, i32* %13, align 4
  ret i32 %212
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
