; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_r82abs16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_r82abs16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"movfpe\00", align 1
@H8300_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"movtpe\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"r%u%c,@0x%x:16\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"@0x%x:16,r%u%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.h8300_cmd*)* @decode_r82abs16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_r82abs16(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.h8300_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %5, align 8
  store i32 4, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 106
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %23 = call i32 @strncpy(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %49

24:                                               ; preds = %12, %2
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 106
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = icmp eq i32 %33, 12
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %40 = call i32 @strncpy(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %48

41:                                               ; preds = %29, %24
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %44 = call i64 @decode_opcode(i32* %42, %struct.h8300_cmd* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %97

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @r_read_at_be16(i32* %50, i32 2)
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 7
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 108, i32 104
  %73 = load i32, i32* %7, align 4
  %74 = trunc i32 %73 to i8
  %75 = call i32 @snprintf(i32 %60, i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %72, i8 signext %74)
  br label %95

76:                                               ; preds = %49
  %77 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 7
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 108, i32 104
  %93 = trunc i32 %92 to i8
  %94 = call i32 @snprintf(i32 %79, i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %85, i8 signext %93)
  br label %95

95:                                               ; preds = %76, %57
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %46
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @decode_opcode(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @r_read_at_be16(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
