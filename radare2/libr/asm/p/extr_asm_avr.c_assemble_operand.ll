; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_assemble_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_avr.c_assemble_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32, i32*)* @assemble_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble_operand(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %139 [
    i32 139, label %12
    i32 138, label %21
    i32 149, label %33
    i32 136, label %33
    i32 145, label %72
    i32 150, label %72
    i32 146, label %72
    i32 144, label %72
    i32 147, label %72
    i32 148, label %77
    i32 143, label %87
    i32 135, label %87
    i32 134, label %87
    i32 142, label %87
    i32 133, label %87
    i32 132, label %87
    i32 141, label %87
    i32 130, label %87
    i32 129, label %87
    i32 131, label %89
    i32 128, label %89
    i32 140, label %100
    i32 137, label %116
  ]

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @parse_registerpair(i8* %13)
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %12
  br label %140

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @parse_registerpair(i8* %22)
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 12
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 12
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %21
  br label %140

33:                                               ; preds = %4, %4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @getnum(%struct.TYPE_4__* %34, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 43
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 45
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %33
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 2
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %47, %41
  %61 = load i32, i32* %10, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, -64
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = icmp sle i32 %66, 63
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %65, %60
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %140

72:                                               ; preds = %4, %4, %4, %4, %4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @getnum(%struct.TYPE_4__* %73, i8* %74)
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %9, align 4
  br label %140

77:                                               ; preds = %4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @getnum(%struct.TYPE_4__* %78, i8* %79)
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %84, 255
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %9, align 4
  br label %140

87:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %88 = load i32*, i32** %8, align 8
  store i32 0, i32* %88, align 4
  store i32 0, i32* %9, align 4
  br label %140

89:                                               ; preds = %4, %4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = icmp sgt i32 %91, 2
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = call i32 @getnum(%struct.TYPE_4__* %94, i8* %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %93, %89
  br label %140

100:                                              ; preds = %4
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i32 @getnum(%struct.TYPE_4__* %105, i8* %107)
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %111, 32
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %100
  br label %140

116:                                              ; preds = %4
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = call i32 @getnum(%struct.TYPE_4__* %121, i8* %123)
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp sge i32 %127, 16
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %131, 32
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 16
  store i32 %136, i32* %134, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %133, %129, %120
  br label %138

138:                                              ; preds = %137, %116
  br label %140

139:                                              ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %140

140:                                              ; preds = %139, %138, %115, %99, %87, %77, %72, %69, %32, %20
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @parse_registerpair(i8*) #1

declare dso_local i32 @getnum(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
