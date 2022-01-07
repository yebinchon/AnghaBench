; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rasm2.c_rasm_asm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rasm2.c_rasm_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Failed to write buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R_SYS_ENDIAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32, i32, i32, i32, i32)* @rasm_asm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rasm_asm(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @r_asm_set_pc(i32 %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %16, align 4
  %37 = call %struct.TYPE_9__* @r_asm_rasm_assemble(i32 %34, i8* %35, i32 %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %18, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %169

40:                                               ; preds = %8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %163

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @write(i32 1, i32* %54, i32 %57)
  store i32 %58, i32* %21, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %66 = call i32 @r_asm_code_free(%struct.TYPE_9__* %65)
  store i32 0, i32* %9, align 4
  br label %169

67:                                               ; preds = %51
  br label %162

68:                                               ; preds = %45
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %116

74:                                               ; preds = %68
  %75 = load i32, i32* %22, align 4
  %76 = sdiv i32 %75, 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %111, %74
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %23, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %78
  store i32 0, i32* %20, align 4
  br label %83

83:                                               ; preds = %107, %82
  %84 = load i32, i32* %20, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %22, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %22, align 4
  %89 = icmp ne i32 %87, 0
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %110

92:                                               ; preds = %90
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %20, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 49, i32 48
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %20, align 4
  br label %83

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %78

114:                                              ; preds = %78
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %161

116:                                              ; preds = %68
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %116
  store i64 0, i64* %24, align 8
  store i64 0, i64* %24, align 8
  br label %120

120:                                              ; preds = %143, %119
  %121 = load i64, i64* %24, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %121, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %120
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %24, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* @R_SYS_ENDIAN, align 4
  %134 = call i32 @r_read_ble32(i32* %132, i32 %133)
  store i32 %134, i32* %25, align 4
  %135 = load i32, i32* %25, align 4
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i64, i64* %24, align 8
  %138 = udiv i64 %137, 4
  %139 = icmp eq i64 %138, 7
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %127
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %24, align 8
  %145 = add i64 %144, 4
  store i64 %145, i64* %24, align 8
  br label %120

146:                                              ; preds = %120
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %160

148:                                              ; preds = %116
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %150 = call i8* @r_asm_code_get_hex(%struct.TYPE_9__* %149)
  store i8* %150, i8** %26, align 8
  %151 = load i8*, i8** %26, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %155 = load i8*, i8** %26, align 8
  %156 = call i32 @print_buf(%struct.TYPE_8__* %154, i8* %155)
  %157 = load i8*, i8** %26, align 8
  %158 = call i32 @free(i8* %157)
  br label %159

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %159, %146
  br label %161

161:                                              ; preds = %160, %114
  br label %162

162:                                              ; preds = %161, %67
  br label %163

163:                                              ; preds = %162, %40
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %165 = call i32 @r_asm_code_free(%struct.TYPE_9__* %164)
  %166 = load i32, i32* %21, align 4
  %167 = icmp sgt i32 %166, 0
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %163, %63, %39
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i32 @r_asm_set_pc(i32, i32) #1

declare dso_local %struct.TYPE_9__* @r_asm_rasm_assemble(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_asm_code_free(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @r_read_ble32(i32*, i32) #1

declare dso_local i8* @r_asm_code_get_hex(%struct.TYPE_9__*) #1

declare dso_local i32 @print_buf(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
