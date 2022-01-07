; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_cmpi.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_cmpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lte\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gte\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ulte\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ugte\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"%s%u%c%s\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@EBC_CMPIEQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c" (%c%u, %c%u)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%s%s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_cmpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cmpi(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [5 x i8*], align 16
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 2, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 7
  store i32 %18, i32* %6, align 4
  %19 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 32, i1 false)
  %20 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 32, i1 false)
  %21 = bitcast [5 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 40, i1 false)
  %22 = bitcast i8* %21 to [5 x i8*]*
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %26, align 8
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %22, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @TEST_BIT(i32 %31, i32 3)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %44 = load i8**, i8*** @instr_names, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %44, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @TEST_BIT(i32 %55, i32 6)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 64, i32 32
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @TEST_BIT(i32 %62, i32 7)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 100, i32 119
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @EBC_CMPIEQ, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %52, i32 %59, i32 %66, i8* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @TEST_BIT(i32 %80, i32 4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %2
  %84 = load i32*, i32** %3, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = call i32 @decode_index16(i32* %85, %struct.TYPE_5__* %12)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %88 = load i8, i8* %87, align 4
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 43, i32 45
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %11, align 1
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %95 = load i8, i8* %11, align 1
  %96 = sext i8 %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %96, i32 %98, i32 %100, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %83, %2
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @TEST_BIT(i32 %109, i32 7)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %13, align 4
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %118, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %5, align 4
  br label %134

123:                                              ; preds = %106
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %129, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %123, %112
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %142 = call i32 @CHK_SNPRINTF(i32 %137, i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %139, i8* %140, i8* %141)
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
