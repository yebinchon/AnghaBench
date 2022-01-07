; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_format_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_format_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cris_disasm_data = type { i32 }

@REGISTER_PREFIX_CHAR = common dso_local global i32 0, align 4
@cris_dis_v32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"acr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cris_disasm_data*, i32, i8*, i64)* @format_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_reg(%struct.cris_disasm_data* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.cris_disasm_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.cris_disasm_data* %0, %struct.cris_disasm_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* @REGISTER_PREFIX_CHAR, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %9, align 8
  store i8 %15, i8* %16, align 1
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %36 [
    i32 15, label %20
    i32 14, label %33
  ]

20:                                               ; preds = %18
  %21 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %5, align 8
  %22 = getelementptr inbounds %struct.cris_disasm_data, %struct.cris_disasm_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @cris_dis_v32, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %32

29:                                               ; preds = %20
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  br label %40

33:                                               ; preds = %18
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %40

36:                                               ; preds = %18
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %33, %32
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  ret i8* %45
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
