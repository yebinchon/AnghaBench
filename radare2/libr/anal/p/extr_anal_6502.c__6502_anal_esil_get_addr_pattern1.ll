; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_6502.c__6502_anal_esil_get_addr_pattern1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_6502.c__6502_anal_esil_get_addr_pattern1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"x,0x%02x,+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"x,0x%04x,+\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"y,0x%04x,+\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"x,0x%02x,+,[2]\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"y,0x%02x,[2],+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i8*, i32)* @_6502_anal_esil_get_addr_pattern1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_6502_anal_esil_get_addr_pattern1(%struct.TYPE_3__* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %154

14:                                               ; preds = %5
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 31
  switch i32 %18, label %154 [
    i32 9, label %19
    i32 5, label %34
    i32 21, label %49
    i32 13, label %64
    i32 29, label %84
    i32 25, label %104
    i32 1, label %124
    i32 17, label %139
  ]

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 2, i32* %21, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %154

34:                                               ; preds = %14
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 3, i32* %36, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  %48 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %154

49:                                               ; preds = %14
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 4, i32* %51, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %63 = call i32 @snprintf(i8* %52, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %154

64:                                               ; preds = %14
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 4, i32* %66, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %74, %78
  br label %81

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %71
  %82 = phi i32 [ %79, %71 ], [ 0, %80 ]
  %83 = call i32 @snprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %154

84:                                               ; preds = %14
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 4, i32* %86, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sgt i32 %89, 2
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %94, %98
  br label %101

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %91
  %102 = phi i32 [ %99, %91 ], [ 0, %100 ]
  %103 = call i32 @snprintf(i8* %87, i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %154

104:                                              ; preds = %14
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 4, i32* %106, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = or i32 %114, %118
  br label %121

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %111
  %122 = phi i32 [ %119, %111 ], [ 0, %120 ]
  %123 = call i32 @snprintf(i8* %107, i32 %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %154

124:                                              ; preds = %14
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i32 6, i32* %126, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  br label %136

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i32 [ %134, %131 ], [ 0, %135 ]
  %138 = call i32 @snprintf(i8* %127, i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  br label %154

139:                                              ; preds = %14
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i32 5, i32* %141, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  br label %151

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i32 [ %149, %146 ], [ 0, %150 ]
  %153 = call i32 @snprintf(i8* %142, i32 %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %13, %14, %151, %136, %121, %101, %81, %61, %46, %31
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
