; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBC_MOVNW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"(%c%u, %c%u)\00", align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%s%s, %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @decode_movn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_movn(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 2, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 7
  store i32 %22, i32* %7, align 4
  %23 = bitcast [32 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 32, i1 false)
  %24 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 32, i1 false)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %31 = load i8**, i8*** @instr_names, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %31, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @TEST_BIT(i32 %44, i32 3)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49)
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @TEST_BIT(i32 %54, i32 7)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @EBC_MOVNW, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %2
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @TEST_BIT(i32 %71, i32 7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @decode_index16(i32* %78, %struct.TYPE_6__* %13)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 43, i32 45
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %12, align 1
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %87 = load i8, i8* %12, align 1
  %88 = sext i8 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i8, i8* %12, align 1
  %92 = sext i8 %91 to i32
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %86, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %90, i32 %92, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %74, %68
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @TEST_BIT(i32 %101, i32 6)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 @decode_index16(i32* %108, %struct.TYPE_6__* %13)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 43, i32 45
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %12, align 1
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %117 = load i8, i8* %12, align 1
  %118 = sext i8 %117 to i32
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i8, i8* %12, align 1
  %122 = sext i8 %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %116, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %120, i32 %122, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %104, %98
  br label %190

129:                                              ; preds = %2
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @TEST_BIT(i32 %132, i32 7)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @decode_index32(i32* %139, %struct.TYPE_6__* %13)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 43, i32 45
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %12, align 1
  %147 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %148 = load i8, i8* %12, align 1
  %149 = sext i8 %148 to i32
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i8, i8* %12, align 1
  %153 = sext i8 %152 to i32
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %147, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %151, i32 %153, i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %135, %129
  %160 = load i32*, i32** %3, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @TEST_BIT(i32 %162, i32 6)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %159
  %166 = load i32*, i32** %3, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i32 @decode_index32(i32* %169, %struct.TYPE_6__* %13)
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 43, i32 45
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %12, align 1
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %178 = load i8, i8* %12, align 1
  %179 = sext i8 %178 to i32
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i8, i8* %12, align 1
  %183 = sext i8 %182 to i32
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %177, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %181, i32 %183, i32 %185)
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %165, %159
  br label %190

190:                                              ; preds = %189, %128
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %196 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %197 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %199 = call i32 @CHK_SNPRINTF(i32 %193, i32 %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %195, i8* %196, i8* %197, i8* %198)
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @decode_index32(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
