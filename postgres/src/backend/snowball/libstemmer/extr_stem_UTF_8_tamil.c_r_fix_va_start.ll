; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_fix_va_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_tamil.c_r_fix_va_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

@s_0 = common dso_local global i32 0, align 4
@s_1 = common dso_local global i32 0, align 4
@s_2 = common dso_local global i32 0, align 4
@s_3 = common dso_local global i32 0, align 4
@s_4 = common dso_local global i32 0, align 4
@s_5 = common dso_local global i32 0, align 4
@s_6 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_fix_va_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_fix_va_start(%struct.SN_env* %0) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %17 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %18 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %21 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %24 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = load i32, i32* @s_0, align 4
  %28 = call i32 @eq_s(%struct.SN_env* %26, i32 6, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = load i32, i32* @s_1, align 4
  %46 = call i32 @eq_s(%struct.SN_env* %44, i32 6, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  br label %63

49:                                               ; preds = %35
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = load i32, i32* @s_2, align 4
  %57 = call i32 @slice_from_s(%struct.SN_env* %55, i32 3, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %205

62:                                               ; preds = %49
  br label %204

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = load i32, i32* @s_3, align 4
  %75 = call i32 @eq_s(%struct.SN_env* %73, i32 6, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %82

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %85 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = load i32, i32* @s_4, align 4
  %93 = call i32 @eq_s(%struct.SN_env* %91, i32 6, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %82
  br label %110

96:                                               ; preds = %82
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = load i32, i32* @s_5, align 4
  %104 = call i32 @slice_from_s(%struct.SN_env* %102, i32 3, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %205

109:                                              ; preds = %96
  br label %204

110:                                              ; preds = %95
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = load i32, i32* @s_6, align 4
  %122 = call i32 @eq_s(%struct.SN_env* %120, i32 6, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %129

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = load i32, i32* @s_7, align 4
  %140 = call i32 @eq_s(%struct.SN_env* %138, i32 6, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %129
  br label %157

143:                                              ; preds = %129
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = load i32, i32* @s_8, align 4
  %151 = call i32 @slice_from_s(%struct.SN_env* %149, i32 3, i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %2, align 4
  br label %205

156:                                              ; preds = %143
  br label %204

157:                                              ; preds = %142
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %14, align 4
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %15, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = load i32, i32* @s_9, align 4
  %169 = call i32 @eq_s(%struct.SN_env* %167, i32 6, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %157
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  br label %176

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %175, %171
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = load i32, i32* @s_10, align 4
  %187 = call i32 @eq_s(%struct.SN_env* %185, i32 6, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %205

190:                                              ; preds = %176
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %197 = load i32, i32* @s_11, align 4
  %198 = call i32 @slice_from_s(%struct.SN_env* %196, i32 3, i32 %197)
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = load i32, i32* %16, align 4
  store i32 %202, i32* %2, align 4
  br label %205

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %156, %109, %62
  store i32 1, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %201, %189, %154, %107, %60
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @eq_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
