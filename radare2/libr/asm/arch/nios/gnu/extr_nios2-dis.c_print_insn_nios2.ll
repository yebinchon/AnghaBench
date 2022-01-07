; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_print_insn_nios2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_print_insn_nios2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i32*, i32, %struct.TYPE_6__*)*, i32 (i32, i32, %struct.TYPE_6__*)* }

@INSNLEN = common dso_local global i32 0, align 4
@BFD_ENDIAN_BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @print_insn_nios2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_insn_nios2(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @INSNLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32*, i32, %struct.TYPE_6__*)*, i32 (i32, i32*, i32, %struct.TYPE_6__*)** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @INSNLEN, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 %17(i32 %18, i32* %14, i32 %19, %struct.TYPE_6__* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BFD_ENDIAN_BIG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i64 @bfd_getb32(i32* %14)
  store i64 %29, i64* %10, align 8
  br label %32

30:                                               ; preds = %24
  %31 = call i64 @bfd_getl32(i32* %14)
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %4, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = call i32 @nios2_disassemble(i32 %33, i64 %34, %struct.TYPE_6__* %35)
  store i32 %36, i32* %9, align 4
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32 (i32, i32, %struct.TYPE_6__*)*, i32 (i32, i32, %struct.TYPE_6__*)** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call i32 %40(i32 %41, i32 %42, %struct.TYPE_6__* %43)
  store i32 -1, i32* %9, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bfd_getb32(i32*) #2

declare dso_local i64 @bfd_getl32(i32*) #2

declare dso_local i32 @nios2_disassemble(i32, i64, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
