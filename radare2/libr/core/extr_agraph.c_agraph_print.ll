; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_agraph_print.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_agraph_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_17__*, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"scr.utf8\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"asm.bytes\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"asm.cmt.right\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pd $r\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cmd.gprompt\00", align 1
@Color_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"pg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*)* @agraph_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agraph_print(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = call i32 @r_cons_get_size(i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @check_changes(%struct.TYPE_16__* %21, i32 %22, %struct.TYPE_15__* %23, i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %304

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @r_cons_clear00()
  br label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @update_graph_sizes(%struct.TYPE_16__* %35)
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  br label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  br label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  br label %58

58:                                               ; preds = %53, %51
  %59 = phi i32 [ %52, %51 ], [ %57, %53 ]
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @r_cons_canvas_resize(%struct.TYPE_17__* %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %304

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 0, %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 0, %82
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %71, %68
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %159

94:                                               ; preds = %89
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 0, %99
  %101 = add nsw i32 %100, 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 0, %106
  %108 = add nsw i32 %107, 2
  %109 = call i32 @G(i32 %101, i32 %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @r_config_get_i(i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %113, i32* %13, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @r_config_get_i(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %117, i32* %14, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @r_config_get_i(i32 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %121, i32* %15, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @r_config_set_i(i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @r_config_set_i(i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @r_config_set_i(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = call i8* @r_core_cmd_str(%struct.TYPE_15__* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %135, i8** %16, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %94
  %139 = load i8*, i8** %16, align 8
  %140 = call i32 @W(i8* %139)
  %141 = load i8*, i8** %16, align 8
  %142 = call i32 @free(i8* %141)
  br label %143

143:                                              ; preds = %138, %94
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @r_config_set_i(i32 %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @r_config_set_i(i32 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @r_config_set_i(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %143, %89
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %171, %164, %159
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %180 = call i32 @agraph_print_edges(%struct.TYPE_16__* %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = call i32 @agraph_print_nodes(%struct.TYPE_16__* %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %201

187:                                              ; preds = %178
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %194, %187, %178
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 0, %206
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 0, %212
  %214 = call i32 @G(i32 %207, i32 %213)
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %201
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 4
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @W(i8* %222)
  br label %224

224:                                              ; preds = %219, %201
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %258

227:                                              ; preds = %224
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 4
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %258

232:                                              ; preds = %227
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 4
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @strlen(i8* %235)
  store i32 %236, i32* %17, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %238, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 5
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 0, %244
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %245, %246
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = sub nsw i32 0, %252
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %17, align 4
  %256 = sub nsw i32 %254, %255
  %257 = call i32 @r_cons_canvas_fill(%struct.TYPE_17__* %239, i32 %247, i32 %253, i32 %256, i32 1, i8 signext 32)
  br label %258

258:                                              ; preds = %232, %227, %224
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 5
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %260, align 8
  %262 = call i32 @r_cons_canvas_print_region(%struct.TYPE_17__* %261)
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %303

265:                                              ; preds = %258
  %266 = call i32 (...) @r_cons_newline()
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @r_config_get(i32 %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i8* %270, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %271 = call i32 (...) @r_cons_visual_flush()
  %272 = load i8*, i8** %18, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %286

274:                                              ; preds = %265
  %275 = load i8*, i8** %18, align 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %274
  %280 = call i32 @r_cons_gotoxy(i32 0, i32 2)
  %281 = load i32, i32* @Color_RESET, align 4
  %282 = call i32 @r_cons_strcat(i32 %281)
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %284 = load i8*, i8** %18, align 8
  %285 = call i32 @r_core_cmd0(%struct.TYPE_15__* %283, i8* %284)
  store i32 1, i32* %19, align 4
  br label %286

286:                                              ; preds = %279, %274, %265
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %288 = icmp ne %struct.TYPE_15__* %287, null
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %296 = call i32 @r_core_cmd0(%struct.TYPE_15__* %295, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %297

297:                                              ; preds = %294, %289, %286
  %298 = load i32, i32* %19, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = call i32 (...) @r_cons_flush()
  br label %302

302:                                              ; preds = %300, %297
  br label %303

303:                                              ; preds = %302, %258
  store i32 1, i32* %5, align 4
  br label %304

304:                                              ; preds = %303, %67, %28
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i32 @check_changes(%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @r_cons_clear00(...) #1

declare dso_local i32 @update_graph_sizes(%struct.TYPE_16__*) #1

declare dso_local i32 @r_cons_canvas_resize(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @G(i32, i32) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_config_set_i(i32, i8*, i32) #1

declare dso_local i8* @r_core_cmd_str(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @W(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @agraph_print_edges(%struct.TYPE_16__*) #1

declare dso_local i32 @agraph_print_nodes(%struct.TYPE_16__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_cons_canvas_fill(%struct.TYPE_17__*, i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @r_cons_canvas_print_region(%struct.TYPE_17__*) #1

declare dso_local i32 @r_cons_newline(...) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @r_cons_visual_flush(...) #1

declare dso_local i32 @r_cons_gotoxy(i32, i32) #1

declare dso_local i32 @r_cons_strcat(i32) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @r_cons_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
