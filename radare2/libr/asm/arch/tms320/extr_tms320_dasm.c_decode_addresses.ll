; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_addresses.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@L7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"L7\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@L8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"L8\00", align 1
@L16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"L16\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@l1 = common dso_local global i32 0, align 4
@l3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"l4\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"0x%01X\00", align 1
@l7 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"pmad\00", align 1
@l16 = common dso_local global i32 0, align 4
@P8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"P8\00", align 1
@P24 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"P24\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"0x%06X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_addresses(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @L7, align 4
  %5 = call i64 @field_valid(%struct.TYPE_5__* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load i32, i32* @L7, align 4
  %13 = call i32 @field_value(%struct.TYPE_5__* %11, i32 %12)
  %14 = call i32 @substitute(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load i32, i32* @L8, align 4
  %18 = call i64 @field_valid(%struct.TYPE_5__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @L8, align 4
  %26 = call i32 @field_value(%struct.TYPE_5__* %24, i32 %25)
  %27 = call i32 @substitute(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load i32, i32* @L16, align 4
  %31 = call i64 @field_valid(%struct.TYPE_5__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = load i32, i32* @L16, align 4
  %39 = call i32 @field_value(%struct.TYPE_5__* %37, i32 %38)
  %40 = call i32 @be16(i32 %39)
  %41 = call i32 @substitute(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = load i32, i32* @l1, align 4
  %45 = call i64 @field_valid(%struct.TYPE_5__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = load i32, i32* @l3, align 4
  %50 = call i64 @field_valid(%struct.TYPE_5__* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = load i32, i32* @l3, align 4
  %58 = call i32 @field_value(%struct.TYPE_5__* %56, i32 %57)
  %59 = shl i32 %58, 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = load i32, i32* @l1, align 4
  %62 = call i32 @field_value(%struct.TYPE_5__* %60, i32 %61)
  %63 = or i32 %59, %62
  %64 = call i32 @substitute(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %52, %47, %42
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = load i32, i32* @l7, align 4
  %68 = call i64 @field_valid(%struct.TYPE_5__* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = load i32, i32* @l7, align 4
  %76 = call i32 @field_value(%struct.TYPE_5__* %74, i32 %75)
  %77 = call i32 @substitute(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = load i32, i32* @l16, align 4
  %81 = call i64 @field_valid(%struct.TYPE_5__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = load i32, i32* @l16, align 4
  %89 = call i32 @field_value(%struct.TYPE_5__* %87, i32 %88)
  %90 = call i32 @be16(i32 %89)
  %91 = call i32 @substitute(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = load i32, i32* @P8, align 4
  %95 = call i64 @field_valid(%struct.TYPE_5__* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = load i32, i32* @P8, align 4
  %103 = call i32 @field_value(%struct.TYPE_5__* %101, i32 %102)
  %104 = call i32 @substitute(i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = load i32, i32* @P24, align 4
  %108 = call i64 @field_valid(%struct.TYPE_5__* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = load i32, i32* @P24, align 4
  %116 = call i32 @field_value(%struct.TYPE_5__* %114, i32 %115)
  %117 = call i32 @be24(i32 %116)
  %118 = call i32 @substitute(i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %110, %105
  ret void
}

declare dso_local i64 @field_valid(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @substitute(i32, i8*, i8*, i32) #1

declare dso_local i32 @field_value(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @be16(i32) #1

declare dso_local i32 @be24(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
