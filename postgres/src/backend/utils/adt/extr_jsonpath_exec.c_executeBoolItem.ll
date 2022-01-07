; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeBoolItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeBoolItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"boolean jsonpath item cannot have next item\00", align 1
@jpbFalse = common dso_local global i32 0, align 4
@jpbTrue = common dso_local global i32 0, align 4
@jpbUnknown = common dso_local global i32 0, align 4
@executeComparison = common dso_local global i32 0, align 4
@executeStartsWith = common dso_local global i32 0, align 4
@executeLikeRegex = common dso_local global i32 0, align 4
@jperOk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid boolean jsonpath item type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*, i32*, i32)* @executeBoolItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeBoolItem(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__, align 4
  %11 = alloca %struct.TYPE_30__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_31__, align 4
  %15 = alloca %struct.TYPE_29__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %22 = call i64 @jspHasNext(%struct.TYPE_30__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20, %4
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %200 [
    i32 140, label %31
    i32 129, label %57
    i32 131, label %83
    i32 135, label %104
    i32 139, label %119
    i32 130, label %119
    i32 134, label %119
    i32 137, label %119
    i32 133, label %119
    i32 136, label %119
    i32 128, label %130
    i32 132, label %140
    i32 138, label %156
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = call i32 @jspGetLeftArg(%struct.TYPE_30__* %32, %struct.TYPE_30__* %10)
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @executeBoolItem(%struct.TYPE_31__* %34, %struct.TYPE_30__* %10, i32* %35, i32 0)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @jpbFalse, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @jpbFalse, align 4
  store i32 %41, i32* %5, align 4
  br label %207

42:                                               ; preds = %31
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %44 = call i32 @jspGetRightArg(%struct.TYPE_30__* %43, %struct.TYPE_30__* %11)
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @executeBoolItem(%struct.TYPE_31__* %45, %struct.TYPE_30__* %11, i32* %46, i32 0)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @jpbTrue, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %5, align 4
  br label %207

57:                                               ; preds = %27
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %59 = call i32 @jspGetLeftArg(%struct.TYPE_30__* %58, %struct.TYPE_30__* %10)
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @executeBoolItem(%struct.TYPE_31__* %60, %struct.TYPE_30__* %10, i32* %61, i32 0)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @jpbTrue, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @jpbTrue, align 4
  store i32 %67, i32* %5, align 4
  br label %207

68:                                               ; preds = %57
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %70 = call i32 @jspGetRightArg(%struct.TYPE_30__* %69, %struct.TYPE_30__* %11)
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @executeBoolItem(%struct.TYPE_31__* %71, %struct.TYPE_30__* %11, i32* %72, i32 0)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @jpbFalse, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  br label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %13, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %5, align 4
  br label %207

83:                                               ; preds = %27
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %85 = call i32 @jspGetArg(%struct.TYPE_30__* %84, %struct.TYPE_30__* %10)
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @executeBoolItem(%struct.TYPE_31__* %86, %struct.TYPE_30__* %10, i32* %87, i32 0)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @jpbUnknown, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @jpbUnknown, align 4
  store i32 %93, i32* %5, align 4
  br label %207

94:                                               ; preds = %83
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @jpbTrue, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @jpbFalse, align 4
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @jpbTrue, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %5, align 4
  br label %207

104:                                              ; preds = %27
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %106 = call i32 @jspGetArg(%struct.TYPE_30__* %105, %struct.TYPE_30__* %10)
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @executeBoolItem(%struct.TYPE_31__* %107, %struct.TYPE_30__* %10, i32* %108, i32 0)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @jpbUnknown, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @jpbTrue, align 4
  br label %117

115:                                              ; preds = %104
  %116 = load i32, i32* @jpbFalse, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  store i32 %118, i32* %5, align 4
  br label %207

119:                                              ; preds = %27, %27, %27, %27, %27, %27
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %121 = call i32 @jspGetLeftArg(%struct.TYPE_30__* %120, %struct.TYPE_30__* %10)
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %123 = call i32 @jspGetRightArg(%struct.TYPE_30__* %122, %struct.TYPE_30__* %11)
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @executeComparison, align 4
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %129 = call i32 @executePredicate(%struct.TYPE_31__* %124, %struct.TYPE_30__* %125, %struct.TYPE_30__* %10, %struct.TYPE_30__* %11, i32* %126, i32 1, i32 %127, %struct.TYPE_31__* %128)
  store i32 %129, i32* %5, align 4
  br label %207

130:                                              ; preds = %27
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %132 = call i32 @jspGetLeftArg(%struct.TYPE_30__* %131, %struct.TYPE_30__* %10)
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %134 = call i32 @jspGetRightArg(%struct.TYPE_30__* %133, %struct.TYPE_30__* %11)
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* @executeStartsWith, align 4
  %139 = call i32 @executePredicate(%struct.TYPE_31__* %135, %struct.TYPE_30__* %136, %struct.TYPE_30__* %10, %struct.TYPE_30__* %11, i32* %137, i32 0, i32 %138, %struct.TYPE_31__* null)
  store i32 %139, i32* %5, align 4
  br label %207

140:                                              ; preds = %27
  %141 = bitcast %struct.TYPE_31__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %141, i8 0, i64 4, i1 false)
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @jspInitByBuffer(%struct.TYPE_30__* %10, i32 %144, i32 %149)
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @executeLikeRegex, align 4
  %155 = call i32 @executePredicate(%struct.TYPE_31__* %151, %struct.TYPE_30__* %152, %struct.TYPE_30__* %10, %struct.TYPE_30__* null, i32* %153, i32 0, i32 %154, %struct.TYPE_31__* %14)
  store i32 %155, i32* %5, align 4
  br label %207

156:                                              ; preds = %27
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %158 = call i32 @jspGetArg(%struct.TYPE_30__* %157, %struct.TYPE_30__* %10)
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %160 = call i32 @jspStrictAbsenseOfErrors(%struct.TYPE_31__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %156
  %163 = bitcast %struct.TYPE_29__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %163, i8 0, i64 4, i1 false)
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @executeItemOptUnwrapResultNoThrow(%struct.TYPE_31__* %164, %struct.TYPE_30__* %10, i32* %165, i32 0, %struct.TYPE_29__* %15)
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @jperIsError(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @jpbUnknown, align 4
  store i32 %171, i32* %5, align 4
  br label %207

172:                                              ; preds = %162
  %173 = call i32 @JsonValueListIsEmpty(%struct.TYPE_29__* %15)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @jpbFalse, align 4
  br label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @jpbTrue, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  store i32 %180, i32* %5, align 4
  br label %207

181:                                              ; preds = %156
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = call i32 @executeItemOptUnwrapResultNoThrow(%struct.TYPE_31__* %182, %struct.TYPE_30__* %10, i32* %183, i32 0, %struct.TYPE_29__* null)
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @jperIsError(i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @jpbUnknown, align 4
  store i32 %189, i32* %5, align 4
  br label %207

190:                                              ; preds = %181
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* @jperOk, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @jpbTrue, align 4
  br label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @jpbFalse, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  store i32 %199, i32* %5, align 4
  br label %207

200:                                              ; preds = %27
  %201 = load i32, i32* @ERROR, align 4
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, ...) @elog(i32 %201, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @jpbUnknown, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %200, %198, %188, %179, %170, %140, %130, %119, %117, %102, %92, %81, %66, %55, %40
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local i64 @jspHasNext(%struct.TYPE_30__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @jspGetLeftArg(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @jspGetRightArg(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @jspGetArg(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @executePredicate(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32*, i32, i32, %struct.TYPE_31__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @jspInitByBuffer(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @jspStrictAbsenseOfErrors(%struct.TYPE_31__*) #1

declare dso_local i32 @executeItemOptUnwrapResultNoThrow(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @jperIsError(i32) #1

declare dso_local i32 @JsonValueListIsEmpty(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
