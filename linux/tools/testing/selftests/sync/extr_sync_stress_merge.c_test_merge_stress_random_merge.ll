; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_merge.c_test_merge_stress_random_merge.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_merge.c_test_merge_stress_random_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"fence\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failure creating fence\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failure creating fence i\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Quantity of elements not matching\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failure waiting on fence until timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failure triggering fence\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_merge_stress_random_merge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 32, i32* %4, align 4
  store i32 32768, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %23 = call i32 @time(i32* null)
  %24 = call i32 @srand(i32 %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %34, %0
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = call i32 (...) @sw_sync_timeline_create()
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %19, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %25

37:                                               ; preds = %25
  %38 = getelementptr inbounds i32, i32* %19, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = call i32 @sw_sync_fence_create(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @sw_sync_fence_is_valid(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @ASSERT(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = mul nuw i64 4, %21
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %22, i32 -1, i32 %46)
  %48 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %48, align 16
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %101, %37
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = call i32 (...) @rand()
  %55 = load i32, i32* %4, align 4
  %56 = srem i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %19, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = call i32 (...) @rand()
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %22, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %22, i64 %70
  store i32 %68, i32* %71, align 4
  br label %85

72:                                               ; preds = %53
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %22, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %22, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @sw_sync_fence_create(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @sync_merge(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @sw_sync_fence_destroy(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @sw_sync_fence_destroy(i32 %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @sw_sync_fence_is_valid(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @ASSERT(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %49

104:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %105

105:                                              ; preds = %119, %104
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %22, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %2, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %105

122:                                              ; preds = %105
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @sync_fence_size(i32 %123)
  %125 = load i32, i32* %2, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %129

129:                                              ; preds = %156, %122
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %129
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %22, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %155

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @sync_wait(i32 %140, i32 0)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @ASSERT(i32 %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %19, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %22, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @sw_sync_timeline_inc(i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %139, %133
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %129

159:                                              ; preds = %129
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @sync_wait(i32 %160, i32 0)
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* %3, align 4
  %163 = icmp sgt i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @ASSERT(i32 %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @sw_sync_fence_destroy(i32 %166)
  store i32 0, i32* %1, align 4
  br label %168

168:                                              ; preds = %178, %159
  %169 = load i32, i32* %1, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load i32, i32* %1, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %19, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @sw_sync_timeline_destroy(i32 %176)
  br label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %1, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %1, align 4
  br label %168

181:                                              ; preds = %168
  %182 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %182)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @srand(i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @sw_sync_timeline_create(...) #2

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #2

declare dso_local i32 @sw_sync_fence_is_valid(i32) #2

declare dso_local i32 @ASSERT(i32, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @sync_merge(i8*, i32, i32) #2

declare dso_local i32 @sw_sync_fence_destroy(i32) #2

declare dso_local i32 @sync_fence_size(i32) #2

declare dso_local i32 @sync_wait(i32, i32) #2

declare dso_local i32 @sw_sync_timeline_inc(i32, i32) #2

declare dso_local i32 @sw_sync_timeline_destroy(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
