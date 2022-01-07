; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movrel.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movrel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8, i32, i32 }

@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(%c%u, %c%u)\00", align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%s%s, 0x%0*lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_movrel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_movrel(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 2, i32* %6, align 4
  store i8 0, i8* %7, align 1
  %17 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 32, i1 false)
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
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
  store i8 119, i8* %7, align 1
  store i32 4, i32* %11, align 4
  br label %26

24:                                               ; preds = %2
  store i8 100, i8* %7, align 1
  store i32 8, i32* %11, align 4
  br label %26

25:                                               ; preds = %2
  store i8 113, i8* %7, align 1
  store i32 16, i32* %11, align 4
  br label %26

26:                                               ; preds = %2, %25, %24, %23, %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %129

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %38 = load i8**, i8*** @instr_names, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %38, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %7, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %48)
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @TEST_BIT(i32 %53, i32 3)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 7
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @TEST_BIT(i32 %65, i32 6)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %31
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = call i32 @decode_index16(i32* %70, %struct.TYPE_5__* %12)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %73 = load i8, i8* %72, align 4
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 43, i32 45
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %13, align 1
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %80 = load i8, i8* %13, align 1
  %81 = sext i8 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8, i8* %13, align 1
  %85 = sext i8 %84 to i32
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %79, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %83, i32 %85, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %68, %31
  %92 = load i8, i8* %7, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %118 [
    i32 119, label %94
    i32 100, label %102
    i32 113, label %110
  ]

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = bitcast i32* %96 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %10, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %6, align 4
  br label %118

102:                                              ; preds = %91
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = bitcast i32* %104 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  store i64 %107, i64* %10, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 4
  store i32 %109, i32* %6, align 4
  br label %118

110:                                              ; preds = %91
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = bitcast i32* %112 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %16, align 8
  %115 = load i64, i64* %16, align 8
  store i64 %115, i64* %10, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 8
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %91, %110, %102, %94
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %125 = load i32, i32* %11, align 4
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @CHK_SNPRINTF(i32 %121, i32 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %123, i8* %124, i32 %125, i64 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %118, %29
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
