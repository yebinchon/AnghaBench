; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-dis.c_write_instr_name_.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-dis.c_write_instr_name_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcDisState = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@condName = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".jd\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".di\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arcDisState*, i8*, i32, i32, i32, i32, i32, i32)* @write_instr_name_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_instr_name_(%struct.arcDisState* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.arcDisState*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.arcDisState* %0, %struct.arcDisState** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %19 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @strncpy(i32 %20, i8* %21, i32 3)
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %8
  store i8* null, i8** %17, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %30 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcat(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i8**, i8*** @condName, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %17, align 8
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @cond_code_name(%struct.arcDisState* %43, i32 %44)
  store i8* %45, i8** %17, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i8*, i8** %17, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %52 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @strcat(i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %8
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %61 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcat(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %66 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %79 [
    i32 130, label %68
    i32 129, label %73
    i32 128, label %78
  ]

68:                                               ; preds = %64
  %69 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %70 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcat(i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %79

73:                                               ; preds = %64
  %74 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %75 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcat(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %79

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %64, %78, %73, %68
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %84 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strcat(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %92 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strcat(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %100 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcat(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %95
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i8* @cond_code_name(%struct.arcDisState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
