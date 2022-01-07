; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_decode_variant_using_iclass.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_decode_variant_using_iclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32** }
%struct.TYPE_5__ = type { i32 }

@FLD_size = common dso_local global i32 0, align 4
@FLD_SVE_M_14 = common dso_local global i32 0, align 4
@FLD_SVE_tszh = common dso_local global i32 0, align 4
@FLD_imm5 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FLD_SVE_M_16 = common dso_local global i32 0, align 4
@FLD_SVE_M_4 = common dso_local global i32 0, align 4
@FLD_SVE_tszl_8 = common dso_local global i32 0, align 4
@FLD_SVE_tszl_19 = common dso_local global i32 0, align 4
@FLD_SVE_sz = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AARCH64_MAX_OPND_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @aarch64_decode_variant_using_iclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aarch64_decode_variant_using_iclass(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %145 [
    i32 139, label %11
    i32 138, label %18
    i32 137, label %41
    i32 136, label %66
    i32 135, label %67
    i32 134, label %74
    i32 133, label %80
    i32 132, label %102
    i32 131, label %109
    i32 130, label %120
    i32 129, label %126
    i32 128, label %139
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLD_size, align 4
  %16 = load i32, i32* @FLD_SVE_M_14, align 4
  %17 = call i32 @extract_fields(i32 %14, i32 0, i32 2, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %147

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FLD_SVE_tszh, align 4
  %23 = load i32, i32* @FLD_imm5, align 4
  %24 = call i32 @extract_fields(i32 %21, i32 0, i32 2, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %178

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %31

40:                                               ; preds = %31
  br label %147

41:                                               ; preds = %1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 132608
  %46 = icmp eq i32 %45, 1536
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %65

48:                                               ; preds = %41
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 132096
  %53 = icmp eq i32 %52, 1024
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %64

55:                                               ; preds = %48
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 131072
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 2, i32* %5, align 4
  br label %63

62:                                               ; preds = %55
  store i32 3, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %47
  br label %147

66:                                               ; preds = %1
  br label %147

67:                                               ; preds = %1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FLD_size, align 4
  %72 = load i32, i32* @FLD_SVE_M_16, align 4
  %73 = call i32 @extract_fields(i32 %70, i32 0, i32 2, i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %147

74:                                               ; preds = %1
  %75 = load i32, i32* @FLD_SVE_M_4, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @extract_field(i32 %75, i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  br label %147

80:                                               ; preds = %1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FLD_SVE_tszh, align 4
  %85 = load i32, i32* @FLD_SVE_tszl_8, align 4
  %86 = call i32 @extract_fields(i32 %83, i32 0, i32 2, i32 %84, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %102, %80
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %2, align 4
  br label %178

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %96, %92
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %93

101:                                              ; preds = %93
  br label %147

102:                                              ; preds = %1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FLD_SVE_tszh, align 4
  %107 = load i32, i32* @FLD_SVE_tszl_19, align 4
  %108 = call i32 @extract_fields(i32 %105, i32 0, i32 2, i32 %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %87

109:                                              ; preds = %1
  %110 = load i32, i32* @FLD_size, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @extract_field(i32 %110, i32 %113, i32 0)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp sge i32 %115, 3
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %2, align 4
  br label %178

119:                                              ; preds = %109
  br label %147

120:                                              ; preds = %1
  %121 = load i32, i32* @FLD_size, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @extract_field(i32 %121, i32 %124, i32 0)
  store i32 %125, i32* %5, align 4
  br label %147

126:                                              ; preds = %1
  %127 = load i32, i32* @FLD_size, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @extract_field(i32 %127, i32 %130, i32 0)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %2, align 4
  br label %178

136:                                              ; preds = %126
  %137 = load i32, i32* %4, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %147

139:                                              ; preds = %1
  %140 = load i32, i32* @FLD_SVE_sz, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @extract_field(i32 %140, i32 %143, i32 0)
  store i32 %144, i32* %5, align 4
  br label %147

145:                                              ; preds = %1
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %2, align 4
  br label %178

147:                                              ; preds = %139, %136, %120, %119, %101, %74, %67, %66, %65, %40, %11
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %173, %147
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %176

152:                                              ; preds = %148
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  br label %173

173:                                              ; preds = %152
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %148

176:                                              ; preds = %148
  %177 = load i32, i32* @TRUE, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %145, %134, %117, %90, %28
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @extract_fields(i32, i32, i32, i32, i32) #1

declare dso_local i32 @extract_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
