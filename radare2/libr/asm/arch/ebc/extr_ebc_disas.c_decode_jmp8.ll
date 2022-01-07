; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_jmp8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_jmp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_OPCODE_MASK = common dso_local global i64 0, align 8
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_3__*)* @decode_jmp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_jmp8(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [3 x i8], align 1
  %6 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 3, i1 false)
  %8 = load i64*, i64** %3, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @TEST_BIT(i64 %10, i32 7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @TEST_BIT(i64 %16, i32 6)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %6, align 8
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %31 = load i8**, i8*** @instr_names, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EBC_OPCODE_MASK, align 8
  %36 = and i64 %34, %35
  %37 = getelementptr inbounds i8*, i8** %31, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %47 = load i64*, i64** %3, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  ret i32 2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @TEST_BIT(i64, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
