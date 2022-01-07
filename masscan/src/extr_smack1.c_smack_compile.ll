; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_compile.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32, i64, %struct.SmackPattern**, i64, i32*, i64, i64 }
%struct.SmackPattern = type { i64, i64, i64 }

@CHAR_ANCHOR_START = common dso_local global i32 0, align 4
@CHAR_ANCHOR_END = common dso_local global i32 0, align 4
@BASE_STATE = common dso_local global i32 0, align 4
@UNANCHORED_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smack_compile(%struct.SMACK* %0) #0 {
  %2 = alloca %struct.SMACK*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.SmackPattern*, align 8
  store %struct.SMACK* %0, %struct.SMACK** %2, align 8
  %5 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %6 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %11 = load i32, i32* @CHAR_ANCHOR_START, align 4
  %12 = call i32 @smack_add_symbol(%struct.SMACK* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %15 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %20 = load i32, i32* @CHAR_ANCHOR_END, align 4
  %21 = call i32 @smack_add_symbol(%struct.SMACK* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %24 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  store i32 65, i32* %3, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp ule i32 %29, 90
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %33 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @tolower(i32 %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %40 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %28

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %51 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %94, %49
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %55 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp ult i32 %53, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %52
  %60 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %61 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %60, i32 0, i32 2
  %62 = load %struct.SmackPattern**, %struct.SmackPattern*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.SmackPattern*, %struct.SmackPattern** %62, i64 %64
  %66 = load %struct.SmackPattern*, %struct.SmackPattern** %65, align 8
  store %struct.SmackPattern* %66, %struct.SmackPattern** %4, align 8
  %67 = load %struct.SmackPattern*, %struct.SmackPattern** %4, align 8
  %68 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %71 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load %struct.SmackPattern*, %struct.SmackPattern** %4, align 8
  %77 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %80 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = load %struct.SmackPattern*, %struct.SmackPattern** %4, align 8
  %86 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %89 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  br label %94

94:                                               ; preds = %59
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %52

97:                                               ; preds = %52
  %98 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %99 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %100 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @create_intermediate_table(%struct.SMACK* %98, i32 %101)
  %103 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %104 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %105 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @create_matches_table(%struct.SMACK* %103, i32 %106)
  %108 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %109 = call i32 @smack_stage0_compile_prefixes(%struct.SMACK* %108)
  %110 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %111 = call i32 @smack_stage1_generate_fails(%struct.SMACK* %110)
  %112 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %113 = call i32 @smack_stage2_link_fails(%struct.SMACK* %112)
  %114 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %115 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %97
  %119 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %120 = load i32, i32* @BASE_STATE, align 4
  %121 = load i32, i32* @UNANCHORED_STATE, align 4
  %122 = call i32 @swap_rows(%struct.SMACK* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %97
  %124 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %125 = call i32 @smack_stage3_sort(%struct.SMACK* %124)
  %126 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %127 = call i32 @smack_stage4_make_final_table(%struct.SMACK* %126)
  %128 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %129 = call i32 @smack_fixup_wildcards(%struct.SMACK* %128)
  %130 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %131 = call i32 @destroy_pattern_table(%struct.SMACK* %130)
  %132 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %133 = call i32 @destroy_intermediate_table(%struct.SMACK* %132)
  ret void
}

declare dso_local i32 @smack_add_symbol(%struct.SMACK*, i32) #1

declare dso_local i64 @tolower(i32) #1

declare dso_local i32 @create_intermediate_table(%struct.SMACK*, i32) #1

declare dso_local i32 @create_matches_table(%struct.SMACK*, i32) #1

declare dso_local i32 @smack_stage0_compile_prefixes(%struct.SMACK*) #1

declare dso_local i32 @smack_stage1_generate_fails(%struct.SMACK*) #1

declare dso_local i32 @smack_stage2_link_fails(%struct.SMACK*) #1

declare dso_local i32 @swap_rows(%struct.SMACK*, i32, i32) #1

declare dso_local i32 @smack_stage3_sort(%struct.SMACK*) #1

declare dso_local i32 @smack_stage4_make_final_table(%struct.SMACK*) #1

declare dso_local i32 @smack_fixup_wildcards(%struct.SMACK*) #1

declare dso_local i32 @destroy_pattern_table(%struct.SMACK*) #1

declare dso_local i32 @destroy_intermediate_table(%struct.SMACK*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
