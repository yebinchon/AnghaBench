; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_remove_plural_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_remove_plural_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32, i32, i32 }

@s_46 = common dso_local global i32 0, align 4
@a_13 = common dso_local global i32 0, align 4
@s_47 = common dso_local global i32 0, align 4
@s_48 = common dso_local global i32 0, align 4
@s_49 = common dso_local global i32 0, align 4
@s_50 = common dso_local global i32 0, align 4
@s_51 = common dso_local global i32 0, align 4
@s_52 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_remove_plural_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_remove_plural_suffix(%struct.SN_env* %0) #0 {
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
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = load i32, i32* @s_46, align 4
  %40 = call i32 @eq_s_b(%struct.SN_env* %38, i32 18, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %1
  br label %93

43:                                               ; preds = %1
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = load i32, i32* @a_13, align 4
  %61 = call i32 @find_among_b(%struct.SN_env* %59, i32 %60, i32 6)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %43
  br label %65

64:                                               ; preds = %43
  br label %93

65:                                               ; preds = %63
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = load i32, i32* @s_47, align 4
  %87 = call i32 @slice_from_s(%struct.SN_env* %85, i32 3, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %65
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %198

92:                                               ; preds = %65
  br label %188

93:                                               ; preds = %64, %42
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = load i32, i32* @s_48, align 4
  %108 = call i32 @eq_s_b(%struct.SN_env* %106, i32 15, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %93
  br label %125

111:                                              ; preds = %93
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = load i32, i32* @s_49, align 4
  %119 = call i32 @slice_from_s(%struct.SN_env* %117, i32 6, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %2, align 4
  br label %198

124:                                              ; preds = %111
  br label %188

125:                                              ; preds = %110
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = load i32, i32* @s_50, align 4
  %140 = call i32 @eq_s_b(%struct.SN_env* %138, i32 15, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %125
  br label %157

143:                                              ; preds = %125
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = load i32, i32* @s_51, align 4
  %151 = call i32 @slice_from_s(%struct.SN_env* %149, i32 6, i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %2, align 4
  br label %198

156:                                              ; preds = %143
  br label %188

157:                                              ; preds = %142
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = load i32, i32* @s_52, align 4
  %172 = call i32 @eq_s_b(%struct.SN_env* %170, i32 9, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %198

175:                                              ; preds = %157
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %182 = call i32 @slice_del(%struct.SN_env* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %2, align 4
  br label %198

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %156, %124, %92
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 1, i32* %192, align 4
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  store i32 1, i32* %2, align 4
  br label %198

198:                                              ; preds = %188, %185, %174, %154, %122, %90
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
