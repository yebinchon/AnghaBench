; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_cmd_node_map.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_cmd_node_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_cmd = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8**, %struct.TYPE_14__* }

@MPV_FORMAT_NODE_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [105 x i8] c"Command %s: this command uses a variable number of arguments, which does not work with named arguments.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_flags\00", align 1
@MPV_FORMAT_NODE_ARRAY = common dso_local global i64 0, align 8
@MP_CMD_DEF_MAX_ARGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Command %s: no argument %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_cmd*, %struct.TYPE_14__*)* @cmd_node_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_node_map(%struct.mp_log* %0, %struct.mp_cmd* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca %struct.mp_cmd*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store %struct.mp_cmd* %1, %struct.mp_cmd** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPV_FORMAT_NODE_MAP, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %8, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = call %struct.TYPE_14__* @node_map_get(%struct.TYPE_14__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %9, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %3
  store i32 0, i32* %4, align 4
  br label %203

40:                                               ; preds = %33
  %41 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %42 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bstr0(i32 %46)
  %48 = call i32 @find_cmd(%struct.mp_log* %41, %struct.mp_cmd* %42, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %203

51:                                               ; preds = %40
  %52 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %60 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %59, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 0, i32* %4, align 4
  br label %203

64:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %199, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %202

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %11, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %83
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %12, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %198

89:                                               ; preds = %71
  %90 = load i8*, i8** %11, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %143

93:                                               ; preds = %89
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MPV_FORMAT_NODE_ARRAY, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %203

100:                                              ; preds = %93
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %139, %100
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %142

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %203

123:                                              ; preds = %111
  %124 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @bstr0(i32 %133)
  %135 = call i32 @apply_flag(%struct.mp_cmd* %124, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %203

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %105

142:                                              ; preds = %105
  br label %197

143:                                              ; preds = %89
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %175, %143
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @MP_CMD_DEF_MAX_ARGS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %178

148:                                              ; preds = %144
  %149 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %150 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %17, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %174

161:                                              ; preds = %148
  %162 = load i8*, i8** %17, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = call i64 @strcmp(i8* %168, i8* %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %15, align 4
  br label %178

174:                                              ; preds = %167, %161, %148
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %144

178:                                              ; preds = %172, %144
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %183 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %184 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %185, i8* %186)
  store i32 0, i32* %4, align 4
  br label %203

188:                                              ; preds = %178
  %189 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %190 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %193 = call i32 @set_node_arg(%struct.mp_log* %189, %struct.mp_cmd* %190, i32 %191, %struct.TYPE_14__* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  store i32 0, i32* %4, align 4
  br label %203

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %142
  br label %198

198:                                              ; preds = %197, %88
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %65

202:                                              ; preds = %65
  store i32 1, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %195, %181, %137, %122, %99, %58, %50, %39
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_14__* @node_map_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @find_cmd(%struct.mp_log*, %struct.mp_cmd*, i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @apply_flag(%struct.mp_cmd*, i32) #1

declare dso_local i32 @set_node_arg(%struct.mp_log*, %struct.mp_cmd*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
