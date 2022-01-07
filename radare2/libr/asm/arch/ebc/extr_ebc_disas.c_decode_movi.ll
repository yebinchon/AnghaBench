; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movi.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8, i32, i32 }

@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%c%c\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"(%c%u, %c%u)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"%s%s, %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_movi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_movi(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 2, i32* %6, align 4
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %17 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 32, i1 false)
  store i64 0, i64* %11, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 6
  switch i32 %21, label %26 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %24
    i32 3, label %25
  ]

22:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %26

23:                                               ; preds = %2
  store i8 119, i8* %8, align 1
  br label %26

24:                                               ; preds = %2
  store i8 100, i8* %8, align 1
  br label %26

25:                                               ; preds = %2
  store i8 113, i8* %8, align 1
  br label %26

26:                                               ; preds = %2, %25, %24, %23, %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %146

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 3
  switch i32 %36, label %41 [
    i32 0, label %37
    i32 1, label %38
    i32 2, label %39
    i32 3, label %40
  ]

37:                                               ; preds = %31
  store i8 98, i8* %7, align 1
  br label %41

38:                                               ; preds = %31
  store i8 119, i8* %7, align 1
  br label %41

39:                                               ; preds = %31
  store i8 100, i8* %7, align 1
  br label %41

40:                                               ; preds = %31
  store i8 113, i8* %7, align 1
  br label %41

41:                                               ; preds = %31, %40, %39, %38, %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %48 = load i8**, i8*** @instr_names, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %48, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %58, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @TEST_BIT(i32 %64, i32 6)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %41
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = call i32 @decode_index16(i32* %69, %struct.TYPE_5__* %13)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %72 = load i8, i8* %71, align 4
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 43, i32 45
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %12, align 1
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %79 = load i8, i8* %12, align 1
  %80 = sext i8 %79 to i32
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8, i8* %12, align 1
  %84 = sext i8 %83 to i32
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82, i32 %84, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %67, %41
  %91 = load i8, i8* %8, align 1
  %92 = sext i8 %91 to i32
  switch i32 %92, label %123 [
    i32 119, label %93
    i32 100, label %103
    i32 113, label %113
  ]

93:                                               ; preds = %90
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = bitcast i32* %97 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  store i64 %100, i64* %11, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %6, align 4
  br label %123

103:                                              ; preds = %90
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = bitcast i32* %107 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %15, align 8
  store i64 %110, i64* %11, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %6, align 4
  br label %123

113:                                              ; preds = %90
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = bitcast i32* %117 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %16, align 8
  %120 = load i64, i64* %16, align 8
  store i64 %120, i64* %11, align 8
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 8
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %90, %113, %103, %93
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @TEST_BIT(i32 %127, i32 3)
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 7
  %136 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @CHK_SNPRINTF(i32 %139, i32 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %141, i8* %142, i64 %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %123, %29
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
