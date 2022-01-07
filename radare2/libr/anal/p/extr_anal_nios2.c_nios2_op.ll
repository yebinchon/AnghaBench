; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_nios2.c_nios2_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_nios2.c_nios2_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32*, i32, i32)* @nios2_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nios2_op(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %164

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = call i32 @memset(%struct.TYPE_4__* %18, i32 0, i32 24)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = call i32 @r_strbuf_init(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 58
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %160

34:                                               ; preds = %17
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %159

44:                                               ; preds = %34
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 15
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %158

54:                                               ; preds = %44
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %157

64:                                               ; preds = %54
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 15
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %156

74:                                               ; preds = %64
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %155

84:                                               ; preds = %74
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %154 [
    i32 58, label %88
    i32 1, label %133
    i32 0, label %137
    i32 32, label %137
    i32 64, label %137
    i32 128, label %137
    i32 192, label %137
    i32 38, label %141
    i32 7, label %142
    i32 71, label %142
    i32 135, label %142
    i32 199, label %142
    i32 13, label %146
    i32 45, label %146
    i32 77, label %146
    i32 141, label %146
    i32 205, label %146
    i32 6, label %150
    i32 70, label %150
    i32 134, label %150
    i32 198, label %150
  ]

88:                                               ; preds = %84
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 160
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %96, 175
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 61
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %132

107:                                              ; preds = %98, %93, %88
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 224
  br i1 %111, label %112, label %131

112:                                              ; preds = %107
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sle i32 %115, 231
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 62
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %127, %122, %117, %112, %107
  br label %132

132:                                              ; preds = %131, %103
  br label %154

133:                                              ; preds = %84
  %134 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %154

137:                                              ; preds = %84, %84, %84, %84, %84
  %138 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  br label %154

141:                                              ; preds = %84
  br label %154

142:                                              ; preds = %84, %84, %84, %84
  %143 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  br label %154

146:                                              ; preds = %84, %84, %84, %84, %84
  %147 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %154

150:                                              ; preds = %84, %84, %84, %84
  %151 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %84, %150, %146, %142, %141, %137, %133, %132
  br label %155

155:                                              ; preds = %154, %80
  br label %156

156:                                              ; preds = %155, %70
  br label %157

157:                                              ; preds = %156, %60
  br label %158

158:                                              ; preds = %157, %50
  br label %159

159:                                              ; preds = %158, %40
  br label %160

160:                                              ; preds = %159, %30
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %160, %16
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
