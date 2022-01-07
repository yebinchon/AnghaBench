; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_scc.c_scc_to_608.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_scc.c_scc_to_608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Scenarist_SCC V%1d.%1d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%2d:%2d:%2d%*1[:;]%2d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scc_to_608(%struct.TYPE_5__** %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* null, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %136

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, i32*, ...) @sscanf(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  %30 = icmp eq i32 2, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 18
  store i32* %33, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 18
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 1, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 0, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %31
  store i64 0, i64* %3, align 8
  br label %136

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @utf8_line_length(i32* %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 0, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @utf8_trimmed_length(i32* %50, i64 %51)
  %53 = icmp ne i64 0, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  br label %62

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %44

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 (i32*, i8*, i32*, ...) @sscanf(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i32* %13)
  %65 = icmp eq i32 4, %64
  br i1 %65, label %66, label %134

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  store i32* %68, i32** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 12
  store i64 %70, i64* %7, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @utf8_line_length(i32* %71)
  store i64 %72, i64* %6, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @utf8_trimmed_length(i32* %73, i64 %74)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = trunc i64 %76 to i32
  %78 = udiv i32 %77, 5
  %79 = add i32 1, %78
  store i32 %79, i32* %15, align 4
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = mul i32 %82, 15
  %84 = udiv i32 %83, 10
  %85 = call %struct.TYPE_5__* @scc_relloc(%struct.TYPE_5__* %81, i32 %84)
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @scc_time_to_timestamp(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %111, %66
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 (i32*, i8*, i32*, ...) @sscanf(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  %108 = icmp eq i32 1, %107
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i1 [ false, %98 ], [ %108, %105 ]
  br i1 %110, label %111, label %133

111:                                              ; preds = %109
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %117, i64 %122
  store i64 %113, i64* %123, align 8
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32* %130, i32** %5, align 8
  %131 = load i64, i64* %7, align 8
  %132 = add i64 %131, 5
  store i64 %132, i64* %7, align 8
  br label %98

133:                                              ; preds = %109
  br label %134

134:                                              ; preds = %133, %62
  %135 = load i64, i64* %7, align 8
  store i64 %135, i64* %3, align 8
  br label %136

136:                                              ; preds = %134, %41, %18
  %137 = load i64, i64* %3, align 8
  ret i64 %137
}

declare dso_local i32 @sscanf(i32*, i8*, i32*, ...) #1

declare dso_local i64 @utf8_line_length(i32*) #1

declare dso_local i64 @utf8_trimmed_length(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @scc_relloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @scc_time_to_timestamp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
