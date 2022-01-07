; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_french.c_r_mark_regions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_french.c_r_mark_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32* }

@g_v = common dso_local global i32 0, align 4
@a_0 = common dso_local global i32 0, align 4
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
  store %struct.SN_env* %0, %struct.SN_env** %2, align 8
  %11 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %12 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %15 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %19 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %22 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %33 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  %35 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %39 = load i32, i32* @g_v, align 4
  %40 = call i32 @in_grouping(%struct.SN_env* %38, i32 %39, i32 97, i32 251, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %63

43:                                               ; preds = %1
  %44 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %45 = load i32, i32* @g_v, align 4
  %46 = call i32 @in_grouping(%struct.SN_env* %44, i32 %45, i32 97, i32 251, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %63

49:                                               ; preds = %43
  %50 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %140

63:                                               ; preds = %57, %48, %42
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 2
  %71 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %72 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %103, label %75

75:                                               ; preds = %63
  %76 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 5
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %103, label %88

88:                                               ; preds = %75
  %89 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 31
  %100 = ashr i32 331776, %99
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %88, %75, %63
  br label %111

104:                                              ; preds = %88
  %105 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %106 = load i32, i32* @a_0, align 4
  %107 = call i32 @find_among(%struct.SN_env* %105, i32 %106, i32 3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %111

110:                                              ; preds = %104
  br label %140

111:                                              ; preds = %109, %103
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %116 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %119 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %148

123:                                              ; preds = %111
  %124 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %129 = load i32, i32* @g_v, align 4
  %130 = call i32 @out_grouping(%struct.SN_env* %128, i32 %129, i32 97, i32 251, i32 1)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %148

134:                                              ; preds = %123
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %110, %58
  %141 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %140, %133, %122
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %6, align 4
  %155 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %156 = load i32, i32* @g_v, align 4
  %157 = call i32 @out_grouping(%struct.SN_env* %155, i32 %156, i32 97, i32 251, i32 1)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  br label %217

161:                                              ; preds = %148
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %168 = load i32, i32* @g_v, align 4
  %169 = call i32 @in_grouping(%struct.SN_env* %167, i32 %168, i32 97, i32 251, i32 1)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %217

173:                                              ; preds = %161
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 %181, i32* %185, align 4
  %186 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %187 = load i32, i32* @g_v, align 4
  %188 = call i32 @out_grouping(%struct.SN_env* %186, i32 %187, i32 97, i32 251, i32 1)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %173
  br label %217

192:                                              ; preds = %173
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %199 = load i32, i32* @g_v, align 4
  %200 = call i32 @in_grouping(%struct.SN_env* %198, i32 %199, i32 97, i32 251, i32 1)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  br label %217

204:                                              ; preds = %192
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %211 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %204, %203, %191, %172, %160
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.SN_env*, %struct.SN_env** %2, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 4
  ret i32 1
}

declare dso_local i32 @in_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @find_among(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @out_grouping(%struct.SN_env*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
