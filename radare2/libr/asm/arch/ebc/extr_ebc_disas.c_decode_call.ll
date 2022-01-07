; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_call.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"@r%d(%c%u, %c%u)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"@r%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"r%d(0x%x)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%s%d%s%s\00", align 1
@instr_names = common dso_local global i32* null, align 8
@EBC_CALL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_call(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i16 32, i16* %6, align 2
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 7
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @TEST_BIT(i32 %18, i32 6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %91, label %21

21:                                               ; preds = %2
  store i16 32, i16* %6, align 2
  store i32 2, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @TEST_BIT(i32 %24, i32 3)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @TEST_BIT(i32 %30, i32 7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = call i32 @decode_index32(i32* %35, %struct.TYPE_5__* %10)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 43, i32 45
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %11, align 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i8, i8* %11, align 1
  %49 = sext i8 %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i32, i8*, i32, ...) @CHK_SNPRINTF(i32 %45, i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49, i32 %51, i32 %53, i32 %55)
  store i32 6, i32* %5, align 4
  br label %64

57:                                               ; preds = %27
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @snprintf(i32 %60, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %57, %33
  br label %90

65:                                               ; preds = %21
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @TEST_BIT(i32 %68, i32 7)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i32, i32, i8*, i32, ...) @CHK_SNPRINTF(i32 %77, i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  store i32 6, i32* %5, align 4
  br label %89

82:                                               ; preds = %65
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32, i32, i8*, i32, ...) @CHK_SNPRINTF(i32 %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %82, %71
  br label %90

90:                                               ; preds = %89, %64
  br label %103

91:                                               ; preds = %2
  store i16 64, i16* %6, align 2
  store i32 10, i32* %5, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = bitcast i32* %93 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i32, i32, i8*, i32, ...) @CHK_SNPRINTF(i32 %98, i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %91, %90
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %108 = load i32*, i32** @instr_names, align 8
  %109 = load i64, i64* @EBC_CALL, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i16, i16* %6, align 2
  %113 = sext i16 %112 to i32
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @TEST_BIT(i32 %116, i32 5)
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @TEST_BIT(i32 %123, i32 4)
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %128 = call i32 (i32, i32, i8*, i32, ...) @CHK_SNPRINTF(i32 %106, i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %113, i8* %120, i8* %127)
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local i32 @decode_index32(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
