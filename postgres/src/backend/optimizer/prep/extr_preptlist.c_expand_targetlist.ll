; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_preptlist.c_expand_targetlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_preptlist.c_expand_targetlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@InvalidOid = common dso_local global i32 0, align 4
@COERCION_IMPLICIT = common dso_local global i32 0, align 4
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unrecognized command_type: %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"targetlist is not sorted correctly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, %struct.TYPE_12__*)* @expand_targetlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @expand_targetlist(i32* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @list_head(i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_12__* %24)
  store i32 %25, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %26

26:                                               ; preds = %137, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %140

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call %struct.TYPE_13__* @TupleDescAttr(i32 %33, i32 %35)
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %30
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 @lfirst(i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %15, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %14, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32* @lnext(i32* %55, i32* %56)
  store i32* %57, i32** %10, align 8
  br label %58

58:                                               ; preds = %53, %47, %39
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %61 = icmp eq %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %133

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %120 [
    i32 129, label %73
    i32 128, label %101
  ]

73:                                               ; preds = %62
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @makeConst(i32 %79, i32 -1, i32 %80, i32 %83, i32 0, i32 1, i32 %86)
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %19, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* @InvalidOid, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @COERCION_IMPLICIT, align 4
  %93 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %94 = call i32* @coerce_to_domain(i32* %89, i32 %90, i32 -1, i32 %91, i32 %92, i32 %93, i32 -1, i32 0)
  store i32* %94, i32** %19, align 8
  br label %100

95:                                               ; preds = %73
  %96 = load i32, i32* @INT4OID, align 4
  %97 = load i32, i32* @InvalidOid, align 4
  %98 = call i64 @makeConst(i32 %96, i32 -1, i32 %97, i32 4, i32 0, i32 1, i32 1)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %19, align 8
  br label %100

100:                                              ; preds = %95, %78
  br label %124

101:                                              ; preds = %62
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i64 @makeVar(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 0)
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %19, align 8
  br label %119

114:                                              ; preds = %101
  %115 = load i32, i32* @INT4OID, align 4
  %116 = load i32, i32* @InvalidOid, align 4
  %117 = call i64 @makeConst(i32 %115, i32 -1, i32 %116, i32 4, i32 0, i32 1, i32 1)
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %19, align 8
  br label %119

119:                                              ; preds = %114, %106
  br label %124

120:                                              ; preds = %62
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i32, i8*, ...) @elog(i32 %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %122)
  store i32* null, i32** %19, align 8
  br label %124

124:                                              ; preds = %120, %119, %100
  %125 = load i32*, i32** %19, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @NameStr(i32 %129)
  %131 = call i32 @pstrdup(i32 %130)
  %132 = call %struct.TYPE_11__* @makeTargetEntry(i32* %125, i32 %126, i32 %131, i32 0)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %14, align 8
  br label %133

133:                                              ; preds = %124, %59
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = call i32* @lappend(i32* %134, %struct.TYPE_11__* %135)
  store i32* %136, i32** %9, align 8
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %26

140:                                              ; preds = %26
  br label %141

141:                                              ; preds = %167, %140
  %142 = load i32*, i32** %10, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = load i32*, i32** %10, align 8
  %146 = call i64 @lfirst(i32* %145)
  %147 = inttoptr i64 %146 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %20, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* @ERROR, align 4
  %154 = call i32 (i32, i8*, ...) @elog(i32 %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %144
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %163 = call %struct.TYPE_11__* @flatCopyTargetEntry(%struct.TYPE_11__* %162)
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %20, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %155
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %170 = call i32* @lappend(i32* %168, %struct.TYPE_11__* %169)
  store i32* %170, i32** %9, align 8
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = call i32* @lnext(i32* %173, i32* %174)
  store i32* %175, i32** %10, align 8
  br label %141

176:                                              ; preds = %141
  %177 = load i32*, i32** %9, align 8
  ret i32* %177
}

declare dso_local i32* @list_head(i32*) #1

declare dso_local i32 @RelationGetNumberOfAttributes(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32*, i32*) #1

declare dso_local i64 @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @coerce_to_domain(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @makeVar(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @makeTargetEntry(i32*, i32, i32, i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @flatCopyTargetEntry(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
