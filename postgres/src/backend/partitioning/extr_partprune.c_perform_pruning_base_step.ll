; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_perform_pruning_base_step.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_perform_pruning_base_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_27__*, i32, %struct.TYPE_23__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i32 }

@PARTITION_MAX_KEYS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected partition strategy: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_26__*, %struct.TYPE_25__*)* @perform_pruning_base_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @perform_pruning_base_step(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %20 = load i32, i32* @PARTITION_MAX_KEYS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @list_length(i32 %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @list_length(i32 %30)
  %32 = icmp eq i64 %27, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  store i32 0, i32* %9, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @list_head(i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @list_head(i32 %41)
  store i32* %42, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %173, %2
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %176

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @bms_is_member(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %173

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %176

67:                                               ; preds = %61, %57
  %68 = load i32*, i32** %6, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %172

70:                                               ; preds = %67
  %71 = load i32*, i32** %6, align 8
  %72 = call i32* @lfirst(i32* %71)
  store i32* %72, i32** %14, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @PruneCxtStateIdx(i32 %75, i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @partkey_datum_from_expr(%struct.TYPE_26__* %82, i32* %83, i32 %84, i32* %15, i32* %16)
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %70
  %89 = call i64 @palloc(i32 16)
  %90 = inttoptr i64 %89 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %18, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %97, %struct.TYPE_24__** %3, align 8
  store i32 1, i32* %19, align 4
  br label %237

98:                                               ; preds = %70
  %99 = load i32*, i32** %7, align 8
  %100 = call i64 @lfirst_oid(i32* %99)
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = call i32 @OidIsValid(i64 %101)
  %103 = call i32 @Assert(i32 %102)
  %104 = load i64, i64* %17, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %104, %112
  br i1 %113, label %114, label %155

114:                                              ; preds = %98
  %115 = load i64, i64* %17, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %115, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %114
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i64 %130
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i64 %136
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @fmgr_info_copy(%struct.TYPE_27__* %131, %struct.TYPE_23__* %137, i32 %140)
  br label %154

142:                                              ; preds = %114
  %143 = load i64, i64* %17, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i64 %148
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @fmgr_info_cxt(i64 %143, %struct.TYPE_27__* %149, i32 %152)
  br label %154

154:                                              ; preds = %142, %125
  br label %155

155:                                              ; preds = %154, %98
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %23, i64 %158
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %6, align 8
  %166 = call i32* @lnext(i32 %164, i32* %165)
  store i32* %166, i32** %6, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = call i32* @lnext(i32 %169, i32* %170)
  store i32* %171, i32** %7, align 8
  br label %172

172:                                              ; preds = %155, %67
  br label %173

173:                                              ; preds = %172, %56
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %43

176:                                              ; preds = %66, %43
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @PruneCxtStateIdx(i32 %179, i32 %183, i32 0)
  store i32 %184, i32* %13, align 4
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i64 %189
  store %struct.TYPE_27__* %190, %struct.TYPE_27__** %12, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  switch i32 %193, label %230 [
    i32 130, label %194
    i32 129, label %205
    i32 128, label %219
  ]

194:                                              ; preds = %176
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call %struct.TYPE_24__* @get_matching_hash_bounds(%struct.TYPE_26__* %195, i32 %198, i32* %23, i32 %199, %struct.TYPE_27__* %200, i32 %203)
  store %struct.TYPE_24__* %204, %struct.TYPE_24__** %3, align 8
  store i32 1, i32* %19, align 4
  br label %237

205:                                              ; preds = %176
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds i32, i32* %23, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i64 0
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.TYPE_24__* @get_matching_list_bounds(%struct.TYPE_26__* %206, i32 %209, i32 %211, i32 %212, %struct.TYPE_27__* %214, i32 %217)
  store %struct.TYPE_24__* %218, %struct.TYPE_24__** %3, align 8
  store i32 1, i32* %19, align 4
  br label %237

219:                                              ; preds = %176
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call %struct.TYPE_24__* @get_matching_range_bounds(%struct.TYPE_26__* %220, i32 %223, i32* %23, i32 %224, %struct.TYPE_27__* %225, i32 %228)
  store %struct.TYPE_24__* %229, %struct.TYPE_24__** %3, align 8
  store i32 1, i32* %19, align 4
  br label %237

230:                                              ; preds = %176
  %231 = load i32, i32* @ERROR, align 4
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @elog(i32 %231, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %230
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  store i32 1, i32* %19, align 4
  br label %237

237:                                              ; preds = %236, %219, %205, %194, %88
  %238 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %239
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @list_length(i32) #2

declare dso_local i32* @list_head(i32) #2

declare dso_local i64 @bms_is_member(i32, i32) #2

declare dso_local i32* @lfirst(i32*) #2

declare dso_local i32 @PruneCxtStateIdx(i32, i32, i32) #2

declare dso_local i32 @partkey_datum_from_expr(%struct.TYPE_26__*, i32*, i32, i32*, i32*) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i64 @lfirst_oid(i32*) #2

declare dso_local i32 @OidIsValid(i64) #2

declare dso_local i32 @fmgr_info_copy(%struct.TYPE_27__*, %struct.TYPE_23__*, i32) #2

declare dso_local i32 @fmgr_info_cxt(i64, %struct.TYPE_27__*, i32) #2

declare dso_local i32* @lnext(i32, i32*) #2

declare dso_local %struct.TYPE_24__* @get_matching_hash_bounds(%struct.TYPE_26__*, i32, i32*, i32, %struct.TYPE_27__*, i32) #2

declare dso_local %struct.TYPE_24__* @get_matching_list_bounds(%struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_27__*, i32) #2

declare dso_local %struct.TYPE_24__* @get_matching_range_bounds(%struct.TYPE_26__*, i32, i32*, i32, %struct.TYPE_27__*, i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
