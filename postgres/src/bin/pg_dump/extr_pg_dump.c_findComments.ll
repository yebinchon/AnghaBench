; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_findComments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_findComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@findComments.comments = internal global %struct.TYPE_4__* null, align 8
@findComments.ncomments = internal global i32 -1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.TYPE_4__**)* @findComments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findComments(i32* %0, i64 %1, i64 %2, %struct.TYPE_4__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_4__** %3, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* @findComments.ncomments, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @collectComments(i32* %17, %struct.TYPE_4__** @findComments.comments)
  store i32 %18, i32* @findComments.ncomments, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @findComments.comments, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @findComments.comments, align 8
  %23 = load i32, i32* @findComments.ncomments, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %12, align 8
  br label %27

27:                                               ; preds = %80, %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = icmp ule %struct.TYPE_4__* %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = ptrtoint %struct.TYPE_4__* %33 to i64
  %36 = ptrtoint %struct.TYPE_4__* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 16
  %39 = sdiv i64 %38, 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %39
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 -1
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %12, align 8
  br label %80

49:                                               ; preds = %31
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 1
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %11, align 8
  br label %79

58:                                               ; preds = %49
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 -1
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %12, align 8
  br label %78

67:                                               ; preds = %58
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 1
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %11, align 8
  br label %77

76:                                               ; preds = %67
  br label %81

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %46
  br label %27

81:                                               ; preds = %76, %27
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = icmp ugt %struct.TYPE_4__* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %86, align 8
  store i32 0, i32* %5, align 4
  br label %143

87:                                               ; preds = %81
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %91 = icmp ugt %struct.TYPE_4__* %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 -1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 -1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99, %92
  br label %112

107:                                              ; preds = %99
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 -1
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %88

112:                                              ; preds = %106, %88
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %114, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %117
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %10, align 8
  br label %119

119:                                              ; preds = %136, %112
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = icmp ule %struct.TYPE_4__* %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %123
  br label %141

136:                                              ; preds = %129
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 1
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %119

141:                                              ; preds = %135, %119
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %85
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @collectComments(i32*, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
