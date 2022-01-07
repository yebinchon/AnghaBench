; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeX86_common.c_generate_near_jump_code.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeX86_common.c_generate_near_jump_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_jump = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@JUMP_LABEL = common dso_local global i32 0, align 4
@SLJIT_JUMP = common dso_local global i64 0, align 8
@JMP_i8 = common dso_local global i32 0, align 4
@JMP_i32 = common dso_local global i32 0, align 4
@SLJIT_FAST_CALL = common dso_local global i64 0, align 8
@CALL_i32 = common dso_local global i32 0, align 4
@GROUP_0F = common dso_local global i64 0, align 8
@PATCH_MB = common dso_local global i32 0, align 4
@PATCH_MW = common dso_local global i32 0, align 4
@HALFWORD_MAX = common dso_local global i32 0, align 4
@HALFWORD_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sljit_jump*, i32*, i32*, i64, i32)* @generate_near_jump_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_near_jump_code(%struct.sljit_jump* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sljit_jump*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sljit_jump* %0, %struct.sljit_jump** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %14 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @JUMP_LABEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %22 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %20, i64 %27
  %29 = ptrtoint i32* %28 to i32
  store i32 %29, i32* %12, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %32 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %30, %19
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %40 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 2
  %43 = sub nsw i32 %38, %42
  %44 = icmp sge i32 %43, -128
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %48 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 2
  %51 = sub nsw i32 %46, %50
  %52 = icmp sle i32 %51, 127
  br label %53

53:                                               ; preds = %45, %37
  %54 = phi i1 [ false, %37 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @SLJIT_JUMP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @JMP_i8, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @JMP_i32, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %73 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %118

76:                                               ; preds = %53
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @SLJIT_FAST_CALL, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  store i64 0, i64* %11, align 8
  %81 = load i32, i32* @CALL_i32, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %84 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %85 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %117

88:                                               ; preds = %76
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i64, i64* %9, align 8
  %93 = call i8* @get_jump_code(i64 %92)
  %94 = getelementptr i8, i8* %93, i64 -16
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  %98 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %99 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %116

102:                                              ; preds = %88
  %103 = load i64, i64* @GROUP_0F, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i64, i64* %9, align 8
  %108 = call i8* @get_jump_code(i64 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  %112 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %113 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %102, %91
  br label %117

117:                                              ; preds = %116, %80
  br label %118

118:                                              ; preds = %117, %71
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i32, i32* @PATCH_MB, align 4
  %123 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %124 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32* %128, i32** %7, align 8
  br label %137

129:                                              ; preds = %118
  %130 = load i32, i32* @PATCH_MW, align 4
  %131 = load %struct.sljit_jump*, %struct.sljit_jump** %6, align 8
  %132 = getelementptr inbounds %struct.sljit_jump, %struct.sljit_jump* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  store i32* %136, i32** %7, align 8
  br label %137

137:                                              ; preds = %129, %121
  %138 = load i32*, i32** %7, align 8
  ret i32* %138
}

declare dso_local i8* @get_jump_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
