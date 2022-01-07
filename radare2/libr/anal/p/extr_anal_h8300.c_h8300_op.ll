; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_h8300.c_h8300_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_h8300.c_h8300_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.h8300_cmd = type { i32 }

@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UNK = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_SHL = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_SHR = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_MUL = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i64 0, align 8
@R_ANAL_OP_MASK_ESIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32, i32*, i32, i32)* @h8300_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h8300_op(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.h8300_cmd, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i32 2, i32* %7, align 4
  br label %189

23:                                               ; preds = %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = call i32 @memset(%struct.TYPE_7__* %24, i32 0, i32 40)
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i32 -1, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 -1, i32* %36, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @h8300_decode_command(i32* %37, %struct.h8300_cmd* %16)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  store i32 %38, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %189

45:                                               ; preds = %23
  %46 = load i32, i32* %15, align 4
  %47 = ashr i32 %46, 4
  switch i32 %47, label %78 [
    i32 151, label %48
    i32 150, label %48
    i32 152, label %48
    i32 162, label %53
    i32 128, label %58
    i32 183, label %63
    i32 185, label %68
    i32 186, label %68
    i32 132, label %73
  ]

48:                                               ; preds = %45, %45, %45
  %49 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  br label %82

53:                                               ; preds = %45
  %54 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  br label %82

58:                                               ; preds = %45
  %59 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  br label %82

63:                                               ; preds = %45
  %64 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  br label %82

68:                                               ; preds = %45, %45
  %69 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  br label %82

73:                                               ; preds = %45
  %74 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  br label %82

78:                                               ; preds = %45
  %79 = load i64, i64* @R_ANAL_OP_TYPE_UNK, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %73, %68, %63, %58, %53, %48
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @R_ANAL_OP_TYPE_UNK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @analop_esil(i32* %89, %struct.TYPE_7__* %90, i32 %91, i32* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %189

95:                                               ; preds = %82
  %96 = load i32, i32* %15, align 4
  switch i32 %96, label %172 [
    i32 142, label %97
    i32 146, label %97
    i32 144, label %97
    i32 149, label %97
    i32 141, label %97
    i32 145, label %97
    i32 143, label %97
    i32 148, label %97
    i32 147, label %97
    i32 154, label %97
    i32 153, label %97
    i32 161, label %97
    i32 138, label %102
    i32 164, label %106
    i32 163, label %106
    i32 167, label %106
    i32 168, label %106
    i32 137, label %111
    i32 136, label %115
    i32 130, label %119
    i32 129, label %119
    i32 140, label %124
    i32 184, label %128
    i32 190, label %133
    i32 188, label %133
    i32 189, label %133
    i32 187, label %133
    i32 131, label %137
    i32 134, label %137
    i32 135, label %137
    i32 133, label %137
    i32 139, label %142
    i32 157, label %146
    i32 156, label %146
    i32 155, label %146
    i32 160, label %151
    i32 159, label %151
    i32 158, label %151
    i32 170, label %156
    i32 169, label %156
    i32 177, label %156
    i32 175, label %156
    i32 182, label %156
    i32 181, label %156
    i32 172, label %156
    i32 180, label %156
    i32 166, label %156
    i32 165, label %156
    i32 171, label %156
    i32 173, label %156
    i32 179, label %156
    i32 174, label %156
    i32 178, label %156
    i32 176, label %156
  ]

97:                                               ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95
  %98 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  br label %176

102:                                              ; preds = %95
  %103 = load i64, i64* @R_ANAL_OP_TYPE_RET, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  br label %176

106:                                              ; preds = %95, %95, %95, %95
  %107 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  store i64 %108, i64* %110, align 8
  br label %176

111:                                              ; preds = %95
  %112 = load i64, i64* @R_ANAL_OP_TYPE_SHL, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  store i64 %112, i64* %114, align 8
  br label %176

115:                                              ; preds = %95
  %116 = load i64, i64* @R_ANAL_OP_TYPE_SHR, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  br label %176

119:                                              ; preds = %95, %95
  %120 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  br label %176

124:                                              ; preds = %95
  %125 = load i64, i64* @R_ANAL_OP_TYPE_MUL, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  br label %176

128:                                              ; preds = %95
  %129 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  br label %176

133:                                              ; preds = %95, %95, %95, %95
  %134 = load i64, i64* @R_ANAL_OP_TYPE_ADD, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  br label %176

137:                                              ; preds = %95, %95, %95, %95
  %138 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  br label %176

142:                                              ; preds = %95
  %143 = load i64, i64* @R_ANAL_OP_TYPE_NOP, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 5
  store i64 %143, i64* %145, align 8
  br label %176

146:                                              ; preds = %95, %95, %95
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @h8300_anal_jsr(%struct.TYPE_7__* %147, i32 %148, i32* %149)
  br label %176

151:                                              ; preds = %95, %95, %95
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @h8300_anal_jmp(%struct.TYPE_7__* %152, i32 %153, i32* %154)
  br label %176

156:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95
  %157 = load i64, i64* @R_ANAL_OP_TYPE_CJMP, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 2
  %162 = load i32*, i32** %11, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 2
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  br label %176

172:                                              ; preds = %95
  %173 = load i64, i64* @R_ANAL_OP_TYPE_UNK, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 5
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %172, %156, %151, %146, %142, %137, %133, %128, %124, %119, %115, %111, %106, %102, %97
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @R_ANAL_OP_MASK_ESIL, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i32*, i32** %8, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @analop_esil(i32* %182, %struct.TYPE_7__* %183, i32 %184, i32* %185)
  br label %187

187:                                              ; preds = %181, %176
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %187, %88, %43, %22
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @h8300_decode_command(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @analop_esil(i32*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @h8300_anal_jsr(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @h8300_anal_jmp(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
