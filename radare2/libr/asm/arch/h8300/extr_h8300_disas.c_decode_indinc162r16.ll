; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_indinc162r16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_indinc162r16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i32 }

@H8300_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"r%u,@-r%u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"@r%u+,r%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.h8300_cmd*)* @decode_indinc162r16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_indinc162r16(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.h8300_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 109
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 15
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %25 = call i32 @decode_pop(i32* %23, %struct.h8300_cmd* %24)
  store i32 %25, i32* %3, align 4
  br label %70

26:                                               ; preds = %19, %2
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %29 = call i64 @decode_opcode(i32* %27, %struct.h8300_cmd* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %70

32:                                               ; preds = %26
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 7
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 7
  %52 = call i32 @snprintf(i32 %41, i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %51)
  br label %68

53:                                               ; preds = %32
  %54 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 7
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 7
  %67 = call i32 @snprintf(i32 %56, i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %53, %38
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %31, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @decode_pop(i32*, %struct.h8300_cmd*) #1

declare dso_local i64 @decode_opcode(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
