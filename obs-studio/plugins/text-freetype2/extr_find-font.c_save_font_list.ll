; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_save_font_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_save_font_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.font_path_info* }
%struct.font_path_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serializer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"font_data.bin\00", align 1
@font_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@font_cache_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_font_list() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.serializer, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.font_path_info*, align 8
  %8 = call i8* @obs_module_config_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %1, align 8
  %9 = call i32 (...) @get_font_checksum()
  store i32 %9, i32* %2, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @font_list, i32 0, i32 0), align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @file_output_serializer_init_safe(%struct.serializer* %4, i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 @bfree(i8* %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %141

23:                                               ; preds = %17
  %24 = load i32, i32* @font_cache_ver, align 4
  %25 = call i32 @write_var(%struct.serializer* %4, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %141

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @write_var(%struct.serializer* %4, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %141

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @write_var(%struct.serializer* %4, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %141

41:                                               ; preds = %35
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %136, %41
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @font_list, i32 0, i32 0), align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %139

46:                                               ; preds = %42
  %47 = load %struct.font_path_info*, %struct.font_path_info** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @font_list, i32 0, i32 1), align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %47, i64 %48
  store %struct.font_path_info* %49, %struct.font_path_info** %7, align 8
  %50 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %51 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @write_str(%struct.serializer* %4, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %139

57:                                               ; preds = %46
  %58 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %59 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @write_var(%struct.serializer* %4, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %139

65:                                               ; preds = %57
  %66 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %67 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write_var(%struct.serializer* %4, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %139

73:                                               ; preds = %65
  %74 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %75 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @write_var(%struct.serializer* %4, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %139

81:                                               ; preds = %73
  %82 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %83 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @write_var(%struct.serializer* %4, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %139

89:                                               ; preds = %81
  %90 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %91 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %94 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @write_data(%struct.serializer* %4, i32 %92, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %89
  br label %139

103:                                              ; preds = %89
  %104 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %105 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @write_var(%struct.serializer* %4, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %139

111:                                              ; preds = %103
  %112 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %113 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @write_str(%struct.serializer* %4, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  br label %139

119:                                              ; preds = %111
  %120 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %121 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @write_var(%struct.serializer* %4, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %139

127:                                              ; preds = %119
  %128 = load %struct.font_path_info*, %struct.font_path_info** %7, align 8
  %129 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @write_var(%struct.serializer* %4, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %139

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %6, align 8
  br label %42

139:                                              ; preds = %134, %126, %118, %110, %102, %88, %80, %72, %64, %56, %42
  %140 = call i32 @file_output_serializer_free(%struct.serializer* %4)
  br label %141

141:                                              ; preds = %139, %40, %34, %28, %22
  ret void
}

declare dso_local i8* @obs_module_config_path(i8*) #1

declare dso_local i32 @get_font_checksum(...) #1

declare dso_local i32 @file_output_serializer_init_safe(%struct.serializer*, i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @write_var(%struct.serializer*, i32) #1

declare dso_local i32 @write_str(%struct.serializer*, i32) #1

declare dso_local i32 @write_data(%struct.serializer*, i32, i32) #1

declare dso_local i32 @file_output_serializer_free(%struct.serializer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
