; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_row_is_in_frame.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_row_is_in_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@FRAMEOPTION_END_CURRENT_ROW = common dso_local global i32 0, align 4
@FRAMEOPTION_ROWS = common dso_local global i32 0, align 4
@FRAMEOPTION_RANGE = common dso_local global i32 0, align 4
@FRAMEOPTION_GROUPS = common dso_local global i32 0, align 4
@FRAMEOPTION_END_OFFSET = common dso_local global i32 0, align 4
@FRAMEOPTION_END_OFFSET_PRECEDING = common dso_local global i32 0, align 4
@FRAMEOPTION_EXCLUDE_CURRENT_ROW = common dso_local global i32 0, align 4
@FRAMEOPTION_EXCLUDE_GROUP = common dso_local global i32 0, align 4
@FRAMEOPTION_EXCLUDE_TIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i32*)* @row_is_in_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @row_is_in_frame(%struct.TYPE_12__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i32 @update_frameheadpos(%struct.TYPE_12__* %18)
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %186

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @FRAMEOPTION_END_CURRENT_ROW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %186

43:                                               ; preds = %36
  br label %71

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %47 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @are_peers(%struct.TYPE_12__* %58, i32* %59, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %186

67:                                               ; preds = %57, %51
  br label %70

68:                                               ; preds = %44
  %69 = call i32 @Assert(i32 0)
  br label %70

70:                                               ; preds = %68, %67
  br label %71

71:                                               ; preds = %70, %43
  br label %126

72:                                               ; preds = %26
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @FRAMEOPTION_END_OFFSET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %125

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @DatumGetInt64(i32 %85)
  store i64 %86, i64* %9, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @FRAMEOPTION_END_OFFSET_PRECEDING, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i64, i64* %9, align 8
  %93 = sub nsw i64 0, %92
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %98, %99
  %101 = icmp sgt i64 %95, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 -1, i32* %4, align 4
  br label %186

103:                                              ; preds = %94
  br label %124

104:                                              ; preds = %77
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %107 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = call i32 @update_frametailpos(%struct.TYPE_12__* %112)
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 -1, i32* %4, align 4
  br label %186

120:                                              ; preds = %111
  br label %123

121:                                              ; preds = %104
  %122 = call i32 @Assert(i32 0)
  br label %123

123:                                              ; preds = %121, %120
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %72
  br label %126

126:                                              ; preds = %125, %71
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @FRAMEOPTION_EXCLUDE_CURRENT_ROW, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %186

138:                                              ; preds = %131
  br label %185

139:                                              ; preds = %126
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @FRAMEOPTION_EXCLUDE_GROUP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @FRAMEOPTION_EXCLUDE_TIES, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %144
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %149, %139
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %10, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %186

167:                                              ; preds = %155
  %168 = load i64, i64* %6, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp sge i64 %168, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = call i32 @update_grouptailpos(%struct.TYPE_12__* %174)
  %176 = load i64, i64* %6, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %186

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %167
  br label %184

184:                                              ; preds = %183, %149, %144
  br label %185

185:                                              ; preds = %184, %138
  store i32 1, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %181, %166, %137, %119, %102, %66, %42, %25
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @update_frameheadpos(%struct.TYPE_12__*) #1

declare dso_local i32 @are_peers(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @DatumGetInt64(i32) #1

declare dso_local i32 @update_frametailpos(%struct.TYPE_12__*) #1

declare dso_local i32 @update_grouptailpos(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
