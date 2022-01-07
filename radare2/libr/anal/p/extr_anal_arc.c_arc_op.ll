; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_arc_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_arc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8* }

@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32*, i32, i32)* @arc_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_op(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %11, align 8
  store i32* %16, i32** %14, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @arcompact_op(%struct.TYPE_8__* %22, %struct.TYPE_7__* %23, i8* %24, i32* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %111

28:                                               ; preds = %6
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr i8, i8* %31, i64 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 248
  %42 = ashr i32 %41, 3
  br label %44

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %42, %37 ], [ 0, %43 ]
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  switch i32 %46, label %106 [
    i32 4, label %47
    i32 5, label %47
    i32 6, label %47
    i32 7, label %62
    i32 8, label %68
    i32 9, label %68
    i32 10, label %72
    i32 11, label %72
    i32 12, label %76
    i32 13, label %80
    i32 15, label %84
    i32 19, label %102
  ]

47:                                               ; preds = %44, %44, %44
  %48 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr i8, i8* %51, i64 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @r_read_le32(i32* %54)
  %56 = and i32 %55, 134217600
  %57 = ashr i32 %56, 5
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %52, i64 %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %107

62:                                               ; preds = %44
  %63 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i8* null, i8** %67, align 8
  br label %107

68:                                               ; preds = %44, %44
  %69 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %107

72:                                               ; preds = %44, %44
  %73 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %107

76:                                               ; preds = %44
  %77 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %107

80:                                               ; preds = %44
  %81 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %107

84:                                               ; preds = %44
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 255
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 255
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %107

98:                                               ; preds = %89, %84
  %99 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %107

102:                                              ; preds = %44
  %103 = load i8*, i8** @R_ANAL_OP_TYPE_ROR, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %107

106:                                              ; preds = %44
  br label %107

107:                                              ; preds = %106, %102, %98, %94, %80, %76, %72, %68, %62, %47
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %21
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @arcompact_op(%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i32 @r_read_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
