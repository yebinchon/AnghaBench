; ModuleID = '/home/carl/AnghaBench/radare2/shlr/java/extr_code.c_r_java_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/java/extr_code.c_r_java_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@JAVA_OPS = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_java_assemble(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strncpy(i8* %17, i8* %18, i32 127)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 127
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %23 = call i32 @parseJavaArgs(i8* %21, i32* %22, i32 4)
  store i32 %23, i32* %15, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %124, %3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @JAVA_OPS, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %127

40:                                               ; preds = %32
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @JAVA_OPS, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @strcmp(i8* %41, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %123, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @JAVA_OPS, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @JAVA_OPS, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %116 [
    i32 2, label %65
    i32 3, label %69
    i32 5, label %103
  ]

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  br label %116

69:                                               ; preds = %50
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %76, i32* %78, align 4
  br label %102

79:                                               ; preds = %69
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @JAVA_OPS, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @isRelative(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %92, %72
  br label %116

103:                                              ; preds = %50
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %50, %103, %102, %65
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @JAVA_OPS, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  br label %128

123:                                              ; preds = %40
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %32

127:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @parseJavaArgs(i8*, i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i32*) #2

declare dso_local i32 @isRelative(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
