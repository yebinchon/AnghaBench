; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_log.c_cmd_log.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_log.c_cmd_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"File not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Usage: less [filename]\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@help_msg_T = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Only available when the screen is interactive\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"T=\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Background thread syncing with http.sync started.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"T=&&\00", align 1
@log_callback_all = common dso_local global i32 0, align 4
@log_callback_r2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Please check e http.sync\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_log(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %232

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  br label %35

34:                                               ; preds = %26, %23
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i8* [ %33, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %34 ]
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 32)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i32 @atoi(i8* %45)
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %46, %43 ], [ 0, %47 ]
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %231 [
    i32 101, label %53
    i32 108, label %75
    i32 45, label %83
    i32 63, label %87
    i32 84, label %91
    i32 61, label %100
    i32 32, label %191
    i32 109, label %212
    i32 106, label %224
    i32 42, label %224
    i32 0, label %224
  ]

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @strchr(i8* %54, i8 signext 32)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i8* @r_file_slurp(i8* %60, i32* null)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @r_cons_less_str(i8* %65, i32* null)
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @free(i8* %67)
  br label %71

69:                                               ; preds = %58
  %70 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  br label %74

72:                                               ; preds = %53
  %73 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %71
  br label %231

75:                                               ; preds = %48
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %231

83:                                               ; preds = %48
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @r_core_log_del(%struct.TYPE_15__* %84, i32 %85)
  br label %231

87:                                               ; preds = %48
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load i32, i32* @help_msg_T, align 4
  %90 = call i32 @r_core_cmd_help(%struct.TYPE_15__* %88, i32 %89)
  br label %231

91:                                               ; preds = %48
  %92 = call i32 (...) @r_cons_is_interactive()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = call i32 @textlog_chat(%struct.TYPE_15__* %95)
  br label %99

97:                                               ; preds = %91
  %98 = call i32 @eprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  br label %231

100:                                              ; preds = %48
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 38
  br i1 %105, label %106, label %136

106:                                              ; preds = %100
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 38
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = call i32 @r_cons_break_push(i32* null, i32* null)
  br label %114

114:                                              ; preds = %118, %112
  %115 = call i32 (...) @r_cons_is_breaked()
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = call i32 @r_core_cmd0(%struct.TYPE_15__* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %121 = call i8* (...) @r_cons_sleep_begin()
  store i8* %121, i8** %13, align 8
  %122 = call i32 @r_sys_sleep(i32 1)
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @r_cons_sleep_end(i8* %123)
  br label %114

125:                                              ; preds = %114
  %126 = call i32 (...) @r_cons_break_pop()
  br label %135

127:                                              ; preds = %106
  %128 = call i32 @eprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = call i32* @r_core_task_new(%struct.TYPE_15__* %129, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, %struct.TYPE_15__* %130)
  store i32* %131, i32** %14, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @r_core_task_enqueue(%struct.TYPE_15__* %132, i32* %133)
  br label %135

135:                                              ; preds = %127, %125
  br label %190

136:                                              ; preds = %100
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i32 @atoi(i8* %138)
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 48
  br i1 %146, label %147, label %150

147:                                              ; preds = %141, %136
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  br label %189

150:                                              ; preds = %141
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 42
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @log_callback_all, align 4
  br label %160

158:                                              ; preds = %150
  %159 = load i32, i32* @log_callback_r2, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  store i32 %161, i32* %15, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @r_core_log_get(%struct.TYPE_15__* %162, i32 %165)
  store i8* %166, i8** %16, align 8
  %167 = load i8*, i8** %16, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %186

169:                                              ; preds = %160
  %170 = load i8*, i8** %16, align 8
  %171 = call i32 @getIndexFromLogString(i8* %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %174, %169
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @r_core_log_run(%struct.TYPE_15__* %180, i8* %181, i32 %182)
  %184 = load i8*, i8** %16, align 8
  %185 = call i32 @free(i8* %184)
  br label %188

186:                                              ; preds = %160
  %187 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %179
  br label %189

189:                                              ; preds = %188, %147
  br label %190

190:                                              ; preds = %189, %135
  br label %231

191:                                              ; preds = %48
  %192 = load i32, i32* %9, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %5, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 48
  br i1 %198, label %199, label %206

199:                                              ; preds = %194, %191
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i8*, i8** %5, align 8
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @r_core_log_list(%struct.TYPE_15__* %200, i32 %201, i32 %202, i8 signext %204)
  br label %211

206:                                              ; preds = %194
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = call i32 @r_core_log_add(%struct.TYPE_15__* %207, i8* %209)
  br label %211

211:                                              ; preds = %206, %199
  br label %231

212:                                              ; preds = %48
  %213 = load i32, i32* %9, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @r_core_log_list(%struct.TYPE_15__* %216, i32 %217, i32 1, i8 signext 116)
  br label %223

219:                                              ; preds = %212
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @r_core_log_list(%struct.TYPE_15__* %220, i32 %221, i32 0, i8 signext 116)
  br label %223

223:                                              ; preds = %219, %215
  br label %231

224:                                              ; preds = %48, %48, %48
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i8*, i8** %5, align 8
  %229 = load i8, i8* %228, align 1
  %230 = call i32 @r_core_log_list(%struct.TYPE_15__* %225, i32 %226, i32 %227, i8 signext %229)
  br label %231

231:                                              ; preds = %48, %224, %223, %211, %190, %99, %87, %83, %75, %74
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %22
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @r_file_slurp(i8*, i32*) #1

declare dso_local i32 @r_cons_less_str(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_cons_printf(i8*, ...) #1

declare dso_local i32 @r_core_log_del(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @r_cons_is_interactive(...) #1

declare dso_local i32 @textlog_chat(%struct.TYPE_15__*) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i32 @r_cons_is_breaked(...) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @r_cons_sleep_begin(...) #1

declare dso_local i32 @r_sys_sleep(i32) #1

declare dso_local i32 @r_cons_sleep_end(i8*) #1

declare dso_local i32 @r_cons_break_pop(...) #1

declare dso_local i32* @r_core_task_new(%struct.TYPE_15__*, i32, i8*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @r_core_task_enqueue(%struct.TYPE_15__*, i32*) #1

declare dso_local i8* @r_core_log_get(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @getIndexFromLogString(i8*) #1

declare dso_local i32 @r_core_log_run(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @r_core_log_list(%struct.TYPE_15__*, i32, i32, i8 signext) #1

declare dso_local i32 @r_core_log_add(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
