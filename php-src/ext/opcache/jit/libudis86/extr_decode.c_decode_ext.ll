; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_ext.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.ud = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }

@ud_lookup_table_list = common dso_local global %struct.TYPE_2__* null, align 8
@UD_TAB__OPC_3DNOW = common dso_local global i32 0, align 4
@UD_VENDOR_ANY = common dso_local global i32 0, align 4
@UD_VENDOR_AMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"not reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*, i32)* @decode_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ext(%struct.ud* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ud*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ud* %0, %struct.ud** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ud*, %struct.ud** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @decode_insn(%struct.ud* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %149

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ud_lookup_table_list, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 -32769, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = load %struct.ud*, %struct.ud** %4, align 8
  %21 = getelementptr inbounds %struct.ud, %struct.ud* %20, i32 0, i32 1
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.ud*, %struct.ud** %4, align 8
  %23 = getelementptr inbounds %struct.ud, %struct.ud* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UD_TAB__OPC_3DNOW, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.ud*, %struct.ud** %4, align 8
  %31 = call i32 @decode_3dnow(%struct.ud* %30)
  store i32 %31, i32* %3, align 4
  br label %149

32:                                               ; preds = %14
  %33 = load %struct.ud*, %struct.ud** %4, align 8
  %34 = getelementptr inbounds %struct.ud, %struct.ud* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %136 [
    i32 139, label %38
    i32 138, label %45
    i32 137, label %53
    i32 140, label %67
    i32 128, label %77
    i32 132, label %82
    i32 135, label %111
    i32 136, label %115
    i32 134, label %119
    i32 131, label %122
    i32 129, label %125
    i32 130, label %128
    i32 133, label %131
  ]

38:                                               ; preds = %32
  %39 = load %struct.ud*, %struct.ud** %4, align 8
  %40 = call i32 @modrm(%struct.ud* %39)
  %41 = call i32 @MODRM_MOD(i32 %40)
  %42 = add nsw i32 %41, 1
  %43 = sdiv i32 %42, 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %6, align 8
  br label %138

45:                                               ; preds = %32
  %46 = load %struct.ud*, %struct.ud** %4, align 8
  %47 = getelementptr inbounds %struct.ud, %struct.ud* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 64
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 1
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  br label %138

53:                                               ; preds = %32
  %54 = load %struct.ud*, %struct.ud** %4, align 8
  %55 = getelementptr inbounds %struct.ud, %struct.ud* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ud*, %struct.ud** %4, align 8
  %58 = getelementptr inbounds %struct.ud, %struct.ud* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @REX_W(i32 %59)
  %61 = load %struct.ud*, %struct.ud** %4, align 8
  %62 = getelementptr inbounds %struct.ud, %struct.ud* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @eff_opr_mode(i32 %56, i32 %60, i32 %63)
  %65 = sdiv i32 %64, 32
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %6, align 8
  br label %138

67:                                               ; preds = %32
  %68 = load %struct.ud*, %struct.ud** %4, align 8
  %69 = getelementptr inbounds %struct.ud, %struct.ud* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ud*, %struct.ud** %4, align 8
  %72 = getelementptr inbounds %struct.ud, %struct.ud* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @eff_adr_mode(i32 %70, i32 %73)
  %75 = sdiv i32 %74, 32
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %6, align 8
  br label %138

77:                                               ; preds = %32
  %78 = load %struct.ud*, %struct.ud** %4, align 8
  %79 = call i32 @modrm(%struct.ud* %78)
  %80 = sub nsw i32 %79, 192
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %6, align 8
  br label %138

82:                                               ; preds = %32
  %83 = load %struct.ud*, %struct.ud** %4, align 8
  %84 = getelementptr inbounds %struct.ud, %struct.ud* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UD_VENDOR_ANY, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.ud*, %struct.ud** %4, align 8
  %90 = getelementptr inbounds %struct.ud, %struct.ud* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %6, align 8
  br label %110

101:                                              ; preds = %82
  %102 = load %struct.ud*, %struct.ud** %4, align 8
  %103 = getelementptr inbounds %struct.ud, %struct.ud* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @UD_VENDOR_AMD, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i64 0, i64* %6, align 8
  br label %109

108:                                              ; preds = %101
  store i64 1, i64* %6, align 8
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %88
  br label %138

111:                                              ; preds = %32
  %112 = load %struct.ud*, %struct.ud** %4, align 8
  %113 = call i32 @modrm(%struct.ud* %112)
  %114 = call i64 @MODRM_RM(i32 %113)
  store i64 %114, i64* %6, align 8
  br label %138

115:                                              ; preds = %32
  %116 = load %struct.ud*, %struct.ud** %4, align 8
  %117 = call i32 @modrm(%struct.ud* %116)
  %118 = call i64 @MODRM_REG(i32 %117)
  store i64 %118, i64* %6, align 8
  br label %138

119:                                              ; preds = %32
  %120 = load %struct.ud*, %struct.ud** %4, align 8
  %121 = call i32 @decode_ssepfx(%struct.ud* %120)
  store i32 %121, i32* %3, align 4
  br label %149

122:                                              ; preds = %32
  %123 = load %struct.ud*, %struct.ud** %4, align 8
  %124 = call i32 @decode_vex(%struct.ud* %123)
  store i32 %124, i32* %3, align 4
  br label %149

125:                                              ; preds = %32
  %126 = load %struct.ud*, %struct.ud** %4, align 8
  %127 = call i64 @vex_w(%struct.ud* %126)
  store i64 %127, i64* %6, align 8
  br label %138

128:                                              ; preds = %32
  %129 = load %struct.ud*, %struct.ud** %4, align 8
  %130 = call i64 @vex_l(%struct.ud* %129)
  store i64 %130, i64* %6, align 8
  br label %138

131:                                              ; preds = %32
  %132 = load %struct.ud*, %struct.ud** %4, align 8
  %133 = call i32 @inp_next(%struct.ud* %132)
  %134 = load %struct.ud*, %struct.ud** %4, align 8
  %135 = call i32 @decode_opcode(%struct.ud* %134)
  store i32 %135, i32* %3, align 4
  br label %149

136:                                              ; preds = %32
  %137 = call i32 @UD_ASSERT(i32 0)
  br label %138

138:                                              ; preds = %136, %128, %125, %115, %111, %110, %77, %67, %53, %45, %38
  %139 = load %struct.ud*, %struct.ud** %4, align 8
  %140 = load %struct.ud*, %struct.ud** %4, align 8
  %141 = getelementptr inbounds %struct.ud, %struct.ud* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @decode_ext(%struct.ud* %139, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %138, %131, %122, %119, %29, %10
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @decode_insn(%struct.ud*, i32) #1

declare dso_local i32 @decode_3dnow(%struct.ud*) #1

declare dso_local i32 @MODRM_MOD(i32) #1

declare dso_local i32 @modrm(%struct.ud*) #1

declare dso_local i32 @eff_opr_mode(i32, i32, i32) #1

declare dso_local i32 @REX_W(i32) #1

declare dso_local i32 @eff_adr_mode(i32, i32) #1

declare dso_local i64 @MODRM_RM(i32) #1

declare dso_local i64 @MODRM_REG(i32) #1

declare dso_local i32 @decode_ssepfx(%struct.ud*) #1

declare dso_local i32 @decode_vex(%struct.ud*) #1

declare dso_local i64 @vex_w(%struct.ud*) #1

declare dso_local i64 @vex_l(%struct.ud*) #1

declare dso_local i32 @inp_next(%struct.ud*) #1

declare dso_local i32 @decode_opcode(%struct.ud*) #1

declare dso_local i32 @UD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
