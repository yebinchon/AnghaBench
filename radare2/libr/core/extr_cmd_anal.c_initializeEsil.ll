; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_initializeEsil.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_initializeEsil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8*, i8*, i32, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@R_REG_NAME_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"esil.romem\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"esil.stats\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"esil.iotrap\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"esil.exectrap\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"esil.stack.depth\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"esil.noNULL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"esil.addr.size\00", align 1
@UT64_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"esil.verbose\00", align 1
@r_core_esil_cmd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"cmd.esil.step\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"cmd.esil.stepout\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"cmd.esil.intr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @initializeEsil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initializeEsil(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @R_REG_NAME_PC, align 4
  %27 = call i8* @r_reg_get_name(i32 %25, i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @r_config_get_i(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @r_config_get_i(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @r_config_get_i(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @r_config_get_i(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @r_config_get_i(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @r_config_get_i(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @r_config_get_i(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.TYPE_14__* @r_anal_esil_new(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %70, align 8
  %71 = icmp ne %struct.TYPE_14__* %66, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %1
  %73 = load i32, i32* @UT64_MAX, align 4
  store i32 %73, i32* %2, align 4
  br label %204

74:                                               ; preds = %1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %13, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @r_config_get_i(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @r_core_esil_cmd, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @r_anal_esil_setup(%struct.TYPE_14__* %89, %struct.TYPE_15__* %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @r_config_get(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %100, i8** %14, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %74
  %104 = load i8*, i8** %14, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %14, align 8
  %110 = call i8* @strdup(i8* %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %108, %103, %74
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @r_config_get(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i8*, i8** %15, align 8
  %127 = call i8* @strdup(i8* %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %120, %113
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @r_config_get(i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %151

137:                                              ; preds = %130
  %138 = load i8*, i8** %16, align 8
  %139 = call i8* @strdup(i8* %138)
  store i8* %139, i8** %17, align 8
  %140 = load i8*, i8** %17, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = call i32 @r_config_set(i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %146)
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 @free(i8* %148)
  br label %150

150:                                              ; preds = %142, %137
  br label %151

151:                                              ; preds = %150, %130
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32* @r_bin_get_entries(i32 %157)
  store i32* %158, i32** %18, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  %159 = load i32*, i32** %18, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %190

161:                                              ; preds = %151
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @r_list_empty(i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %190, label %165

165:                                              ; preds = %161
  %166 = load i32*, i32** %18, align 8
  %167 = call i64 @r_list_pop(i32* %166)
  %168 = inttoptr i64 %167 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %19, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.TYPE_12__* @r_bin_get_info(i32 %171)
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %20, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %165
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  br label %185

181:                                              ; preds = %165
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  br label %185

185:                                              ; preds = %181, %177
  %186 = phi i32 [ %180, %177 ], [ %184, %181 ]
  store i32 %186, i32* %12, align 4
  %187 = load i32*, i32** %18, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %189 = call i32 @r_list_push(i32* %187, %struct.TYPE_13__* %188)
  br label %194

190:                                              ; preds = %161, %151
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** %4, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @r_reg_setv(i32 %199, i8* %200, i32 %201)
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %194, %72
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i8* @r_reg_get_name(i32, i32) #1

declare dso_local i8* @r_config_get_i(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @r_anal_esil_new(i32, i32, i32) #1

declare dso_local i32 @r_anal_esil_setup(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @r_bin_get_entries(i32) #1

declare dso_local i32 @r_list_empty(i32*) #1

declare dso_local i64 @r_list_pop(i32*) #1

declare dso_local %struct.TYPE_12__* @r_bin_get_info(i32) #1

declare dso_local i32 @r_list_push(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @r_reg_setv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
