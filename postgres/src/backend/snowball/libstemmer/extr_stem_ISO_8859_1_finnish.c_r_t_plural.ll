; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_t_plural.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_finnish.c_r_t_plural.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32*, i32, i32, i8*, i32, i32 }

@g_V1 = common dso_local global i32 0, align 4
@a_9 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_t_plural to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_t_plural(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %11 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %206

21:                                               ; preds = %1
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %21
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 116
  br i1 %56, label %57, label %61

57:                                               ; preds = %44, %21
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %206

61:                                               ; preds = %44
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  store i32 %77, i32* %6, align 4
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @g_V1, align 4
  %80 = call i64 @in_grouping_b(%struct.SN_env* %78, i32 %79, i32 97, i32 246, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %61
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %2, align 4
  br label %206

86:                                               ; preds = %61
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = call i32 @slice_del(%struct.SN_env* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %206

100:                                              ; preds = %86
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %108 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %206

114:                                              ; preds = %100
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %8, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 2
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp sle i32 %133, %136
  br i1 %137, label %151, label %138

138:                                              ; preds = %114
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %141, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 97
  br i1 %150, label %151, label %155

151:                                              ; preds = %138, %114
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %2, align 4
  br label %206

155:                                              ; preds = %138
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = load i32, i32* @a_9, align 4
  %158 = call i32 @find_among_b(%struct.SN_env* %156, i32 %157, i32 2)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %2, align 4
  br label %206

165:                                              ; preds = %155
  %166 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %167 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %4, align 4
  switch i32 %174, label %198 [
    i32 1, label %175
  ]

175:                                              ; preds = %165
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = load i32, i32* @s_4, align 4
  %186 = call i32 @eq_s_b(%struct.SN_env* %184, i32 2, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %175
  br label %190

189:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %206

190:                                              ; preds = %188
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %165, %190
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = call i32 @slice_del(%struct.SN_env* %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %2, align 4
  br label %206

205:                                              ; preds = %198
  store i32 1, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %203, %189, %161, %151, %113, %98, %82, %57, %20
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i64 @in_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
