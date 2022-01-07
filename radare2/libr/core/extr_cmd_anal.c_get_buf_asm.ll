; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_get_buf_asm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_get_buf_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i8*, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@R_PRINT_FLAGS_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"asm.var.sub\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"asm.pseudo\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"asm.relsub\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"asm.var.subonly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32, i32, %struct.TYPE_20__*, i32)* @get_buf_asm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_buf_asm(%struct.TYPE_18__* %0, i32 %1, i32 %2, %struct.TYPE_20__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca [12 x i32], align 16
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @R_PRINT_FLAGS_COLOR, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  store i32 12, i32* %13, align 4
  %28 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 12, i1 false)
  store i8* null, i8** %16, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @r_config_get_i(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @r_config_get_i(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 3
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @r_config_get_i(i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @r_config_get_i(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 2
  store i8* %54, i8** %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %5
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %5
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %77 = call i32 @r_io_read_at(i32 %74, i32 %75, i32* %76, i32 12)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @r_asm_set_pc(i32 %80, i32 %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  %87 = call i32 @r_asm_disassemble(i32 %85, %struct.TYPE_19__* %15, i32* %86, i32 12)
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %89 = call i32 @r_strbuf_length(i32* %88)
  %90 = add nsw i32 %89, 128
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i8* @malloc(i32 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %95 = call i32 @r_strbuf_get(i32* %94)
  %96 = call i32 @strcpy(i8* %93, i32 %95)
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %71
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %19, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = call i32 @r_parse_varsub(%struct.TYPE_22__* %102, %struct.TYPE_20__* %103, i32 %104, i32 %106, i8* %107, i8* %108, i32 4)
  br label %110

110:                                              ; preds = %99, %71
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32* @r_anal_hint_get(i32 %113, i32 %114)
  store i32* %115, i32** %20, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @r_parse_filter(%struct.TYPE_22__* %118, i32 %119, i32 %122, i32* %123, i8* %124, i8* %125, i32 512, i32 %130)
  %132 = load i32*, i32** %20, align 8
  %133 = call i32 @r_anal_hint_free(i32* %132)
  %134 = load i8*, i8** %19, align 8
  %135 = call i32 @r_asm_op_set_asm(%struct.TYPE_19__* %15, i8* %134)
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %174

140:                                              ; preds = %110
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %140
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %165 = icmp ne %struct.TYPE_20__* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %143
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  br label %171

170:                                              ; preds = %143
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i32 [ %169, %166 ], [ 0, %170 ]
  %173 = call i8* @r_print_colorize_opcode(%struct.TYPE_21__* %146, i8* %147, i32 %155, i32 %163, i32 0, i32 %172)
  store i8* %173, i8** %16, align 8
  br label %177

174:                                              ; preds = %140, %110
  %175 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %176 = call i8* @r_str_new(i8* %175)
  store i8* %176, i8** %16, align 8
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i8*, i8** %16, align 8
  ret i8* %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @r_config_get_i(i32, i8*) #2

declare dso_local i32 @r_io_read_at(i32, i32, i32*, i32) #2

declare dso_local i32 @r_asm_set_pc(i32, i32) #2

declare dso_local i32 @r_asm_disassemble(i32, %struct.TYPE_19__*, i32*, i32) #2

declare dso_local i32 @r_strbuf_length(i32*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @r_strbuf_get(i32*) #2

declare dso_local i32 @r_parse_varsub(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32, i8*, i8*, i32) #2

declare dso_local i32* @r_anal_hint_get(i32, i32) #2

declare dso_local i32 @r_parse_filter(%struct.TYPE_22__*, i32, i32, i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @r_anal_hint_free(i32*) #2

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @r_print_colorize_opcode(%struct.TYPE_21__*, i8*, i32, i32, i32, i32) #2

declare dso_local i8* @r_str_new(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
