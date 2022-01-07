; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i32*, i32*, i32*, %struct.ft2_source*, %struct.ft2_source*, %struct.ft2_source*, %struct.ft2_source*, %struct.ft2_source*, %struct.ft2_source*, %struct.ft2_source**, i32* }

@num_cache_slots = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ft2_source_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft2_source_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ft2_source*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ft2_source*
  store %struct.ft2_source* %6, %struct.ft2_source** %3, align 8
  %7 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %8 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %7, i32 0, i32 10
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %13 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %12, i32 0, i32 10
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @FT_Done_Face(i32* %14)
  %16 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %17 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %16, i32 0, i32 10
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @num_cache_slots, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %25 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %24, i32 0, i32 9
  %26 = load %struct.ft2_source**, %struct.ft2_source*** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.ft2_source*, %struct.ft2_source** %26, i64 %27
  %29 = load %struct.ft2_source*, %struct.ft2_source** %28, align 8
  %30 = icmp ne %struct.ft2_source* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %33 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %32, i32 0, i32 9
  %34 = load %struct.ft2_source**, %struct.ft2_source*** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.ft2_source*, %struct.ft2_source** %34, i64 %35
  %37 = load %struct.ft2_source*, %struct.ft2_source** %36, align 8
  %38 = call i32 @bfree(%struct.ft2_source* %37)
  %39 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %40 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %39, i32 0, i32 9
  %41 = load %struct.ft2_source**, %struct.ft2_source*** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.ft2_source*, %struct.ft2_source** %41, i64 %42
  store %struct.ft2_source* null, %struct.ft2_source** %43, align 8
  br label %44

44:                                               ; preds = %31, %23
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %50 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %49, i32 0, i32 8
  %51 = load %struct.ft2_source*, %struct.ft2_source** %50, align 8
  %52 = icmp ne %struct.ft2_source* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %55 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %54, i32 0, i32 8
  %56 = load %struct.ft2_source*, %struct.ft2_source** %55, align 8
  %57 = call i32 @bfree(%struct.ft2_source* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %60 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %59, i32 0, i32 7
  %61 = load %struct.ft2_source*, %struct.ft2_source** %60, align 8
  %62 = icmp ne %struct.ft2_source* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %65 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %64, i32 0, i32 7
  %66 = load %struct.ft2_source*, %struct.ft2_source** %65, align 8
  %67 = call i32 @bfree(%struct.ft2_source* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %70 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %69, i32 0, i32 6
  %71 = load %struct.ft2_source*, %struct.ft2_source** %70, align 8
  %72 = icmp ne %struct.ft2_source* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %75 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %74, i32 0, i32 6
  %76 = load %struct.ft2_source*, %struct.ft2_source** %75, align 8
  %77 = call i32 @bfree(%struct.ft2_source* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %80 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %79, i32 0, i32 5
  %81 = load %struct.ft2_source*, %struct.ft2_source** %80, align 8
  %82 = icmp ne %struct.ft2_source* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %85 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %84, i32 0, i32 5
  %86 = load %struct.ft2_source*, %struct.ft2_source** %85, align 8
  %87 = call i32 @bfree(%struct.ft2_source* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %90 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %89, i32 0, i32 4
  %91 = load %struct.ft2_source*, %struct.ft2_source** %90, align 8
  %92 = icmp ne %struct.ft2_source* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %95 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %94, i32 0, i32 4
  %96 = load %struct.ft2_source*, %struct.ft2_source** %95, align 8
  %97 = call i32 @bfree(%struct.ft2_source* %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %100 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %99, i32 0, i32 3
  %101 = load %struct.ft2_source*, %struct.ft2_source** %100, align 8
  %102 = icmp ne %struct.ft2_source* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %105 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %104, i32 0, i32 3
  %106 = load %struct.ft2_source*, %struct.ft2_source** %105, align 8
  %107 = call i32 @bfree(%struct.ft2_source* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = call i32 (...) @obs_enter_graphics()
  %110 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %111 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %116 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @gs_texture_destroy(i32* %117)
  %119 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %120 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %119, i32 0, i32 2
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %114, %108
  %122 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %123 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %128 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @gs_vertexbuffer_destroy(i32* %129)
  %131 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %132 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %135 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %140 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @gs_effect_destroy(i32* %141)
  %143 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %144 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %138, %133
  %146 = call i32 (...) @obs_leave_graphics()
  %147 = load %struct.ft2_source*, %struct.ft2_source** %3, align 8
  %148 = call i32 @bfree(%struct.ft2_source* %147)
  ret void
}

declare dso_local i32 @FT_Done_Face(i32*) #1

declare dso_local i32 @bfree(%struct.ft2_source*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32*) #1

declare dso_local i32 @gs_vertexbuffer_destroy(i32*) #1

declare dso_local i32 @gs_effect_destroy(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
