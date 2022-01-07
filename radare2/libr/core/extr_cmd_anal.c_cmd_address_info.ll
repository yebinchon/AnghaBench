; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_address_info.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_address_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@R_ANAL_ADDR_TYPE_PROGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@R_ANAL_ADDR_TYPE_LIBRARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@R_ANAL_ADDR_TYPE_EXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@R_ANAL_ADDR_TYPE_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@R_ANAL_ADDR_TYPE_WRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@R_ANAL_ADDR_TYPE_FLAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@R_ANAL_ADDR_TYPE_FUNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@R_ANAL_ADDR_TYPE_STACK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@R_ANAL_ADDR_TYPE_HEAP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@R_ANAL_ADDR_TYPE_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@R_ANAL_ADDR_TYPE_ASCII = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@R_ANAL_ADDR_TYPE_SEQUENCE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"program\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"library\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"exec\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"read\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"write\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"flag\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"func\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"stack\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"heap\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"reg\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ascii\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sequence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32)* @cmd_address_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_address_info(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @r_num_math(i32 %23, i8* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @r_core_anal_address(%struct.TYPE_4__* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %142 [
    i32 106, label %31
  ]

31:                                               ; preds = %26
  %32 = call i32* (...) @pj_new()
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %227

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @pj_o(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @R_ANAL_ADDR_TYPE_PROGRAM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @pj_ks(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @R_ANAL_ADDR_TYPE_LIBRARY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @pj_ks(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @R_ANAL_ADDR_TYPE_EXEC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @pj_ks(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @R_ANAL_ADDR_TYPE_READ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @pj_ks(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @R_ANAL_ADDR_TYPE_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @pj_ks(i32* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @R_ANAL_ADDR_TYPE_FLAG, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @pj_ks(i32* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @R_ANAL_ADDR_TYPE_FUNC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @pj_ks(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @R_ANAL_ADDR_TYPE_STACK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @pj_ks(i32* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @R_ANAL_ADDR_TYPE_HEAP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @pj_ks(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @R_ANAL_ADDR_TYPE_REG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @pj_ks(i32* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @R_ANAL_ADDR_TYPE_ASCII, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @pj_ks(i32* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @R_ANAL_ADDR_TYPE_SEQUENCE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @pj_ks(i32* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @pj_end(i32* %135)
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @pj_string(i32* %137)
  %139 = call i32 @r_cons_println(i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @pj_free(i32* %140)
  br label %227

142:                                              ; preds = %26
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @R_ANAL_ADDR_TYPE_PROGRAM, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 @r_cons_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %142
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @R_ANAL_ADDR_TYPE_LIBRARY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 @r_cons_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @R_ANAL_ADDR_TYPE_EXEC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @R_ANAL_ADDR_TYPE_READ, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %163
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @R_ANAL_ADDR_TYPE_WRITE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = call i32 @r_cons_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %170
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @R_ANAL_ADDR_TYPE_FLAG, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %177
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @R_ANAL_ADDR_TYPE_FUNC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %184
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @R_ANAL_ADDR_TYPE_STACK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = call i32 @r_cons_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %191
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @R_ANAL_ADDR_TYPE_HEAP, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = call i32 @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %198
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @R_ANAL_ADDR_TYPE_REG, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = call i32 @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %205
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @R_ANAL_ADDR_TYPE_ASCII, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 @r_cons_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %212
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @R_ANAL_ADDR_TYPE_SEQUENCE, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = call i32 @r_cons_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %219
  br label %227

227:                                              ; preds = %35, %226, %134
  ret void
}

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i32 @r_core_anal_address(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @pj_new(...) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i32 @pj_ks(i32*, i8*, i8*) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i32 @r_cons_println(i32) #1

declare dso_local i32 @pj_string(i32*) #1

declare dso_local i32 @pj_free(i32*) #1

declare dso_local i32 @r_cons_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
