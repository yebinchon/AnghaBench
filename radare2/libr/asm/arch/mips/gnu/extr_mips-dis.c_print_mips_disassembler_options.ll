; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_print_mips_disassembler_options.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_print_mips_disassembler_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [142 x i8] c"\0AThe following MIPS specific disassembler options are supported for use\0Awith the -M switch (multiple options should be separated by commas):\0A\00", align 1
@.str.1 = private unnamed_addr constant [146 x i8] c"\0A  gpr-names=ABI            Print GPR names according to  specified ABI.\0A                           Default: based on binary being disassembled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [118 x i8] c"\0A  fpr-names=ABI            Print FPR names according to specified ABI.\0A                           Default: numeric.\0A\00", align 1
@.str.3 = private unnamed_addr constant [190 x i8] c"\0A  cp0-names=ARCH           Print CP0 register names according to\0A                           specified architecture.\0A                           Default: based on binary being disassembled.\0A\00", align 1
@.str.4 = private unnamed_addr constant [161 x i8] c"\0A  hwr-names=ARCH           Print HWR names according to specified \0A\09\09\09   architecture.\0A                           Default: based on binary being disassembled.\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"\0A  reg-names=ABI            Print GPR and FPR names according to\0A                           specified ABI.\0A\00", align 1
@.str.6 = private unnamed_addr constant [126 x i8] c"\0A  reg-names=ARCH           Print CP0 register and HWR names according to\0A                           specified architecture.\0A\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"\0A  For the options above, the following values are supported for \22ABI\22:\0A   \00", align 1
@mips_abi_choices = common dso_local global %struct.TYPE_4__* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"\0A  For the options above, The following values are supported for \22ARCH\22:\0A   \00", align 1
@mips_arch_choices = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_mips_disassembler_options(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @_(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %4, i8* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @_(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @_(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @_(i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @_(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i8* @_(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %42, %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_abi_choices, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %30)
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_abi_choices, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32*, i32** %2, align 8
  %47 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0))
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %77, %45
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_arch_choices, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %54)
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_arch_choices, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load i32*, i32** %2, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mips_arch_choices, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %67, %57
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i32*, i32** %2, align 8
  %82 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i8* @_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* %85)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
