; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_update_options.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_update_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_data = type { %struct.TYPE_4__*, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.m_config_group* }
%struct.m_config_group = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.m_option* }
%struct.m_option = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.m_group_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_config_data*, %struct.m_config_data*)* @update_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_options(%struct.m_config_data* %0, %struct.m_config_data* %1) #0 {
  %3 = alloca %struct.m_config_data*, align 8
  %4 = alloca %struct.m_config_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.m_config_group*, align 8
  %10 = alloca %struct.m_option*, align 8
  %11 = alloca %struct.m_group_data*, align 8
  %12 = alloca %struct.m_group_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_option*, align 8
  store %struct.m_config_data* %0, %struct.m_config_data** %3, align 8
  store %struct.m_config_data* %1, %struct.m_config_data** %4, align 8
  %15 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %16 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %19 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i32 0, i32* %5, align 4
  %24 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %25 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %28 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %30 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %33 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @MPMAX(i64 %31, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %37 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %40 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %44 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %47 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @MPMIN(i64 %42, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %56 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %54, %59
  br label %61

61:                                               ; preds = %53, %2
  %62 = phi i1 [ false, %2 ], [ %60, %53 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %164, %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %167

70:                                               ; preds = %66
  %71 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %72 = getelementptr inbounds %struct.m_config_data, %struct.m_config_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.m_config_group*, %struct.m_config_group** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %75, i64 %77
  store %struct.m_config_group* %78, %struct.m_config_group** %9, align 8
  %79 = load %struct.m_config_group*, %struct.m_config_group** %9, align 8
  %80 = getelementptr inbounds %struct.m_config_group, %struct.m_config_group* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.m_option*, %struct.m_option** %82, align 8
  store %struct.m_option* %83, %struct.m_option** %10, align 8
  %84 = load %struct.m_config_data*, %struct.m_config_data** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.m_group_data* @m_config_gdata(%struct.m_config_data* %84, i32 %85)
  store %struct.m_group_data* %86, %struct.m_group_data** %11, align 8
  %87 = load %struct.m_config_data*, %struct.m_config_data** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.m_group_data* @m_config_gdata(%struct.m_config_data* %87, i32 %88)
  store %struct.m_group_data* %89, %struct.m_group_data** %12, align 8
  %90 = load %struct.m_group_data*, %struct.m_group_data** %11, align 8
  %91 = icmp ne %struct.m_group_data* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %70
  %93 = load %struct.m_group_data*, %struct.m_group_data** %12, align 8
  %94 = icmp ne %struct.m_group_data* %93, null
  br label %95

95:                                               ; preds = %92, %70
  %96 = phi i1 [ false, %70 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.m_group_data*, %struct.m_group_data** %12, align 8
  %100 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.m_group_data*, %struct.m_group_data** %11, align 8
  %103 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %164

107:                                              ; preds = %95
  %108 = load %struct.m_group_data*, %struct.m_group_data** %11, align 8
  %109 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.m_group_data*, %struct.m_group_data** %12, align 8
  %112 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %160, %107
  %114 = load %struct.m_option*, %struct.m_option** %10, align 8
  %115 = icmp ne %struct.m_option* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.m_option*, %struct.m_option** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.m_option, %struct.m_option* %117, i64 %119
  %121 = getelementptr inbounds %struct.m_option, %struct.m_option* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %116, %113
  %125 = phi i1 [ false, %113 ], [ %123, %116 ]
  br i1 %125, label %126, label %163

126:                                              ; preds = %124
  %127 = load %struct.m_option*, %struct.m_option** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.m_option, %struct.m_option* %127, i64 %129
  store %struct.m_option* %130, %struct.m_option** %14, align 8
  %131 = load %struct.m_option*, %struct.m_option** %14, align 8
  %132 = getelementptr inbounds %struct.m_option, %struct.m_option* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %126
  %136 = load %struct.m_option*, %struct.m_option** %14, align 8
  %137 = getelementptr inbounds %struct.m_option, %struct.m_option* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %135
  %143 = load %struct.m_option*, %struct.m_option** %14, align 8
  %144 = load %struct.m_group_data*, %struct.m_group_data** %12, align 8
  %145 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.m_option*, %struct.m_option** %14, align 8
  %148 = getelementptr inbounds %struct.m_option, %struct.m_option* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = load %struct.m_group_data*, %struct.m_group_data** %11, align 8
  %152 = getelementptr inbounds %struct.m_group_data, %struct.m_group_data* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.m_option*, %struct.m_option** %14, align 8
  %155 = getelementptr inbounds %struct.m_option, %struct.m_option* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = call i32 @m_option_copy(%struct.m_option* %143, i64 %150, i64 %157)
  br label %159

159:                                              ; preds = %142, %135, %126
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %113

163:                                              ; preds = %124
  br label %164

164:                                              ; preds = %163, %106
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %66

167:                                              ; preds = %66
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MPMAX(i64, i64) #1

declare dso_local i32 @MPMIN(i64, i64) #1

declare dso_local %struct.m_group_data* @m_config_gdata(%struct.m_config_data*, i32) #1

declare dso_local i32 @m_option_copy(%struct.m_option*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
