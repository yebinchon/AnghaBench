; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_r_core_debug_esil.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_r_core_debug_esil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@R_PERM_R = common dso_local global i32 0, align 4
@R_PERM_W = common dso_local global i32 0, align 4
@R_PERM_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c" [perm] [reg|mem] [expr]\00", align 1
@__const.r_core_debug_esil.help_de_msg = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [36 x i8] c"Error: no esil watchpoints defined\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"aei\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"esil.prestep\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Detected loophole\0A\00", align 1
@help_msg_des = common dso_local global i8** null, align 8
@help_msg_de = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [201 x i8] c"Examples:\0A de r r rip       # stop when reads rip\0A de rw m ADDR     # stop when read or write in ADDR\0A de w r rdx       # stop when rdx register is modified\0A de x m FROM..TO  # stop when rip in range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @r_core_debug_esil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_core_debug_esil(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %215 [
    i32 0, label %19
    i32 32, label %24
    i32 45, label %93
    i32 99, label %98
    i32 115, label %122
    i32 63, label %214
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @r_debug_esil_watch_list(i32 %22)
  br label %220

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 32)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 0, i8* %33, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 114)
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @R_PERM_R, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 119)
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @R_PERM_W, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 120)
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @R_PERM_X, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 32)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  store i8 0, i8* %64, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @r_debug_esil_watch(i32 %75, i32 %76, i32 %77, i8* %78)
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %72, %63
  br label %81

81:                                               ; preds = %80, %58
  br label %82

82:                                               ; preds = %81, %24
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %86, i8* align 16 bitcast ([4 x i8*]* @__const.r_core_debug_esil.help_de_msg to i8*), i64 32, i1 false)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %89 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %87, i8** %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @free(i8* %91)
  br label %220

93:                                               ; preds = %2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @r_debug_esil_watch_reset(i32 %96)
  br label %220

98:                                               ; preds = %2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @r_debug_esil_watch_empty(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %121

106:                                              ; preds = %98
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = call i32 @r_core_cmd0(%struct.TYPE_5__* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @r_config_get_i(i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %116 = call i32 @r_debug_esil_prestep(i32 %111, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @r_debug_esil_continue(i32 %119)
  br label %121

121:                                              ; preds = %106, %104
  br label %220

122:                                              ; preds = %2
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 117
  br i1 %127, label %128, label %176

128:                                              ; preds = %122
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 32
  br i1 %133, label %134, label %176

134:                                              ; preds = %128
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = call i32 @r_num_math(i32 %137, i8* %139)
  store i32 %140, i32* %14, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = call i32 @r_core_cmd0(%struct.TYPE_5__* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @r_debug_reg_get(i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %173, %134
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @r_config_get_i(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %159 = call i32 @r_debug_esil_prestep(i32 %154, i32 %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @r_debug_esil_step(i32 %162, i32 1)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @r_debug_reg_get(i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %151
  %172 = call i32 @eprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %175

173:                                              ; preds = %151
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %12, align 4
  br label %147

175:                                              ; preds = %171, %147
  br label %213

176:                                              ; preds = %128, %122
  %177 = load i8*, i8** %4, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 63
  br i1 %181, label %187, label %182

182:                                              ; preds = %176
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182, %176
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = load i8**, i8*** @help_msg_des, align 8
  %190 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %188, i8** %189)
  br label %212

191:                                              ; preds = %182
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = call i32 @r_core_cmd0(%struct.TYPE_5__* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @r_config_get_i(i32 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %201 = call i32 @r_debug_esil_prestep(i32 %196, i32 %200)
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = call i32 @r_num_math(i32 %207, i8* %209)
  %211 = call i32 @r_debug_esil_step(i32 %204, i32 %210)
  br label %212

212:                                              ; preds = %191, %187
  br label %213

213:                                              ; preds = %212, %175
  br label %220

214:                                              ; preds = %2
  br label %215

215:                                              ; preds = %2, %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %217 = load i8**, i8*** @help_msg_de, align 8
  %218 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %216, i8** %217)
  %219 = call i32 @r_cons_printf(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.8, i64 0, i64 0))
  br label %220

220:                                              ; preds = %215, %213, %121, %93, %90, %19
  ret void
}

declare dso_local i32 @r_debug_esil_watch_list(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_debug_esil_watch(i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_debug_esil_watch_reset(i32) #1

declare dso_local i32 @r_debug_esil_watch_empty(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @r_debug_esil_prestep(i32, i32) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_debug_esil_continue(i32) #1

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i32 @r_debug_reg_get(i32, i8*) #1

declare dso_local i32 @r_debug_esil_step(i32, i32) #1

declare dso_local i32 @r_cons_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
