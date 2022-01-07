; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archi8080i8080dis.c_i8080_disasm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archi8080i8080dis.c_i8080_disasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_t = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@opcodes = common dso_local global %struct.opcode_t* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"db 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @i8080_disasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8080_disasm(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.opcode_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 8
  %26 = or i32 %20, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.opcode_t*, %struct.opcode_t** @opcodes, align 8
  %28 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %27, i64 0
  store %struct.opcode_t* %28, %struct.opcode_t** %10, align 8
  br label %29

29:                                               ; preds = %122, %3
  %30 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %31 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %125

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %37 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %41 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %39, %43
  %45 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %46 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %50 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %48, %52
  %54 = or i32 %44, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %35, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 192
  br i1 %58, label %65, label %59

59:                                               ; preds = %34
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 194
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 196
  br label %65

65:                                               ; preds = %62, %59, %34
  %66 = phi i1 [ true, %59 ], [ true, %34 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %70 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %121

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %76 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @strcpy(i8* %74, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strcat(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %92 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %91, i32 0, i32 3
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @arg(i8* %89, i32 %90, %struct.TYPE_2__* %92, i32 %93)
  %95 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %96 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %84
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %106 = call i32 @strcat(i8* %101, i8* %105)
  br label %107

107:                                              ; preds = %100, %84
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %115 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %114, i32 0, i32 2
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @arg(i8* %112, i32 %113, %struct.TYPE_2__* %115, i32 %116)
  %118 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %119 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %4, align 4
  br label %130

121:                                              ; preds = %65
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.opcode_t*, %struct.opcode_t** %10, align 8
  %124 = getelementptr inbounds %struct.opcode_t, %struct.opcode_t* %123, i32 1
  store %struct.opcode_t* %124, %struct.opcode_t** %10, align 8
  br label %29

125:                                              ; preds = %29
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @snprintf(i8* %126, i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %107
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @arg(i8*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
