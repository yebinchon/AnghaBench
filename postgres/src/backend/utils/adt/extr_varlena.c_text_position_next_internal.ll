; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_position_next_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_position_next_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*)* @text_position_next_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @text_position_next_internal(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp uge i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ule i8* %40, %41
  br label %43

43:                                               ; preds = %39, %2
  %44 = phi i1 [ false, %2 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %13, align 1
  %52 = load i8*, i8** %4, align 8
  store i8* %52, i8** %12, align 8
  br label %53

53:                                               ; preds = %66, %49
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %13, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %3, align 8
  br label %124

66:                                               ; preds = %57
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %12, align 8
  br label %53

69:                                               ; preds = %53
  br label %123

70:                                               ; preds = %43
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 -1
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %107, %70
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ult i8* %82, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %81
  %86 = load i8*, i8** %14, align 8
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %12, align 8
  store i8* %87, i8** %16, align 8
  br label %88

88:                                               ; preds = %102, %85
  %89 = load i8*, i8** %15, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8*, i8** %16, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %16, align 8
  store i8* %101, i8** %3, align 8
  br label %124

102:                                              ; preds = %96
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %15, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %16, align 8
  br label %88

107:                                              ; preds = %88
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %12, align 8
  br label %81

122:                                              ; preds = %81
  br label %123

123:                                              ; preds = %122, %69
  store i8* null, i8** %3, align 8
  br label %124

124:                                              ; preds = %123, %100, %64
  %125 = load i8*, i8** %3, align 8
  ret i8* %125
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
