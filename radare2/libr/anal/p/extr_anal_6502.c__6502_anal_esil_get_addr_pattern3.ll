; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_6502.c__6502_anal_esil_get_addr_pattern3.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_6502.c__6502_anal_esil_get_addr_pattern3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%c,0x%02x,+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%c,0x%04x,+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i8*, i32, i8)* @_6502_anal_esil_get_addr_pattern3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_6502_anal_esil_get_addr_pattern3(%struct.TYPE_3__* %0, i32* %1, i32 %2, i8* %3, i32 %4, i8 signext %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8 %5, i8* %12, align 1
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %116

16:                                               ; preds = %6
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 31
  switch i32 %20, label %116 [
    i32 0, label %21
    i32 8, label %36
    i32 4, label %42
    i32 20, label %57
    i32 12, label %74
    i32 28, label %94
  ]

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %116

36:                                               ; preds = %16
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 2, i32* %38, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %116

42:                                               ; preds = %16
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 5, i32* %44, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %116

57:                                               ; preds = %16
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 6, i32* %59, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ 0, %70 ]
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %72)
  br label %116

74:                                               ; preds = %16
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 6, i32* %76, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %84, %88
  br label %91

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %81
  %92 = phi i32 [ %89, %81 ], [ 0, %90 ]
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %77, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %116

94:                                               ; preds = %16
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 7, i32* %96, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %106, %110
  br label %113

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112, %103
  %114 = phi i32 [ %111, %103 ], [ 0, %112 ]
  %115 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %114)
  br label %116

116:                                              ; preds = %15, %16, %113, %91, %71, %54, %36, %33
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
