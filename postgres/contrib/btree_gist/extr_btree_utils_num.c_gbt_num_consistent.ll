; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gbt_num_consistent(%struct.TYPE_6__* %0, i8* %1, i32* %2, i32 %3, %struct.TYPE_5__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %149 [
    i32 130, label %16
    i32 129, label %26
    i32 133, label %50
    i32 131, label %89
    i32 132, label %113
    i32 128, label %123
  ]

16:                                               ; preds = %6
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %18, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 %19(i8* %20, i8* %23, i32* %24)
  store i32 %25, i32* %13, align 4
  br label %150

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 %32(i8* %33, i8* %36, i32* %37)
  store i32 %38, i32* %13, align 4
  br label %49

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 %42(i8* %43, i8* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %39, %29
  br label %150

50:                                               ; preds = %6
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 %56(i8* %57, i8* %60, i32* %61)
  store i32 %62, i32* %13, align 4
  br label %88

63:                                               ; preds = %50
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 %66(i8* %69, i8* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 %77(i8* %78, i8* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %74, %63
  %86 = phi i1 [ false, %63 ], [ %84, %74 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %85, %53
  br label %150

89:                                               ; preds = %6
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %94, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 %95(i8* %96, i8* %99, i32* %100)
  store i32 %101, i32* %13, align 4
  br label %112

102:                                              ; preds = %89
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %104, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 %105(i8* %106, i8* %109, i32* %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %102, %92
  br label %150

113:                                              ; preds = %6
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %115, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 %116(i8* %117, i8* %120, i32* %121)
  store i32 %122, i32* %13, align 4
  br label %150

123:                                              ; preds = %6
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %125, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 %126(i8* %127, i8* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %123
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %136, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 %137(i8* %138, i8* %141, i32* %142)
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %134, %123
  %146 = phi i1 [ false, %123 ], [ %144, %134 ]
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %13, align 4
  br label %150

149:                                              ; preds = %6
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %149, %145, %113, %112, %88, %49, %16
  %151 = load i32, i32* %13, align 4
  ret i32 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
