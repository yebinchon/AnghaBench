; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8, i32, i32, i32 }

@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"(%c%u, %c%u)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%s%s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @decode_movin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_movin(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 2, i32* %6, align 4
  store i8 0, i8* %7, align 1
  %13 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 6
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
  ]

20:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %24

21:                                               ; preds = %2
  store i8 119, i8* %7, align 1
  br label %24

22:                                               ; preds = %2
  store i8 100, i8* %7, align 1
  br label %24

23:                                               ; preds = %2
  store i8 113, i8* %7, align 1
  br label %24

24:                                               ; preds = %2, %23, %22, %21, %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %141

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %34 = load i8**, i8*** @instr_names, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %34, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @TEST_BIT(i32 %48, i32 6)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %29
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @decode_index16(i32* %53, %struct.TYPE_7__* %12)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %56 = load i8, i8* %55, align 4
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 43, i32 45
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %11, align 1
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %63 = load i8, i8* %11, align 1
  %64 = sext i8 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8, i8* %11, align 1
  %68 = sext i8 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %66, i32 %68, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %51, %29
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  switch i32 %76, label %101 [
    i32 119, label %77
    i32 100, label %85
    i32 113, label %93
  ]

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @decode_index16(i32* %81, %struct.TYPE_7__* %12)
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %6, align 4
  br label %101

85:                                               ; preds = %74
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @decode_index32(i32* %89, %struct.TYPE_7__* %12)
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 4
  store i32 %92, i32* %6, align 4
  br label %101

93:                                               ; preds = %74
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @decode_index64(i32* %97, %struct.TYPE_7__* %12)
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 8
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %74, %93, %85, %77
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %103 = load i8, i8* %102, align 4
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 43, i32 45
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %11, align 1
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %110 = load i8, i8* %11, align 1
  %111 = sext i8 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i8, i8* %11, align 1
  %115 = sext i8 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %109, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %113, i32 %115, i32 %117)
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @TEST_BIT(i32 %122, i32 3)
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 7
  %131 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %119, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %126, i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %139 = call i32 @CHK_SNPRINTF(i32 %134, i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %136, i8* %137, i8* %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %101, %27
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @decode_index32(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @decode_index64(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
