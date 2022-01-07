; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_compare_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_compare_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_obj_settings = type { i64, i64, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_obj_settings*, %struct.m_obj_settings*)* @compare_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_filter(%struct.m_obj_settings* %0, %struct.m_obj_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m_obj_settings*, align 8
  %5 = alloca %struct.m_obj_settings*, align 8
  %6 = alloca i32, align 4
  store %struct.m_obj_settings* %0, %struct.m_obj_settings** %4, align 8
  store %struct.m_obj_settings* %1, %struct.m_obj_settings** %5, align 8
  %7 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %8 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %9 = icmp eq %struct.m_obj_settings* %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %12 = icmp ne %struct.m_obj_settings* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %15 = icmp ne %struct.m_obj_settings* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13, %10, %2
  %17 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %18 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %19 = icmp eq %struct.m_obj_settings* %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %171

21:                                               ; preds = %13
  %22 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %23 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %28 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %33 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %36 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %171

40:                                               ; preds = %26
  %41 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %42 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %49 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = icmp ne i32 %47, %54
  br i1 %55, label %70, label %56

56:                                               ; preds = %40
  %57 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %58 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %63 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %66 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @strcmp(i64 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %40
  store i32 0, i32* %3, align 4
  br label %171

71:                                               ; preds = %61, %56
  %72 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %73 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %76 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %171

80:                                               ; preds = %71
  %81 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %82 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %87 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %85, %80
  %93 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %94 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %99 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %97, %92
  %106 = phi i1 [ true, %92 ], [ %104, %97 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %171

108:                                              ; preds = %85
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %167, %108
  %110 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %111 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %109
  %119 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %120 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %118, %109
  %128 = phi i1 [ true, %109 ], [ %126, %118 ]
  br i1 %128, label %129, label %170

129:                                              ; preds = %127
  %130 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %131 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %129
  %139 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %140 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %138, %129
  store i32 0, i32* %3, align 4
  br label %171

148:                                              ; preds = %138
  %149 = load %struct.m_obj_settings*, %struct.m_obj_settings** %4, align 8
  %150 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %149, i32 0, i32 2
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.m_obj_settings*, %struct.m_obj_settings** %5, align 8
  %157 = getelementptr inbounds %struct.m_obj_settings, %struct.m_obj_settings* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @strcmp(i64 %155, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %171

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %109

170:                                              ; preds = %127
  store i32 1, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %165, %147, %105, %79, %70, %31, %16
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
