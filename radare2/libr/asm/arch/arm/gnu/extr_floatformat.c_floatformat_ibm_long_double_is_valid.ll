; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_floatformat_ibm_long_double_is_valid.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_floatformat_ibm_long_double_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32, i32, i64, i32, i32, i32, i32, %struct.floatformat* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.floatformat*, i8*)* @floatformat_ibm_long_double_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floatformat_ibm_long_double_is_valid(%struct.floatformat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.floatformat*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %16 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %15, i32 0, i32 7
  %17 = load %struct.floatformat*, %struct.floatformat** %16, align 8
  store %struct.floatformat* %17, %struct.floatformat** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %20 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %23 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %26 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %29 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @get_field(i8* %18, i32 %21, i32 %24, i32 %27, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %35 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %38 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %41 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %44 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @get_field(i8* %33, i32 %36, i32 %39, i32 %42, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %49 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @mant_bits_set(%struct.floatformat* %53, i8* %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %2
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %205

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %63 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66, %60
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %205

73:                                               ; preds = %69
  %74 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = call i32 @mant_bits_set(%struct.floatformat* %74, i8* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %205

81:                                               ; preds = %66
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub nsw i64 %83, 53
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %205

87:                                               ; preds = %81
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %89, 53
  %91 = icmp sgt i64 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %205

96:                                               ; preds = %92, %87
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %178

99:                                               ; preds = %96
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %131, %99
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %103 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %100
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  %109 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %110 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %113 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %116 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %117, %118
  %120 = call i64 @get_field(i8* %108, i32 %111, i32 %114, i32 %119, i32 1)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %106
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %11, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %12, align 4
  br label %134

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %106
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %100

134:                                              ; preds = %127, %100
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %3, align 4
  br label %205

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 0, %139
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %8, align 8
  %143 = sub nsw i64 %142, 53
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %205

146:                                              ; preds = %138
  %147 = load i32, i32* %11, align 4
  %148 = sub nsw i32 0, %147
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %8, align 8
  %151 = sub nsw i64 %150, 53
  %152 = icmp sgt i64 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %205

154:                                              ; preds = %146
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %205

158:                                              ; preds = %154
  %159 = load i8*, i8** %6, align 8
  %160 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %161 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %164 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %167 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %170 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = add i32 %168, %171
  %173 = sub i32 %172, 1
  %174 = call i64 @get_field(i8* %159, i32 %162, i32 %165, i32 %173, i32 1)
  %175 = icmp ne i64 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %3, align 4
  br label %205

178:                                              ; preds = %96
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %181 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %184 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %187 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %190 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = add i32 %188, %191
  %193 = sub i32 %192, 1
  %194 = call i64 @get_field(i8* %179, i32 %182, i32 %185, i32 %193, i32 1)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %205

197:                                              ; preds = %178
  %198 = load %struct.floatformat*, %struct.floatformat** %7, align 8
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 8
  %201 = call i32 @mant_bits_set(%struct.floatformat* %198, i8* %200)
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %197, %196, %158, %157, %153, %145, %137, %95, %86, %73, %72, %59
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i64 @get_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mant_bits_set(%struct.floatformat*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
