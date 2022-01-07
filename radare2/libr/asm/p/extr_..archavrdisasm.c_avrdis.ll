; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archavrdisasm.c_avrdis.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archavrdisasm.c_avrdis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8* }

@AVR_Long_Instruction = common dso_local global i64 0, align 8
@AVR_Long_Address = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32)* @avrdis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avrdis(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i64 0, i64* @AVR_Long_Instruction, align 8
  store i64 0, i64* @AVR_Long_Address, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %24, %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = bitcast %struct.TYPE_6__* %12 to { i32, i8* }*
  %32 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %31, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @disassembleInstruction(i32* %11, i32 %33, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcpy(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

41:                                               ; preds = %19
  %42 = load i64, i64* @AVR_Long_Instruction, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strcpy(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = bitcast %struct.TYPE_6__* %12 to { i32, i8* }*
  %63 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %62, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @disassembleInstruction(i32* %11, i32 %64, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

72:                                               ; preds = %50
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @printDisassembledInstruction(i8* %73, i32 %74, i32 %76)
  store i32 4, i32* %5, align 4
  br label %84

78:                                               ; preds = %41
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @printDisassembledInstruction(i8* %79, i32 %80, i32 %82)
  store i32 2, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %72, %69, %47, %38, %16
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @disassembleInstruction(i32*, i32, i8*) #2

declare dso_local i32 @printDisassembledInstruction(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
