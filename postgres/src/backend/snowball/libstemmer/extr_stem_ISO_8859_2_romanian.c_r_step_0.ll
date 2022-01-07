; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_step_0.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_step_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32 }

@a_1 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step_0(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %20 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %55, label %27

27:                                               ; preds = %1
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 5
  %39 = icmp ne i32 %38, 3
  br i1 %39, label %55, label %40

40:                                               ; preds = %27
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 31
  %52 = ashr i32 266786, %51
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %40, %27, %1
  store i32 0, i32* %2, align 4
  br label %162

56:                                               ; preds = %40
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = load i32, i32* @a_1, align 4
  %59 = call i32 @find_among_b(%struct.SN_env* %57, i32 %58, i32 16)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %162

63:                                               ; preds = %56
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = call i32 @r_R1(%struct.SN_env* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %162

75:                                               ; preds = %63
  %76 = load i32, i32* %4, align 4
  switch i32 %76, label %161 [
    i32 1, label %77
    i32 2, label %85
    i32 3, label %94
    i32 4, label %103
    i32 5, label %112
    i32 6, label %143
    i32 7, label %152
  ]

77:                                               ; preds = %75
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = call i32 @slice_del(%struct.SN_env* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %162

84:                                               ; preds = %77
  br label %161

85:                                               ; preds = %75
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = load i32, i32* @s_4, align 4
  %88 = call i32 @slice_from_s(%struct.SN_env* %86, i32 1, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %162

93:                                               ; preds = %85
  br label %161

94:                                               ; preds = %75
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = load i32, i32* @s_5, align 4
  %97 = call i32 @slice_from_s(%struct.SN_env* %95, i32 1, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %162

102:                                              ; preds = %94
  br label %161

103:                                              ; preds = %75
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = load i32, i32* @s_6, align 4
  %106 = call i32 @slice_from_s(%struct.SN_env* %104, i32 1, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %162

111:                                              ; preds = %103
  br label %161

112:                                              ; preds = %75
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = load i32, i32* @s_7, align 4
  %123 = call i32 @eq_s_b(%struct.SN_env* %121, i32 2, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %112
  br label %127

126:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %162

127:                                              ; preds = %125
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = load i32, i32* @s_8, align 4
  %137 = call i32 @slice_from_s(%struct.SN_env* %135, i32 1, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %162

142:                                              ; preds = %127
  br label %161

143:                                              ; preds = %75
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = load i32, i32* @s_9, align 4
  %146 = call i32 @slice_from_s(%struct.SN_env* %144, i32 2, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %162

151:                                              ; preds = %143
  br label %161

152:                                              ; preds = %75
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = load i32, i32* @s_10, align 4
  %155 = call i32 @slice_from_s(%struct.SN_env* %153, i32 3, i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %2, align 4
  br label %162

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %75, %160, %151, %142, %111, %102, %93, %84
  store i32 1, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %158, %149, %140, %126, %109, %100, %91, %82, %73, %62, %55
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
