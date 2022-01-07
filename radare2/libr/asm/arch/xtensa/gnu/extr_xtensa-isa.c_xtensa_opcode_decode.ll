; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-isa.c_xtensa_opcode_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-isa.c_xtensa_opcode_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 (i32)* }
%struct.TYPE_6__ = type { i32* }

@XTENSA_UNDEFINED = common dso_local global i64 0, align 8
@xtensa_isa_bad_opcode = common dso_local global i32 0, align 4
@xtisa_errno = common dso_local global i32 0, align 4
@xtisa_error_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot decode opcode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xtensa_opcode_decode(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @XTENSA_UNDEFINED, align 8
  %18 = call i32 @CHECK_FORMAT(%struct.TYPE_8__* %15, i64 %16, i64 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* @XTENSA_UNDEFINED, align 8
  %23 = call i32 @CHECK_SLOT(%struct.TYPE_8__* %19, i64 %20, i32 %21, i64 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64 (i32)*, i64 (i32)** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 %42(i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @XTENSA_UNDEFINED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %5, align 8
  br label %55

50:                                               ; preds = %4
  %51 = load i32, i32* @xtensa_isa_bad_opcode, align 4
  store i32 %51, i32* @xtisa_errno, align 4
  %52 = load i32, i32* @xtisa_error_msg, align 4
  %53 = call i32 @strcpy(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = load i64, i64* @XTENSA_UNDEFINED, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %50, %48
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @CHECK_FORMAT(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @CHECK_SLOT(%struct.TYPE_8__*, i64, i32, i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
