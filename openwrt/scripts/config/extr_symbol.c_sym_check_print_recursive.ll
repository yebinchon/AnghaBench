; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_symbol.c_sym_check_print_recursive.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_symbol.c_sym_check_print_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dep_stack = type { %struct.property*, i64, %struct.symbol*, %struct.dep_stack*, %struct.dep_stack* }
%struct.property = type { i32, %struct.TYPE_4__*, i32, %struct.menu*, %struct.property* }
%struct.TYPE_4__ = type { i8* }
%struct.menu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.symbol = type { i8*, %struct.property* }

@check_top = common dso_local global %struct.dep_stack* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unexpected recursive dependency error\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s:%d:error: recursive dependency detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"For a resolution refer to Documentation/kbuild/kconfig-language.txt\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"subsection \22Kconfig recursive dependency limitations\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s %s value contains %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s:%d:\09symbol %s depends on %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s:%d:\09choice %s contains symbol %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s is part of choice %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s:%d:\09symbol %s is selected by %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_check_print_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_print_recursive(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.dep_stack*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.menu*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca %struct.dep_stack, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  store %struct.menu* null, %struct.menu** %6, align 8
  %9 = load %struct.symbol*, %struct.symbol** %2, align 8
  %10 = call i64 @sym_is_choice_value(%struct.symbol* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.symbol*, %struct.symbol** %2, align 8
  %14 = call i32 @dep_stack_insert(%struct.dep_stack* %8, %struct.symbol* %13)
  %15 = load %struct.symbol*, %struct.symbol** %2, align 8
  %16 = call i32 @sym_get_choice_prop(%struct.symbol* %15)
  %17 = call %struct.symbol* @prop_get_symbol(i32 %16)
  store %struct.symbol* %17, %struct.symbol** %2, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  store %struct.dep_stack* %19, %struct.dep_stack** %3, align 8
  br label %20

20:                                               ; preds = %31, %18
  %21 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %22 = icmp ne %struct.dep_stack* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %25 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %24, i32 0, i32 2
  %26 = load %struct.symbol*, %struct.symbol** %25, align 8
  %27 = load %struct.symbol*, %struct.symbol** %2, align 8
  %28 = icmp eq %struct.symbol* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %33 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %32, i32 0, i32 4
  %34 = load %struct.dep_stack*, %struct.dep_stack** %33, align 8
  store %struct.dep_stack* %34, %struct.dep_stack** %3, align 8
  br label %20

35:                                               ; preds = %29, %20
  %36 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %37 = icmp ne %struct.dep_stack* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %325

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %316, %41
  %43 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %44 = icmp ne %struct.dep_stack* %43, null
  br i1 %44, label %45, label %320

45:                                               ; preds = %42
  %46 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %47 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %46, i32 0, i32 2
  %48 = load %struct.symbol*, %struct.symbol** %47, align 8
  store %struct.symbol* %48, %struct.symbol** %4, align 8
  %49 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %50 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %49, i32 0, i32 3
  %51 = load %struct.dep_stack*, %struct.dep_stack** %50, align 8
  %52 = icmp ne %struct.dep_stack* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %55 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %54, i32 0, i32 3
  %56 = load %struct.dep_stack*, %struct.dep_stack** %55, align 8
  %57 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %56, i32 0, i32 2
  %58 = load %struct.symbol*, %struct.symbol** %57, align 8
  br label %61

59:                                               ; preds = %45
  %60 = load %struct.symbol*, %struct.symbol** %2, align 8
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi %struct.symbol* [ %58, %53 ], [ %60, %59 ]
  store %struct.symbol* %62, %struct.symbol** %5, align 8
  %63 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %64 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %63, i32 0, i32 0
  %65 = load %struct.property*, %struct.property** %64, align 8
  store %struct.property* %65, %struct.property** %7, align 8
  %66 = load %struct.property*, %struct.property** %7, align 8
  %67 = icmp eq %struct.property* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %70 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %69, i32 0, i32 2
  %71 = load %struct.symbol*, %struct.symbol** %70, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  %73 = load %struct.property*, %struct.property** %72, align 8
  store %struct.property* %73, %struct.property** %7, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.symbol*, %struct.symbol** %4, align 8
  %76 = call i64 @sym_is_choice(%struct.symbol* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.symbol*, %struct.symbol** %4, align 8
  %80 = call i64 @sym_is_choice_value(%struct.symbol* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %78, %74
  %83 = load %struct.symbol*, %struct.symbol** %4, align 8
  %84 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 1
  %85 = load %struct.property*, %struct.property** %84, align 8
  store %struct.property* %85, %struct.property** %7, align 8
  br label %86

86:                                               ; preds = %99, %82
  %87 = load %struct.property*, %struct.property** %7, align 8
  %88 = icmp ne %struct.property* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load %struct.property*, %struct.property** %7, align 8
  %91 = getelementptr inbounds %struct.property, %struct.property* %90, i32 0, i32 3
  %92 = load %struct.menu*, %struct.menu** %91, align 8
  store %struct.menu* %92, %struct.menu** %6, align 8
  %93 = load %struct.property*, %struct.property** %7, align 8
  %94 = getelementptr inbounds %struct.property, %struct.property* %93, i32 0, i32 3
  %95 = load %struct.menu*, %struct.menu** %94, align 8
  %96 = icmp ne %struct.menu* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %103

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.property*, %struct.property** %7, align 8
  %101 = getelementptr inbounds %struct.property, %struct.property* %100, i32 0, i32 4
  %102 = load %struct.property*, %struct.property** %101, align 8
  store %struct.property* %102, %struct.property** %7, align 8
  br label %86

103:                                              ; preds = %97, %86
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %106 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %105, i32 0, i32 2
  %107 = load %struct.symbol*, %struct.symbol** %106, align 8
  %108 = load %struct.symbol*, %struct.symbol** %2, align 8
  %109 = icmp eq %struct.symbol* %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @stderr, align 4
  %112 = load %struct.property*, %struct.property** %7, align 8
  %113 = getelementptr inbounds %struct.property, %struct.property* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.property*, %struct.property** %7, align 8
  %118 = getelementptr inbounds %struct.property, %struct.property* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %119)
  br label %121

121:                                              ; preds = %110, %104
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %127 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %121
  %131 = load i32, i32* @stderr, align 4
  %132 = load %struct.property*, %struct.property** %7, align 8
  %133 = getelementptr inbounds %struct.property, %struct.property* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.property*, %struct.property** %7, align 8
  %138 = getelementptr inbounds %struct.property, %struct.property* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.symbol*, %struct.symbol** %4, align 8
  %141 = getelementptr inbounds %struct.symbol, %struct.symbol* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %130
  %145 = load %struct.symbol*, %struct.symbol** %4, align 8
  %146 = getelementptr inbounds %struct.symbol, %struct.symbol* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  br label %149

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi i8* [ %147, %144 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %148 ]
  %151 = load %struct.property*, %struct.property** %7, align 8
  %152 = getelementptr inbounds %struct.property, %struct.property* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @prop_get_type_name(i32 %153)
  %155 = load %struct.symbol*, %struct.symbol** %5, align 8
  %156 = getelementptr inbounds %struct.symbol, %struct.symbol* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load %struct.symbol*, %struct.symbol** %5, align 8
  %161 = getelementptr inbounds %struct.symbol, %struct.symbol* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  br label %164

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi i8* [ %162, %159 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %163 ]
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %136, i32 %139, i8* %150, i8* %154, i8* %165)
  br label %315

167:                                              ; preds = %121
  %168 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %169 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %168, i32 0, i32 0
  %170 = load %struct.property*, %struct.property** %169, align 8
  %171 = icmp ne %struct.property* %170, null
  br i1 %171, label %172, label %205

172:                                              ; preds = %167
  %173 = load i32, i32* @stderr, align 4
  %174 = load %struct.property*, %struct.property** %7, align 8
  %175 = getelementptr inbounds %struct.property, %struct.property* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.property*, %struct.property** %7, align 8
  %180 = getelementptr inbounds %struct.property, %struct.property* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.symbol*, %struct.symbol** %4, align 8
  %183 = getelementptr inbounds %struct.symbol, %struct.symbol* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %172
  %187 = load %struct.symbol*, %struct.symbol** %4, align 8
  %188 = getelementptr inbounds %struct.symbol, %struct.symbol* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  br label %191

190:                                              ; preds = %172
  br label %191

191:                                              ; preds = %190, %186
  %192 = phi i8* [ %189, %186 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %190 ]
  %193 = load %struct.symbol*, %struct.symbol** %5, align 8
  %194 = getelementptr inbounds %struct.symbol, %struct.symbol* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.symbol*, %struct.symbol** %5, align 8
  %199 = getelementptr inbounds %struct.symbol, %struct.symbol* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  br label %202

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201, %197
  %203 = phi i8* [ %200, %197 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %201 ]
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %178, i32 %181, i8* %192, i8* %203)
  br label %314

205:                                              ; preds = %167
  %206 = load %struct.symbol*, %struct.symbol** %4, align 8
  %207 = call i64 @sym_is_choice(%struct.symbol* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %242

209:                                              ; preds = %205
  %210 = load i32, i32* @stderr, align 4
  %211 = load %struct.menu*, %struct.menu** %6, align 8
  %212 = getelementptr inbounds %struct.menu, %struct.menu* %211, i32 0, i32 1
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.menu*, %struct.menu** %6, align 8
  %217 = getelementptr inbounds %struct.menu, %struct.menu* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.symbol*, %struct.symbol** %4, align 8
  %220 = getelementptr inbounds %struct.symbol, %struct.symbol* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %209
  %224 = load %struct.symbol*, %struct.symbol** %4, align 8
  %225 = getelementptr inbounds %struct.symbol, %struct.symbol* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  br label %228

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %227, %223
  %229 = phi i8* [ %226, %223 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %227 ]
  %230 = load %struct.symbol*, %struct.symbol** %5, align 8
  %231 = getelementptr inbounds %struct.symbol, %struct.symbol* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = load %struct.symbol*, %struct.symbol** %5, align 8
  %236 = getelementptr inbounds %struct.symbol, %struct.symbol* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  br label %239

238:                                              ; preds = %228
  br label %239

239:                                              ; preds = %238, %234
  %240 = phi i8* [ %237, %234 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %238 ]
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %215, i32 %218, i8* %229, i8* %240)
  br label %313

242:                                              ; preds = %205
  %243 = load %struct.symbol*, %struct.symbol** %4, align 8
  %244 = call i64 @sym_is_choice_value(%struct.symbol* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %279

246:                                              ; preds = %242
  %247 = load i32, i32* @stderr, align 4
  %248 = load %struct.menu*, %struct.menu** %6, align 8
  %249 = getelementptr inbounds %struct.menu, %struct.menu* %248, i32 0, i32 1
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.menu*, %struct.menu** %6, align 8
  %254 = getelementptr inbounds %struct.menu, %struct.menu* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.symbol*, %struct.symbol** %4, align 8
  %257 = getelementptr inbounds %struct.symbol, %struct.symbol* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %246
  %261 = load %struct.symbol*, %struct.symbol** %4, align 8
  %262 = getelementptr inbounds %struct.symbol, %struct.symbol* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  br label %265

264:                                              ; preds = %246
  br label %265

265:                                              ; preds = %264, %260
  %266 = phi i8* [ %263, %260 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %264 ]
  %267 = load %struct.symbol*, %struct.symbol** %5, align 8
  %268 = getelementptr inbounds %struct.symbol, %struct.symbol* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load %struct.symbol*, %struct.symbol** %5, align 8
  %273 = getelementptr inbounds %struct.symbol, %struct.symbol* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  br label %276

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275, %271
  %277 = phi i8* [ %274, %271 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %275 ]
  %278 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %252, i32 %255, i8* %266, i8* %277)
  br label %312

279:                                              ; preds = %242
  %280 = load i32, i32* @stderr, align 4
  %281 = load %struct.property*, %struct.property** %7, align 8
  %282 = getelementptr inbounds %struct.property, %struct.property* %281, i32 0, i32 1
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.property*, %struct.property** %7, align 8
  %287 = getelementptr inbounds %struct.property, %struct.property* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.symbol*, %struct.symbol** %4, align 8
  %290 = getelementptr inbounds %struct.symbol, %struct.symbol* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %279
  %294 = load %struct.symbol*, %struct.symbol** %4, align 8
  %295 = getelementptr inbounds %struct.symbol, %struct.symbol* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  br label %298

297:                                              ; preds = %279
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i8* [ %296, %293 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %297 ]
  %300 = load %struct.symbol*, %struct.symbol** %5, align 8
  %301 = getelementptr inbounds %struct.symbol, %struct.symbol* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load %struct.symbol*, %struct.symbol** %5, align 8
  %306 = getelementptr inbounds %struct.symbol, %struct.symbol* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  br label %309

308:                                              ; preds = %298
  br label %309

309:                                              ; preds = %308, %304
  %310 = phi i8* [ %307, %304 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %308 ]
  %311 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %285, i32 %288, i8* %299, i8* %310)
  br label %312

312:                                              ; preds = %309, %276
  br label %313

313:                                              ; preds = %312, %239
  br label %314

314:                                              ; preds = %313, %202
  br label %315

315:                                              ; preds = %314, %164
  br label %316

316:                                              ; preds = %315
  %317 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %318 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %317, i32 0, i32 3
  %319 = load %struct.dep_stack*, %struct.dep_stack** %318, align 8
  store %struct.dep_stack* %319, %struct.dep_stack** %3, align 8
  br label %42

320:                                              ; preds = %42
  %321 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  %322 = icmp eq %struct.dep_stack* %321, %8
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = call i32 (...) @dep_stack_remove()
  br label %325

325:                                              ; preds = %38, %323, %320
  ret void
}

declare dso_local i64 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @dep_stack_insert(%struct.dep_stack*, %struct.symbol*) #1

declare dso_local %struct.symbol* @prop_get_symbol(i32) #1

declare dso_local i32 @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i8* @prop_get_type_name(i32) #1

declare dso_local i32 @dep_stack_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
