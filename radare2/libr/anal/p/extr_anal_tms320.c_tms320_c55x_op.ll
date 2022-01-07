; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_tms320.c_tms320_c55x_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_tms320.c_tms320_c55x_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i64 }

@engine = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@R_ANAL_OP_TYPE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@R_ANAL_OP_TYPE_JMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"B AC\00", align 1
@R_ANAL_OP_TYPE_UJMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"BCC \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"BCCU \00", align 1
@R_ANAL_OP_TYPE_CJMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"CALL \00", align 1
@R_ANAL_OP_TYPE_CALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"CALL AC\00", align 1
@R_ANAL_OP_TYPE_UCALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"CALLCC \00", align 1
@R_ANAL_OP_TYPE_CCALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"RET\00", align 1
@R_ANAL_OP_TYPE_RET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"RETCC\00", align 1
@R_ANAL_OP_TYPE_CRET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"MOV \00", align 1
@R_ANAL_OP_TYPE_MOV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"PSHBOTH \00", align 1
@R_ANAL_OP_TYPE_UPUSH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"PSH \00", align 1
@R_ANAL_OP_TYPE_PUSH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"POPBOTH \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"POP \00", align 1
@R_ANAL_OP_TYPE_POP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"CMP \00", align 1
@R_ANAL_OP_TYPE_CMP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"CMPAND \00", align 1
@R_ANAL_OP_TYPE_ACMP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@R_ANAL_OP_TYPE_NOP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"INTR \00", align 1
@R_ANAL_OP_TYPE_SWI = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"TRAP \00", align 1
@R_ANAL_OP_TYPE_TRAP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@R_ANAL_OP_TYPE_UNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tms320_c55x_op(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @engine, i32 0, i32 0), align 8
  store i8* %12, i8** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @tms320_dasm(%struct.TYPE_6__* @engine, i32* %15, i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @R_ANAL_OP_TYPE_NULL, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @strstr(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  br label %31

29:                                               ; preds = %5
  %30 = load i8*, i8** %11, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i8* [ %28, %26 ], [ %30, %29 ]
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @match(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32, i32* @R_ANAL_OP_TYPE_JMP, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @match(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @R_ANAL_OP_TYPE_UJMP, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %36
  br label %198

48:                                               ; preds = %31
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @match(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @match(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @R_ANAL_OP_TYPE_CJMP, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %197

60:                                               ; preds = %52
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @match(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* @R_ANAL_OP_TYPE_CALL, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i64 @match(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @R_ANAL_OP_TYPE_UCALL, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %64
  br label %196

76:                                               ; preds = %60
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @match(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @R_ANAL_OP_TYPE_CCALL, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %195

84:                                               ; preds = %76
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @match(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32, i32* @R_ANAL_OP_TYPE_RET, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = call i64 @match(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @R_ANAL_OP_TYPE_CRET, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %88
  br label %194

100:                                              ; preds = %84
  %101 = load i8*, i8** %11, align 8
  %102 = call i64 @match(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @R_ANAL_OP_TYPE_MOV, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %193

108:                                              ; preds = %100
  %109 = load i8*, i8** %11, align 8
  %110 = call i64 @match(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @R_ANAL_OP_TYPE_UPUSH, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %192

116:                                              ; preds = %108
  %117 = load i8*, i8** %11, align 8
  %118 = call i64 @match(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @R_ANAL_OP_TYPE_PUSH, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %191

124:                                              ; preds = %116
  %125 = load i8*, i8** %11, align 8
  %126 = call i64 @match(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %11, align 8
  %130 = call i64 @match(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128, %124
  %133 = load i32, i32* @R_ANAL_OP_TYPE_POP, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %190

136:                                              ; preds = %128
  %137 = load i8*, i8** %11, align 8
  %138 = call i64 @match(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @R_ANAL_OP_TYPE_CMP, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %189

144:                                              ; preds = %136
  %145 = load i8*, i8** %11, align 8
  %146 = call i64 @match(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, i32* @R_ANAL_OP_TYPE_ACMP, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %188

152:                                              ; preds = %144
  %153 = load i8*, i8** %11, align 8
  %154 = call i64 @match(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* @R_ANAL_OP_TYPE_NOP, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %187

160:                                              ; preds = %152
  %161 = load i8*, i8** %11, align 8
  %162 = call i64 @match(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* @R_ANAL_OP_TYPE_SWI, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %186

168:                                              ; preds = %160
  %169 = load i8*, i8** %11, align 8
  %170 = call i64 @match(i8* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* @R_ANAL_OP_TYPE_TRAP, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  br label %185

176:                                              ; preds = %168
  %177 = load i8*, i8** %11, align 8
  %178 = call i64 @match(i8* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* @R_ANAL_OP_TYPE_UNK, align 4
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %180, %176
  br label %185

185:                                              ; preds = %184, %172
  br label %186

186:                                              ; preds = %185, %164
  br label %187

187:                                              ; preds = %186, %156
  br label %188

188:                                              ; preds = %187, %148
  br label %189

189:                                              ; preds = %188, %140
  br label %190

190:                                              ; preds = %189, %132
  br label %191

191:                                              ; preds = %190, %120
  br label %192

192:                                              ; preds = %191, %112
  br label %193

193:                                              ; preds = %192, %104
  br label %194

194:                                              ; preds = %193, %99
  br label %195

195:                                              ; preds = %194, %80
  br label %196

196:                                              ; preds = %195, %75
  br label %197

197:                                              ; preds = %196, %56
  br label %198

198:                                              ; preds = %197, %47
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  ret i32 %201
}

declare dso_local i32 @tms320_dasm(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @match(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
