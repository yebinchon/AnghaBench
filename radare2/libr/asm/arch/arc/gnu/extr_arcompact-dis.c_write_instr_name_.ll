; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arcompact-dis.c_write_instr_name_.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arcompact-dis.c_write_instr_name_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcDisState = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@condName = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".ab\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".as\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".di\00", align 1
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
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.arcDisState* %0, %struct.arcDisState** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  br label %120

22:                                               ; preds = %8
  %23 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %24 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strncpy(i32 %25, i8* %26, i32 3)
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %22
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %35 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strcat(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %30
  store i32 18, i32* %17, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8**, i8*** @condName, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %18, align 8
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @cond_code_name(%struct.arcDisState* %49, i32 %50)
  store i8* %51, i8** %18, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i8*, i8** %18, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %58 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @strcat(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %22
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %67 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strcat(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %72 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %77 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @strstr(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %83 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strcat(i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %92 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @strcat(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %15, align 4
  switch i32 %96, label %112 [
    i32 1, label %97
    i32 2, label %102
    i32 3, label %107
  ]

97:                                               ; preds = %95
  %98 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %99 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strcat(i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %112

102:                                              ; preds = %95
  %103 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %104 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @strcat(i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %112

107:                                              ; preds = %95
  %108 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %109 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strcat(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %95, %107, %102, %97
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.arcDisState*, %struct.arcDisState** %9, align 8
  %117 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strcat(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %120

120:                                              ; preds = %21, %115, %112
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i8* @cond_code_name(%struct.arcDisState*, i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
