; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_range_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_range_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseTypedefData = type { i32* }
%struct.pts_range_value = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ParseTypedefData*, %struct.pts_range_value*)* @stabs_pts_read_range_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_pts_read_range_value(%struct.ParseTypedefData* %0, %struct.pts_range_value* %1) #0 {
  %3 = alloca %struct.ParseTypedefData*, align 8
  %4 = alloca %struct.pts_range_value*, align 8
  %5 = alloca i8*, align 8
  store %struct.ParseTypedefData* %0, %struct.ParseTypedefData** %3, align 8
  store %struct.pts_range_value* %1, %struct.pts_range_value** %4, align 8
  %6 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %7 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %130 [
    i32 48, label %10
    i32 45, label %113
    i32 43, label %129
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %17, %10
  %12 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %13 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %19 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %19, align 8
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %24 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 49
  br i1 %27, label %28, label %109

28:                                               ; preds = %22
  %29 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %30 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 55
  br i1 %33, label %34, label %109

34:                                               ; preds = %28
  %35 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %36 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %105 [
    i32 48, label %40
    i32 55, label %77
  ]

40:                                               ; preds = %34
  %41 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %42 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %43 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 49
  %48 = zext i1 %47 to i32
  %49 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %41, i32 %48)
  %50 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %51 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 4
  %52 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %53 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %62, %40
  %55 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %56 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 @isdigit(i8 signext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %64 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 3
  %67 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %68 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %68, align 8
  %71 = load i32, i32* %69, align 4
  %72 = add nsw i32 %66, %71
  %73 = sub nsw i32 %72, 48
  %74 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %75 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %54

76:                                               ; preds = %54
  br label %108

77:                                               ; preds = %34
  %78 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %79 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %81 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %90, %77
  %83 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %84 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i8
  %88 = call i32 @isdigit(i8 signext %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %82
  %91 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %92 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 3
  %95 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %96 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %96, align 8
  %99 = load i32, i32* %97, align 4
  %100 = add nsw i32 %94, %99
  %101 = sub nsw i32 %100, 48
  %102 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %103 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %82

104:                                              ; preds = %82
  br label %108

105:                                              ; preds = %34
  %106 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %107 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %106, i32 1)
  br label %108

108:                                              ; preds = %105, %104, %76
  br label %112

109:                                              ; preds = %28, %22
  %110 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %111 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %108
  br label %145

113:                                              ; preds = %2
  %114 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %115 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 4
  %116 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %117 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %117, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = call i8* @strtoull(i8* %120, i8** %5, i32 10)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %124 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i8*, i8** %5, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %128 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %127, i32 0, i32 0
  store i32* %126, i32** %128, align 8
  br label %145

129:                                              ; preds = %2
  br label %130

130:                                              ; preds = %2, %129
  %131 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %132 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %131, i32 0, i32 0
  store i32 1, i32* %132, align 4
  %133 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %134 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = bitcast i32* %135 to i8*
  %137 = call i8* @strtoull(i8* %136, i8** %5, i32 10)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.pts_range_value*, %struct.pts_range_value** %4, align 8
  %140 = getelementptr inbounds %struct.pts_range_value, %struct.pts_range_value* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %144 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %143, i32 0, i32 0
  store i32* %142, i32** %144, align 8
  br label %145

145:                                              ; preds = %130, %113, %112
  ret i32 0
}

declare dso_local i32 @PTS_ABORTIF(%struct.ParseTypedefData*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
