; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_load_cached_font_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_load_cached_font_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.font_path_info* }
%struct.font_path_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serializer = type { i32 }

@font_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serializer*)* @load_cached_font_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_cached_font_list(%struct.serializer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serializer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.font_path_info*, align 8
  store %struct.serializer* %0, %struct.serializer** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load %struct.serializer*, %struct.serializer** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @read_var(%struct.serializer* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %141

14:                                               ; preds = %1
  %15 = load %struct.font_path_info*, %struct.font_path_info** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @font_list, i32 0, i32 0), align 8
  %16 = call i32 @da_init(%struct.font_path_info* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.font_path_info*, %struct.font_path_info** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @font_list, i32 0, i32 0), align 8
  %19 = call i32 @da_resize(%struct.font_path_info* %18, i32 %17)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %132, %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %135

24:                                               ; preds = %20
  %25 = load %struct.font_path_info*, %struct.font_path_info** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @font_list, i32 0, i32 0), align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %25, i64 %27
  store %struct.font_path_info* %28, %struct.font_path_info** %7, align 8
  %29 = load %struct.serializer*, %struct.serializer** %3, align 8
  %30 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %31 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %30, i32 0, i32 9
  %32 = call i32 @read_str(%struct.serializer* %29, i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %135

36:                                               ; preds = %24
  %37 = load %struct.serializer*, %struct.serializer** %3, align 8
  %38 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %39 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @read_var(%struct.serializer* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %135

45:                                               ; preds = %36
  %46 = load %struct.serializer*, %struct.serializer** %3, align 8
  %47 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %48 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @read_var(%struct.serializer* %46, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %135

54:                                               ; preds = %45
  %55 = load %struct.serializer*, %struct.serializer** %3, align 8
  %56 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %57 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @read_var(%struct.serializer* %55, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %135

63:                                               ; preds = %54
  %64 = load %struct.serializer*, %struct.serializer** %3, align 8
  %65 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %66 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @read_var(%struct.serializer* %64, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %135

72:                                               ; preds = %63
  %73 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %74 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @bmalloc(i32 %78)
  %80 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %81 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.serializer*, %struct.serializer** %3, align 8
  %83 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %84 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %87 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @read_data(%struct.serializer* %82, i32 %85, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %72
  br label %135

96:                                               ; preds = %72
  %97 = load %struct.serializer*, %struct.serializer** %3, align 8
  %98 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %99 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @read_var(%struct.serializer* %97, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %135

105:                                              ; preds = %96
  %106 = load %struct.serializer*, %struct.serializer** %3, align 8
  %107 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %108 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %107, i32 0, i32 7
  %109 = call i32 @read_str(%struct.serializer* %106, i32* %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %135

113:                                              ; preds = %105
  %114 = load %struct.serializer*, %struct.serializer** %3, align 8
  %115 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %116 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @read_var(%struct.serializer* %114, i32 %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  br label %135

122:                                              ; preds = %113
  %123 = load %struct.serializer*, %struct.serializer** %3, align 8
  %124 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %125 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @read_var(%struct.serializer* %123, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %135

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %20

135:                                              ; preds = %130, %121, %112, %104, %95, %71, %62, %53, %44, %35, %20
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (...) @free_os_font_list()
  store i32 0, i32* %2, align 4
  br label %141

140:                                              ; preds = %135
  store i32 1, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %138, %13
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @read_var(%struct.serializer*, i32) #1

declare dso_local i32 @da_init(%struct.font_path_info*) #1

declare dso_local i32 @da_resize(%struct.font_path_info*, i32) #1

declare dso_local i32 @read_str(%struct.serializer*, i32*) #1

declare dso_local i32 @bmalloc(i32) #1

declare dso_local i32 @read_data(%struct.serializer*, i32, i32) #1

declare dso_local i32 @free_os_font_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
