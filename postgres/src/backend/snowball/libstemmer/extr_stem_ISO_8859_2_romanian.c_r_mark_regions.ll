; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_mark_regions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_romanian.c_r_mark_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32 }

@g_v = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_mark_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_mark_regions(%struct.SN_env* %0) #0 {
  %2 = alloca %struct.SN_env*, align 8
  %3 = alloca i32, align 4
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
  store %struct.SN_env* %0, %struct.SN_env** %2, align 8
  %15 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %16 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  %39 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %43 = load i32, i32* @g_v, align 4
  %44 = call i32 @in_grouping(%struct.SN_env* %42, i32 %43, i32 97, i32 238, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  br label %92

47:                                               ; preds = %1
  %48 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %52 = load i32, i32* @g_v, align 4
  %53 = call i32 @out_grouping(%struct.SN_env* %51, i32 %52, i32 97, i32 238, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %69

56:                                               ; preds = %47
  %57 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %58 = load i32, i32* @g_v, align 4
  %59 = call i32 @out_grouping(%struct.SN_env* %57, i32 %58, i32 97, i32 238, i32 1)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %91

69:                                               ; preds = %62, %55
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %74 = load i32, i32* @g_v, align 4
  %75 = call i32 @in_grouping(%struct.SN_env* %73, i32 %74, i32 97, i32 238, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %92

78:                                               ; preds = %69
  %79 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %80 = load i32, i32* @g_v, align 4
  %81 = call i32 @in_grouping(%struct.SN_env* %79, i32 %80, i32 97, i32 238, i32 1)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %92

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %63
  br label %147

92:                                               ; preds = %84, %77, %46
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %97 = load i32, i32* @g_v, align 4
  %98 = call i32 @out_grouping(%struct.SN_env* %96, i32 %97, i32 97, i32 238, i32 0)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %155

101:                                              ; preds = %92
  %102 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  %105 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %106 = load i32, i32* @g_v, align 4
  %107 = call i32 @out_grouping(%struct.SN_env* %105, i32 %106, i32 97, i32 238, i32 0)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %123

110:                                              ; preds = %101
  %111 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %112 = load i32, i32* @g_v, align 4
  %113 = call i32 @out_grouping(%struct.SN_env* %111, i32 %112, i32 97, i32 238, i32 1)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %123

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %146

123:                                              ; preds = %116, %109
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %128 = load i32, i32* @g_v, align 4
  %129 = call i32 @in_grouping(%struct.SN_env* %127, i32 %128, i32 97, i32 238, i32 0)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %155

132:                                              ; preds = %123
  %133 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %155

141:                                              ; preds = %132
  %142 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %117
  br label %147

147:                                              ; preds = %146, %91
  %148 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %147, %140, %131, %100
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %158 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %10, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %163 = load i32, i32* @g_v, align 4
  %164 = call i32 @out_grouping(%struct.SN_env* %162, i32 %163, i32 97, i32 238, i32 1)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %224

168:                                              ; preds = %155
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %175 = load i32, i32* @g_v, align 4
  %176 = call i32 @in_grouping(%struct.SN_env* %174, i32 %175, i32 97, i32 238, i32 1)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %224

180:                                              ; preds = %168
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %188, i32* %192, align 4
  %193 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %194 = load i32, i32* @g_v, align 4
  %195 = call i32 @out_grouping(%struct.SN_env* %193, i32 %194, i32 97, i32 238, i32 1)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %180
  br label %224

199:                                              ; preds = %180
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %206 = load i32, i32* @g_v, align 4
  %207 = call i32 @in_grouping(%struct.SN_env* %205, i32 %206, i32 97, i32 238, i32 1)
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %199
  br label %224

211:                                              ; preds = %199
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %218 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  store i32 %219, i32* %223, align 4
  br label %224

224:                                              ; preds = %211, %210, %198, %179, %167
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %227 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  ret i32 1
}

declare dso_local i32 @in_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @out_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
