; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_whereLoopAddAll.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_whereLoopAddAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_16__*, %struct.TYPE_23__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_QUERY_PLANNER_LIMIT = common dso_local global i32 0, align 4
@SQLITE_QUERY_PLANNER_LIMIT_INCR = common dso_local global i64 0, align 8
@JT_LEFT = common dso_local global i32 0, align 4
@JT_CROSS = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"abbreviated query algorithm search\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @whereLoopAddAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddAll(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca %struct.SrcList_item*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.SrcList_item*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %7, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.SrcList_item*, %struct.SrcList_item** %23, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %24, i64 %27
  store %struct.SrcList_item* %28, %struct.SrcList_item** %9, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %10, align 8
  %34 = load i32, i32* @SQLITE_OK, align 4
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %12, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %39 = call i32 @whereLoopInit(%struct.TYPE_21__* %38)
  %40 = load i32, i32* @SQLITE_QUERY_PLANNER_LIMIT, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %6, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load %struct.SrcList_item*, %struct.SrcList_item** %44, align 8
  store %struct.SrcList_item* %45, %struct.SrcList_item** %8, align 8
  br label %46

46:                                               ; preds = %174, %1
  %47 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %48 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %49 = icmp ult %struct.SrcList_item* %47, %48
  br i1 %49, label %50, label %179

50:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* @SQLITE_QUERY_PLANNER_LIMIT_INCR, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %64 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sqlite3WhereGetMask(i32* %62, i32 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %70 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @JT_LEFT, align 4
  %76 = load i32, i32* @JT_CROSS, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %50
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %50
  %83 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %84 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %13, align 4
  %87 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %88 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IsVirtual(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %82
  %93 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %94 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %93, i64 1
  store %struct.SrcList_item* %94, %struct.SrcList_item** %15, align 8
  br label %95

95:                                               ; preds = %122, %92
  %96 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %97 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %98 = icmp ult %struct.SrcList_item* %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %99
  %103 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %104 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @JT_LEFT, align 4
  %108 = load i32, i32* @JT_CROSS, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102, %99
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %116 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @sqlite3WhereGetMask(i32* %114, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %112, %102
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.SrcList_item*, %struct.SrcList_item** %15, align 8
  %124 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %123, i32 1
  store %struct.SrcList_item* %124, %struct.SrcList_item** %15, align 8
  br label %95

125:                                              ; preds = %95
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @whereLoopAddVirtual(%struct.TYPE_20__* %126, i32 %127, i32 %128)
  store i32 %129, i32* %11, align 4
  br label %134

130:                                              ; preds = %82
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @whereLoopAddBtree(%struct.TYPE_20__* %131, i32 %132)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @SQLITE_OK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @whereLoopAddOr(%struct.TYPE_20__* %146, i32 %147, i32 %148)
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %145, %138, %134
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158, %150
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @SQLITE_DONE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* @SQLITE_WARNING, align 4
  %169 = call i32 @sqlite3_log(i32 %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %170 = load i32, i32* @SQLITE_OK, align 4
  store i32 %170, i32* %11, align 4
  br label %172

171:                                              ; preds = %163
  br label %179

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %158
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  %177 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %178 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %177, i32 1
  store %struct.SrcList_item* %178, %struct.SrcList_item** %8, align 8
  br label %46

179:                                              ; preds = %171, %46
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %182 = call i32 @whereLoopClear(%struct.TYPE_19__* %180, %struct.TYPE_21__* %181)
  %183 = load i32, i32* %11, align 4
  ret i32 %183
}

declare dso_local i32 @whereLoopInit(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3WhereGetMask(i32*, i32) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @whereLoopAddVirtual(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @whereLoopAddBtree(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @whereLoopAddOr(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @sqlite3_log(i32, i8*) #1

declare dso_local i32 @whereLoopClear(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
