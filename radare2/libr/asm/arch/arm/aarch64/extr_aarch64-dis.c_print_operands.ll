; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_print_operands.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_print_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i64 }
%struct.disassemble_info = type { i32, i32 (i32, i8*, i8*)*, i32, i32 (i32, %struct.disassemble_info*)* }

@AARCH64_MAX_OPND_NUM = common dso_local global i32 0, align 4
@AARCH64_OPND_NIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@no_notes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c" ; note: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.disassemble_info*)* @print_operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_operands(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, %struct.disassemble_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.disassemble_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.disassemble_info* %3, %struct.disassemble_info** %8, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %86, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %18
  br label %89

38:                                               ; preds = %28
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %45 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %44, i32 0, i32 2
  %46 = call i32 @aarch64_print_operand(i8* %39, i32 128, i32 %40, %struct.TYPE_8__* %41, %struct.TYPE_7__* %42, i32 %43, i32* %10, i32* %45, i8** %12)
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %38
  %52 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %53 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %52, i32 0, i32 1
  %54 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %53, align 8
  %55 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %56 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = icmp eq i32 %58, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 %54(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %51, %38
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %69 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %68, i32 0, i32 3
  %70 = load i32 (i32, %struct.disassemble_info*)*, i32 (i32, %struct.disassemble_info*)** %69, align 8
  %71 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %72 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %75 = call i32 %70(i32 %73, %struct.disassemble_info* %74)
  br label %85

76:                                               ; preds = %64
  %77 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %78 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %77, i32 0, i32 1
  %79 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %78, align 8
  %80 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %81 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %84 = call i32 %79(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %76, %67
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %14

89:                                               ; preds = %37, %14
  %90 = load i8*, i8** %12, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32, i32* @no_notes, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %97 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %96, i32 0, i32 1
  %98 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %97, align 8
  %99 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %100 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 %98(i32 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %95, %92, %89
  ret void
}

declare dso_local i32 @aarch64_print_operand(i8*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
