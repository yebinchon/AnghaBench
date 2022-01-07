; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hash_code.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hash_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@C55PLUS_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"opcode: 0x%x part: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ins_len: 0x%x\0A\00", align 1
@ins_hash = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"hashfunc => %p 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"hashargs => 0x%x 0x%x 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ret hashcode: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hash_code(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @get_ins_part(i32 %12, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_ins_len(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* @C55PLUS_DEBUG, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 4, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @get_ins_part(i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 4, %38
  %40 = mul nsw i32 8, %39
  %41 = shl i32 %37, %40
  store i32 %41, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 5
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 5
  %47 = call i32 @get_ins_part(i32 %46, i32 1)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %33
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 2, %50
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 31
  %54 = or i32 %51, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ins_hash, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 7
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %4, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ins_hash, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  store i32 (i32, i32)* %72, i32 (i32, i32)** %7, align 8
  %73 = load i64, i64* @C55PLUS_DEBUG, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %49
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 (i32, i32)* %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %49
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 %84(i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i64, i64* @C55PLUS_DEBUG, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @get_ins_part(i32, i32) #1

declare dso_local i32 @get_ins_len(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
