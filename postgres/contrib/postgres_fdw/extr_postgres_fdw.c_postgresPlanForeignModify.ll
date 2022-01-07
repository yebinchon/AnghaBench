; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresPlanForeignModify.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresPlanForeignModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i64, i64, i64 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@NoLock = common dso_local global i32 0, align 4
@FirstLowInvalidHeapAttributeNumber = common dso_local global i32 0, align 4
@InvalidAttrNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"system-column update is not supported\00", align 1
@ONCONFLICT_NOTHING = common dso_local global i64 0, align 8
@ONCONFLICT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"unexpected ON CONFLICT specification: %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpected operation: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_31__*, i32, i32)* @postgresPlanForeignModify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @postgresPlanForeignModify(i32* %0, %struct.TYPE_31__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_28__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.TYPE_30__* @planner_rt_fetch(i32 %27, i32* %28)
  store %struct.TYPE_30__* %29, %struct.TYPE_30__** %10, align 8
  %30 = load i32*, i32** @NIL, align 8
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** @NIL, align 8
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** @NIL, align 8
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** @NIL, align 8
  store i32* %33, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %34 = call i32 @initStringInfo(%struct.TYPE_28__* %12)
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NoLock, align 4
  %39 = call %struct.TYPE_29__* @table_open(i32 %37, i32 %38)
  store %struct.TYPE_29__* %39, %struct.TYPE_29__** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 129
  br i1 %41, label %57, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %47, align 8
  %49 = icmp ne %struct.TYPE_26__* %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %45
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %50, %4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %59 = call %struct.TYPE_27__* @RelationGetDescr(%struct.TYPE_29__* %58)
  store %struct.TYPE_27__* %59, %struct.TYPE_27__** %18, align 8
  store i32 1, i32* %19, align 4
  br label %60

60:                                               ; preds = %80, %57
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call %struct.TYPE_32__* @TupleDescAttr(%struct.TYPE_27__* %67, i32 %69)
  store %struct.TYPE_32__* %70, %struct.TYPE_32__** %20, align 8
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %19, align 4
  %78 = call i32* @lappend_int(i32* %76, i32 %77)
  store i32* %78, i32** %13, align 8
  br label %79

79:                                               ; preds = %75, %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %60

83:                                               ; preds = %60
  br label %116

84:                                               ; preds = %50, %45, %42
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @bms_union(i32 %90, i32 %93)
  store i32* %94, i32** %22, align 8
  store i32 -1, i32* %21, align 4
  br label %95

95:                                               ; preds = %110, %87
  %96 = load i32*, i32** %22, align 8
  %97 = load i32, i32* %21, align 4
  %98 = call i32 @bms_next_member(i32* %96, i32 %97)
  store i32 %98, i32* %21, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* @FirstLowInvalidHeapAttributeNumber, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* @InvalidAttrNumber, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @ERROR, align 4
  %109 = call i32 (i32, i8*, ...) @elog(i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %23, align 4
  %113 = call i32* @lappend_int(i32* %111, i32 %112)
  store i32* %113, i32** %13, align 8
  br label %95

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %84
  br label %116

116:                                              ; preds = %115, %83
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @list_nth(i64 %124, i32 %125)
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %14, align 8
  br label %128

128:                                              ; preds = %121, %116
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @list_nth(i64 %136, i32 %137)
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %15, align 8
  br label %140

140:                                              ; preds = %133, %128
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ONCONFLICT_NOTHING, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 1, i32* %17, align 4
  br label %161

147:                                              ; preds = %140
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ONCONFLICT_NONE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load i32, i32* @ERROR, align 4
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 (i32, i8*, ...) @elog(i32 %154, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %153, %147
  br label %161

161:                                              ; preds = %160, %146
  %162 = load i32, i32* %9, align 4
  switch i32 %162, label %186 [
    i32 129, label %163
    i32 128, label %172
    i32 130, label %180
  ]

163:                                              ; preds = %161
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32*, i32** %15, align 8
  %171 = call i32 @deparseInsertSql(%struct.TYPE_28__* %12, %struct.TYPE_30__* %164, i32 %165, %struct.TYPE_29__* %166, i32* %167, i32 %168, i32* %169, i32* %170, i32** %16)
  br label %190

172:                                              ; preds = %161
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %15, align 8
  %179 = call i32 @deparseUpdateSql(%struct.TYPE_28__* %12, %struct.TYPE_30__* %173, i32 %174, %struct.TYPE_29__* %175, i32* %176, i32* %177, i32* %178, i32** %16)
  br label %190

180:                                              ; preds = %161
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = call i32 @deparseDeleteSql(%struct.TYPE_28__* %12, %struct.TYPE_30__* %181, i32 %182, %struct.TYPE_29__* %183, i32* %184, i32** %16)
  br label %190

186:                                              ; preds = %161
  %187 = load i32, i32* @ERROR, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (i32, i8*, ...) @elog(i32 %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %186, %180, %172, %163
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %192 = load i32, i32* @NoLock, align 4
  %193 = call i32 @table_close(%struct.TYPE_29__* %191, i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @makeString(i32 %195)
  %197 = load i32*, i32** %13, align 8
  %198 = load i32*, i32** %16, align 8
  %199 = load i32*, i32** @NIL, align 8
  %200 = icmp ne i32* %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @makeInteger(i32 %201)
  %203 = load i32*, i32** %16, align 8
  %204 = call i32* @list_make4(i32 %196, i32* %197, i32 %202, i32* %203)
  ret i32* %204
}

declare dso_local %struct.TYPE_30__* @planner_rt_fetch(i32, i32*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_27__* @RelationGetDescr(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_32__* @TupleDescAttr(%struct.TYPE_27__*, i32) #1

declare dso_local i32* @lappend_int(i32*, i32) #1

declare dso_local i32* @bms_union(i32, i32) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @list_nth(i64, i32) #1

declare dso_local i32 @deparseInsertSql(%struct.TYPE_28__*, %struct.TYPE_30__*, i32, %struct.TYPE_29__*, i32*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @deparseUpdateSql(%struct.TYPE_28__*, %struct.TYPE_30__*, i32, %struct.TYPE_29__*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @deparseDeleteSql(%struct.TYPE_28__*, %struct.TYPE_30__*, i32, %struct.TYPE_29__*, i32*, i32**) #1

declare dso_local i32 @table_close(%struct.TYPE_29__*, i32) #1

declare dso_local i32* @list_make4(i32, i32*, i32, i32*) #1

declare dso_local i32 @makeString(i32) #1

declare dso_local i32 @makeInteger(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
