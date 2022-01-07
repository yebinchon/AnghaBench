; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-eval/src/extr_eval.c_create_proc_from_string.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-eval/src/extr_eval.c_create_proc_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { %struct.TYPE_35__, %struct.TYPE_30__*, i32, %struct.TYPE_33__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { %struct.REnv* }
%struct.REnv = type { %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_38__*, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, %struct.RClass*, %struct.TYPE_30__*, %struct.REnv*, i32, i32 }
%struct.RClass = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_34__* }
%struct.TYPE_36__ = type { i8*, i8*, i8*, i64 }
%struct.mrb_parser_state = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.RBasic = type { i32 }

@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Binding of eval must be nil.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(eval)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to create parser state.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"file %s line %d: %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"line %d: %s\00", align 1
@E_SYNTAX_ERROR = common dso_local global i32 0, align 4
@E_SCRIPT_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"codegen error\00", align 1
@MRB_TT_ENV = common dso_local global i32 0, align 4
@MRB_PROC_ENVSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RProc* (%struct.TYPE_37__*, i8*, i64, i32, i8*, i64)* @create_proc_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RProc* @create_proc_from_string(%struct.TYPE_37__* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca %struct.mrb_parser_state*, align 8
  %15 = alloca %struct.RProc*, align 8
  %16 = alloca %struct.REnv*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca %struct.RClass*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store %struct.RClass* null, %struct.RClass** %18, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mrb_nil_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %26 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %27 = call i32 @mrb_raise(%struct.TYPE_37__* %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %6
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %30 = call %struct.TYPE_36__* @mrbc_context_new(%struct.TYPE_37__* %29)
  store %struct.TYPE_36__* %30, %struct.TYPE_36__** %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i8*, i8** %11, align 8
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %40 ]
  %43 = call i32 @mrbc_filename(%struct.TYPE_37__* %34, %struct.TYPE_36__* %35, i8* %42)
  %44 = load i8*, i8** @TRUE, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %57 = call %struct.mrb_parser_state* @mrb_parse_nstring(%struct.TYPE_37__* %53, i8* %54, i64 %55, %struct.TYPE_36__* %56)
  store %struct.mrb_parser_state* %57, %struct.mrb_parser_state** %14, align 8
  %58 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %59 = icmp ne %struct.mrb_parser_state* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %41
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %62 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %63 = call i32 @mrb_raise(%struct.TYPE_37__* %61, i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %41
  %65 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %66 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 0, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %76 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %82 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %81, i32 0, i32 1
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.TYPE_37__*, i8*, i8*, i32, ...) @mrb_format(%struct.TYPE_37__* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32 %80, i32 %86)
  store i32 %87, i32* %20, align 4
  br label %105

88:                                               ; preds = %69
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %90 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %91 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %90, i32 0, i32 1
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %99 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %98, i32 0, i32 1
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.TYPE_37__*, i8*, i8*, i32, ...) @mrb_format(%struct.TYPE_37__* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %97, i32 %103)
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %88, %72
  %106 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %107 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %106)
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %109 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %110 = call i32 @mrbc_context_free(%struct.TYPE_37__* %108, %struct.TYPE_36__* %109)
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %113 = load i32, i32* @E_SYNTAX_ERROR, align 4
  %114 = load i32, i32* %20, align 4
  %115 = call i32 @mrb_exc_new_str(%struct.TYPE_37__* %112, i32 %113, i32 %114)
  %116 = call i32 @mrb_exc_raise(%struct.TYPE_37__* %111, i32 %115)
  br label %117

117:                                              ; preds = %105, %64
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %119 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %120 = call %struct.RProc* @mrb_generate_code(%struct.TYPE_37__* %118, %struct.mrb_parser_state* %119)
  store %struct.RProc* %120, %struct.RProc** %15, align 8
  %121 = load %struct.RProc*, %struct.RProc** %15, align 8
  %122 = icmp eq %struct.RProc* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %125 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %124)
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %128 = call i32 @mrbc_context_free(%struct.TYPE_37__* %126, %struct.TYPE_36__* %127)
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %130 = load i32, i32* @E_SCRIPT_ERROR, align 4
  %131 = call i32 @mrb_raise(%struct.TYPE_37__* %129, i32 %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %132

132:                                              ; preds = %123, %117
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_34__*, %struct.TYPE_34__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %136, align 8
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %141, align 8
  %143 = icmp ugt %struct.TYPE_38__* %137, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i64 -1
  store %struct.TYPE_38__* %150, %struct.TYPE_38__** %17, align 8
  br label %157

151:                                              ; preds = %132
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %155, align 8
  store %struct.TYPE_38__* %156, %struct.TYPE_38__** %17, align 8
  br label %157

157:                                              ; preds = %151, %144
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %159, align 8
  %161 = icmp ne %struct.TYPE_30__* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %164, align 8
  %166 = call %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.TYPE_30__* %165)
  store %struct.RClass* %166, %struct.RClass** %18, align 8
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %169, align 8
  %171 = icmp ne %struct.TYPE_30__* %170, null
  br i1 %171, label %172, label %253

172:                                              ; preds = %167
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %174, align 8
  %176 = call i32 @MRB_PROC_CFUNC_P(%struct.TYPE_30__* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %253, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 3
  %181 = load %struct.REnv*, %struct.REnv** %180, align 8
  %182 = icmp ne %struct.REnv* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 3
  %186 = load %struct.REnv*, %struct.REnv** %185, align 8
  store %struct.REnv* %186, %struct.REnv** %16, align 8
  br label %237

187:                                              ; preds = %178
  %188 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %189 = load i32, i32* @MRB_TT_ENV, align 4
  %190 = load %struct.RClass*, %struct.RClass** %18, align 8
  %191 = call i64 @mrb_obj_alloc(%struct.TYPE_37__* %188, i32 %189, %struct.RClass* %190)
  %192 = inttoptr i64 %191 to %struct.REnv*
  store %struct.REnv* %192, %struct.REnv** %16, align 8
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.REnv*, %struct.REnv** %16, align 8
  %197 = getelementptr inbounds %struct.REnv, %struct.REnv* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.REnv*, %struct.REnv** %16, align 8
  %203 = getelementptr inbounds %struct.REnv, %struct.REnv* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %205, align 8
  %207 = load %struct.REnv*, %struct.REnv** %16, align 8
  %208 = getelementptr inbounds %struct.REnv, %struct.REnv* %207, i32 0, i32 0
  store %struct.TYPE_34__* %206, %struct.TYPE_34__** %208, align 8
  %209 = load %struct.REnv*, %struct.REnv** %16, align 8
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @MRB_ENV_SET_STACK_LEN(%struct.REnv* %209, i32 %217)
  %219 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %19, align 4
  %222 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %187
  store i32 2, i32* %19, align 4
  br label %230

227:                                              ; preds = %187
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %227, %226
  %231 = load %struct.REnv*, %struct.REnv** %16, align 8
  %232 = load i32, i32* %19, align 4
  %233 = call i32 @MRB_ENV_SET_BIDX(%struct.REnv* %231, i32 %232)
  %234 = load %struct.REnv*, %struct.REnv** %16, align 8
  %235 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 3
  store %struct.REnv* %234, %struct.REnv** %236, align 8
  br label %237

237:                                              ; preds = %230, %183
  %238 = load %struct.REnv*, %struct.REnv** %16, align 8
  %239 = load %struct.RProc*, %struct.RProc** %15, align 8
  %240 = getelementptr inbounds %struct.RProc, %struct.RProc* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  store %struct.REnv* %238, %struct.REnv** %241, align 8
  %242 = load i32, i32* @MRB_PROC_ENVSET, align 4
  %243 = load %struct.RProc*, %struct.RProc** %15, align 8
  %244 = getelementptr inbounds %struct.RProc, %struct.RProc* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %248 = load %struct.RProc*, %struct.RProc** %15, align 8
  %249 = bitcast %struct.RProc* %248 to %struct.RBasic*
  %250 = load %struct.REnv*, %struct.REnv** %16, align 8
  %251 = bitcast %struct.REnv* %250 to %struct.RBasic*
  %252 = call i32 @mrb_field_write_barrier(%struct.TYPE_37__* %247, %struct.RBasic* %249, %struct.RBasic* %251)
  br label %253

253:                                              ; preds = %237, %172, %167
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %255, align 8
  %257 = load %struct.RProc*, %struct.RProc** %15, align 8
  %258 = getelementptr inbounds %struct.RProc, %struct.RProc* %257, i32 0, i32 1
  store %struct.TYPE_30__* %256, %struct.TYPE_30__** %258, align 8
  %259 = load %struct.RClass*, %struct.RClass** %18, align 8
  %260 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 1
  store %struct.RClass* %259, %struct.RClass** %265, align 8
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %267 = load %struct.RProc*, %struct.RProc** %15, align 8
  %268 = getelementptr inbounds %struct.RProc, %struct.RProc* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.RProc*, %struct.RProc** %15, align 8
  %272 = getelementptr inbounds %struct.RProc, %struct.RProc* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @patch_irep(%struct.TYPE_37__* %266, i32 %270, i32 0, i32 %274)
  %276 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %14, align 8
  %277 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %276)
  %278 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %279 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %280 = call i32 @mrbc_context_free(%struct.TYPE_37__* %278, %struct.TYPE_36__* %279)
  %281 = load %struct.RProc*, %struct.RProc** %15, align 8
  ret %struct.RProc* %281
}

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_37__*, i32, i8*) #1

declare dso_local %struct.TYPE_36__* @mrbc_context_new(%struct.TYPE_37__*) #1

declare dso_local i32 @mrbc_filename(%struct.TYPE_37__*, %struct.TYPE_36__*, i8*) #1

declare dso_local %struct.mrb_parser_state* @mrb_parse_nstring(%struct.TYPE_37__*, i8*, i64, %struct.TYPE_36__*) #1

declare dso_local i32 @mrb_format(%struct.TYPE_37__*, i8*, i8*, i32, ...) #1

declare dso_local i32 @mrb_parser_free(%struct.mrb_parser_state*) #1

declare dso_local i32 @mrbc_context_free(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @mrb_exc_raise(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @mrb_exc_new_str(%struct.TYPE_37__*, i32, i32) #1

declare dso_local %struct.RProc* @mrb_generate_code(%struct.TYPE_37__*, %struct.mrb_parser_state*) #1

declare dso_local %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.TYPE_30__*) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.TYPE_30__*) #1

declare dso_local i64 @mrb_obj_alloc(%struct.TYPE_37__*, i32, %struct.RClass*) #1

declare dso_local i32 @MRB_ENV_SET_STACK_LEN(%struct.REnv*, i32) #1

declare dso_local i32 @MRB_ENV_SET_BIDX(%struct.REnv*, i32) #1

declare dso_local i32 @mrb_field_write_barrier(%struct.TYPE_37__*, %struct.RBasic*, %struct.RBasic*) #1

declare dso_local i32 @patch_irep(%struct.TYPE_37__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
