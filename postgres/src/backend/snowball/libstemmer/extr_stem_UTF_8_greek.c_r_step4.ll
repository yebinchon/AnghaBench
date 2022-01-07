; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step4.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_greek.c_r_step4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i64*, i32, i64* }

@a_38 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
@s_70 = common dso_local global i32 0, align 4
@a_39 = common dso_local global i32 0, align 4
@s_71 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_step4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_step4(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %12 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %13 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = load i32, i32* @a_38, align 4
  %19 = call i32 @find_among_b(%struct.SN_env* %17, i32 %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %201

22:                                               ; preds = %1
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = call i32 @slice_del(%struct.SN_env* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %201

34:                                               ; preds = %22
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = load i32, i32* @g_v, align 4
  %54 = call i64 @in_grouping_b_U(%struct.SN_env* %52, i32 %53, i32 945, i32 969, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %115

57:                                               ; preds = %34
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @slice_to(%struct.SN_env* %63, i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %201

82:                                               ; preds = %57
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = load i32, i32* @s_70, align 4
  %85 = call i32 @slice_from_s(%struct.SN_env* %83, i32 4, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %201

90:                                               ; preds = %82
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @insert_v(%struct.SN_env* %94, i32 %97, i32 %100, i64 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %201

114:                                              ; preds = %90
  br label %128

115:                                              ; preds = %56
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %122 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %115, %114
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = load i32, i32* @a_39, align 4
  %131 = call i32 @find_among_b(%struct.SN_env* %129, i32 %130, i32 36)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %201

134:                                              ; preds = %128
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %201

148:                                              ; preds = %134
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 4
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @slice_to(%struct.SN_env* %149, i64 %154)
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  store i64 %156, i64* %160, align 8
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 4
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %148
  store i32 -1, i32* %2, align 4
  br label %201

168:                                              ; preds = %148
  %169 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %170 = load i32, i32* @s_71, align 4
  %171 = call i32 @slice_from_s(%struct.SN_env* %169, i32 4, i32 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %2, align 4
  br label %201

176:                                              ; preds = %168
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %11, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 4
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @insert_v(%struct.SN_env* %180, i32 %183, i32 %186, i64 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %176
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %2, align 4
  br label %201

200:                                              ; preds = %176
  store i32 1, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %198, %174, %167, %147, %133, %112, %88, %81, %32, %21
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i64 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i8* @slice_to(%struct.SN_env*, i64) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @insert_v(%struct.SN_env*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
