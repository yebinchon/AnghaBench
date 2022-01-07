; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_aespc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_aespc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_12__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32 }

@R_ANAL_ARCHINFO_MIN_OP_SIZE = common dso_local global i32 0, align 4
@R_REG_NAME_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"esil.stack.depth\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"esil.iotrap\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"esil.addr.size\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot allocate %d byte(s)\0A\00", align 1
@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_HINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32)* @cmd_aespc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_aespc(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @R_MAX(i32 64, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i32, i32* @R_ANAL_ARCHINFO_MIN_OP_SIZE, align 4
  %40 = call i32 @r_anal_archinfo(%struct.TYPE_16__* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i8* @R_MAX(i32 1, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @R_REG_NAME_PC, align 4
  %50 = call i8* @r_reg_get_name(i32 %48, i32 %49)
  store i8* %50, i8** %17, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %17, align 8
  %57 = call i32* @r_reg_get(i32 %55, i8* %56, i32 -1)
  store i32* %57, i32** %18, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @r_config_get_i(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %19, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @r_config_get_i(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %20, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @r_config_get_i(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %21, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %3
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %21, align 4
  %79 = call i32* @r_anal_esil_new(i32 %76, i32 %77, i32 %78)
  store i32* %79, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %203

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %3
  %84 = load i32, i32* %14, align 4
  %85 = call i32* @malloc(i32 %84)
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @free(i32* %91)
  br label %203

93:                                               ; preds = %83
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 @r_debug_reg_get(%struct.TYPE_15__* %99, i8* %100)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %22, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %23, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %181, %102
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %186

111:                                              ; preds = %107
  %112 = call i64 (...) @r_cons_is_breaked()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %186

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sub nsw i32 %117, 32
  %119 = icmp sge i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @r_io_read_at(i32 %127, i32 %128, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %121
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %145 = load i32, i32* @R_ANAL_OP_MASK_HINT, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @r_anal_op(%struct.TYPE_16__* %135, %struct.TYPE_14__* %12, i32 %136, i32* %140, i32 %143, i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %132
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  br label %167

164:                                              ; preds = %132
  %165 = load i32, i32* %13, align 4
  %166 = sub nsw i32 %165, 1
  br label %167

167:                                              ; preds = %164, %157
  %168 = phi i32 [ %163, %157 ], [ %166, %164 ]
  store i32 %168, i32* %24, align 4
  %169 = load i32, i32* %24, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %16, align 4
  store i32 %172, i32* %24, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %24, align 4
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = call i32 @r_anal_op_fini(%struct.TYPE_14__* %12)
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %107

186:                                              ; preds = %114, %107
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %18, align 8
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @r_reg_set_value(i32 %191, i32* %192, i32 %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i32 @r_core_esil_step(%struct.TYPE_13__* %195, i32 %198, i32* null, i32* null, i32 0)
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = load i32, i32* %23, align 4
  %202 = call i32 @r_core_seek(%struct.TYPE_13__* %200, i32 %201, i32 1)
  br label %203

203:                                              ; preds = %186, %88, %81
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @R_MAX(i32, i32) #2

declare dso_local i32 @r_anal_archinfo(%struct.TYPE_16__*, i32) #2

declare dso_local i8* @r_reg_get_name(i32, i32) #2

declare dso_local i32* @r_reg_get(i32, i8*, i32) #2

declare dso_local i8* @r_config_get_i(i32, i8*) #2

declare dso_local i32* @r_anal_esil_new(i32, i32, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @eprintf(i8*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @r_debug_reg_get(%struct.TYPE_15__*, i8*) #2

declare dso_local i64 @r_cons_is_breaked(...) #2

declare dso_local i32 @r_io_read_at(i32, i32, i32*, i32) #2

declare dso_local i32 @r_anal_op(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32*, i32, i32) #2

declare dso_local i32 @r_anal_op_fini(%struct.TYPE_14__*) #2

declare dso_local i32 @r_reg_set_value(i32, i32*, i32) #2

declare dso_local i32 @r_core_esil_step(%struct.TYPE_13__*, i32, i32*, i32*, i32) #2

declare dso_local i32 @r_core_seek(%struct.TYPE_13__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
