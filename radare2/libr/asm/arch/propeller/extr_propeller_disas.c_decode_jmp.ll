; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/propeller/extr_propeller_disas.c_decode_jmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/propeller/extr_propeller_disas.c_decode_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propeller_cmd = type { i32, i32, i32, i32, i32 }

@PROP_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"jmpret\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"0x%x, #0x%x\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0x%x, 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"#0x%x\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.propeller_cmd*, i32)* @decode_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_jmp(%struct.propeller_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.propeller_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.propeller_cmd* %0, %struct.propeller_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @get_opcode(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %118 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @get_zcri(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %20, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @get_dst(i32 %28)
  %30 = shl i32 %29, 2
  %31 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @get_src(i32 %33)
  %35 = shl i32 %34, 2
  %36 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @get_dst(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @get_src(i32 %45)
  %47 = shl i32 %46, 2
  %48 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %40, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  br label %71

49:                                               ; preds = %17
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @get_src(i32 %50)
  %52 = shl i32 %51, 2
  %53 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @get_dst(i32 %55)
  %57 = shl i32 %56, 2
  %58 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %61 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @get_dst(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @get_src(i32 %67)
  %69 = shl i32 %68, 2
  %70 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %62, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %49, %27
  br label %117

72:                                               ; preds = %11
  %73 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %74 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %75, i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %72
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @get_src(i32 %83)
  %85 = shl i32 %84, 2
  %86 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %87 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %89 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  %90 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @get_src(i32 %95)
  %97 = shl i32 %96, 2
  %98 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %92, i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %116

99:                                               ; preds = %72
  %100 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %100, i32 0, i32 2
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @get_src(i32 %102)
  %104 = shl i32 %103, 2
  %105 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %106 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.propeller_cmd*, %struct.propeller_cmd** %3, align 8
  %108 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @get_src(i32 %112)
  %114 = shl i32 %113, 2
  %115 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %109, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %99, %82
  br label %117

117:                                              ; preds = %116, %71
  store i32 4, i32* %7, align 4
  br label %118

118:                                              ; preds = %2, %117
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @get_zcri(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @get_dst(i32) #1

declare dso_local i32 @get_src(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
