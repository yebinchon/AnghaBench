; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movsn_args.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_movsn_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"(%c%u, %c%u)\00", align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"%s%s, %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @decode_movsn_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_movsn_args(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca [32 x i8], align 16
  %12 = alloca [32 x i8], align 16
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 2, i32* %5, align 4
  %15 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false)
  %16 = bitcast [32 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 7
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @TEST_BIT(i32 %29, i32 3)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @TEST_BIT(i32 %39, i32 7)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %111 [
    i32 128, label %51
    i32 129, label %110
  ]

51:                                               ; preds = %2
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @TEST_BIT(i32 %54, i32 7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = call i32 @decode_index16(i32* %61, %struct.TYPE_5__* %13)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 43, i32 45
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %10, align 1
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %70 = load i8, i8* %10, align 1
  %71 = sext i8 %70 to i32
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8, i8* %10, align 1
  %75 = sext i8 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %69, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %73, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %57, %51
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @TEST_BIT(i32 %82, i32 6)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @decode_index16(i32* %89, %struct.TYPE_5__* %14)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 43, i32 45
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %10, align 1
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %98 = load i8, i8* %10, align 1
  %99 = sext i8 %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i8, i8* %10, align 1
  %103 = sext i8 %102 to i32
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %101, i32 %103, i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %85, %79
  br label %111

110:                                              ; preds = %2
  br label %111

111:                                              ; preds = %2, %110, %109
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %120 = call i32 @CHK_SNPRINTF(i32 %114, i32 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %116, i8* %117, i8* %118, i8* %119)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
