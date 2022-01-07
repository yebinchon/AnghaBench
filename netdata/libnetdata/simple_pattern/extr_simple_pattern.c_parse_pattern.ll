; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_parse_pattern.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_parse_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_pattern = type { i8*, %struct.simple_pattern*, i8*, i8* }

@SIMPLE_PATTERN_SUBSTRING = common dso_local global i8* null, align 8
@SIMPLE_PATTERN_SUFFIX = common dso_local global i8* null, align 8
@SIMPLE_PATTERN_PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.simple_pattern* (i8*, i8*)* @parse_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.simple_pattern* @parse_pattern(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.simple_pattern*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.simple_pattern*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.simple_pattern* null, %struct.simple_pattern** %6, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %18, %2
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 42
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  br label %13

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 42
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  br label %22

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 42
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call %struct.simple_pattern* @parse_pattern(i8* %49, i8* %50)
  store %struct.simple_pattern* %51, %struct.simple_pattern** %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %48, %42, %37
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @strlen(i8* %55)
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp uge i64 %58, 2
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 42
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 42
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** @SIMPLE_PATTERN_SUBSTRING, align 8
  store i8* %80, i8** %5, align 8
  br label %114

81:                                               ; preds = %65, %60, %54
  %82 = load i64, i64* %9, align 8
  %83 = icmp uge i64 %82, 1
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 42
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  %92 = load i8*, i8** @SIMPLE_PATTERN_SUFFIX, align 8
  store i8* %92, i8** %5, align 8
  br label %113

93:                                               ; preds = %84, %81
  %94 = load i64, i64* %9, align 8
  %95 = icmp uge i64 %94, 1
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 42
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* %9, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** @SIMPLE_PATTERN_PREFIX, align 8
  store i8* %109, i8** %5, align 8
  br label %112

110:                                              ; preds = %96, %93
  %111 = load i8*, i8** %4, align 8
  store i8* %111, i8** %5, align 8
  br label %112

112:                                              ; preds = %110, %104
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %73
  %115 = call %struct.simple_pattern* @callocz(i32 1, i32 32)
  store %struct.simple_pattern* %115, %struct.simple_pattern** %10, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load i8*, i8** %7, align 8
  %121 = call i8* @strdupz(i8* %120)
  %122 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  %123 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  %125 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @strlen(i8* %126)
  %128 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  %129 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  %132 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %137

133:                                              ; preds = %114
  %134 = load i8*, i8** @SIMPLE_PATTERN_SUBSTRING, align 8
  %135 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  %136 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %133, %119
  %138 = load %struct.simple_pattern*, %struct.simple_pattern** %6, align 8
  %139 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  %140 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %139, i32 0, i32 1
  store %struct.simple_pattern* %138, %struct.simple_pattern** %140, align 8
  %141 = load %struct.simple_pattern*, %struct.simple_pattern** %10, align 8
  ret %struct.simple_pattern* %141
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local %struct.simple_pattern* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
