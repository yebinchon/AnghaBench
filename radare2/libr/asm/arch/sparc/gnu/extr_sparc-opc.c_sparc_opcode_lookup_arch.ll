; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/sparc/gnu/extr_sparc-opc.c_sparc_opcode_lookup_arch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/sparc/gnu/extr_sparc-opc.c_sparc_opcode_lookup_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_opcode_arch = type { i64 }

@sparc_opcode_archs = common dso_local global %struct.sparc_opcode_arch* null, align 8
@SPARC_OPCODE_ARCH_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc_opcode_lookup_arch(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sparc_opcode_arch*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.sparc_opcode_arch*, %struct.sparc_opcode_arch** @sparc_opcode_archs, align 8
  %6 = getelementptr inbounds %struct.sparc_opcode_arch, %struct.sparc_opcode_arch* %5, i64 0
  store %struct.sparc_opcode_arch* %6, %struct.sparc_opcode_arch** %4, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load %struct.sparc_opcode_arch*, %struct.sparc_opcode_arch** %4, align 8
  %9 = getelementptr inbounds %struct.sparc_opcode_arch, %struct.sparc_opcode_arch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.sparc_opcode_arch*, %struct.sparc_opcode_arch** %4, align 8
  %15 = getelementptr inbounds %struct.sparc_opcode_arch, %struct.sparc_opcode_arch* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @strcmp(i8* %13, i64 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.sparc_opcode_arch*, %struct.sparc_opcode_arch** %4, align 8
  %21 = load %struct.sparc_opcode_arch*, %struct.sparc_opcode_arch** @sparc_opcode_archs, align 8
  %22 = getelementptr inbounds %struct.sparc_opcode_arch, %struct.sparc_opcode_arch* %21, i64 0
  %23 = ptrtoint %struct.sparc_opcode_arch* %20 to i64
  %24 = ptrtoint %struct.sparc_opcode_arch* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.sparc_opcode_arch*, %struct.sparc_opcode_arch** %4, align 8
  %31 = getelementptr inbounds %struct.sparc_opcode_arch, %struct.sparc_opcode_arch* %30, i32 1
  store %struct.sparc_opcode_arch* %31, %struct.sparc_opcode_arch** %4, align 8
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* @SPARC_OPCODE_ARCH_BAD, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
