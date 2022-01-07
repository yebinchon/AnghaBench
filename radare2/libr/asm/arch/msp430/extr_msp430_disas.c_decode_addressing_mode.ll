; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_addressing_mode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_addressing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"#0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@msp430_register_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"&0x%04x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"0x%x(%s)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"#4\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"#2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"#8\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"#-1\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"#0x%04x\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"@%s+\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c", 0x%04x\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c", &0x%04x\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c", 0x%x(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.msp430_cmd*)* @decode_addressing_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_addressing_mode(i32 %0, i32 %1, i32 %2, %struct.msp430_cmd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msp430_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.msp430_cmd* %3, %struct.msp430_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 16)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @get_as(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_ad(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_src(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @get_dst(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %129 [
    i32 0, label %28
    i32 1, label %46
    i32 2, label %77
    i32 3, label %100
  ]

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  switch i32 %29, label %35 [
    i32 129, label %30
  ]

30:                                               ; preds = %28
  %31 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %45

35:                                               ; preds = %28
  %36 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %37 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** @msp430_register_names, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %35, %30
  store i32 2, i32* %9, align 4
  br label %129

46:                                               ; preds = %4
  store i32 4, i32* %9, align 4
  %47 = load i32, i32* %13, align 4
  switch i32 %47, label %65 [
    i32 130, label %48
    i32 129, label %54
    i32 128, label %59
  ]

48:                                               ; preds = %46
  %49 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 1, i32* %10, align 4
  br label %76

54:                                               ; preds = %46
  %55 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %9, align 4
  br label %76

59:                                               ; preds = %46
  %60 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 1, i32* %10, align 4
  br label %76

65:                                               ; preds = %46
  %66 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i8**, i8*** @msp430_register_names, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %69, i8* %74)
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %65, %59, %54, %48
  br label %129

77:                                               ; preds = %4
  %78 = load i32, i32* %13, align 4
  switch i32 %78, label %89 [
    i32 128, label %79
    i32 129, label %84
  ]

79:                                               ; preds = %77
  %80 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %81 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %82, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %99

84:                                               ; preds = %77
  %85 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %86 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %99

89:                                               ; preds = %77
  %90 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %91 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8**, i8*** @msp430_register_names, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %92, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %89, %84, %79
  store i32 2, i32* %9, align 4
  br label %129

100:                                              ; preds = %4
  store i32 2, i32* %9, align 4
  %101 = load i32, i32* %13, align 4
  switch i32 %101, label %118 [
    i32 128, label %102
    i32 129, label %107
    i32 130, label %112
  ]

102:                                              ; preds = %100
  %103 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %104 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %105, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %128

107:                                              ; preds = %100
  %108 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %109 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %128

112:                                              ; preds = %100
  %113 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %114 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  store i32 1, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %128

118:                                              ; preds = %100
  %119 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %120 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** @msp430_register_names, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %118, %112, %107, %102
  br label %129

129:                                              ; preds = %4, %128, %99, %76, %45
  %130 = load i32, i32* %12, align 4
  switch i32 %130, label %167 [
    i32 0, label %131
    i32 1, label %139
  ]

131:                                              ; preds = %129
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %133 = load i8**, i8*** @msp430_register_names, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %132, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %137)
  br label %167

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %15, align 4
  store i32 6, i32* %9, align 4
  br label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %15, align 4
  store i32 4, i32* %9, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @get_dst(i32 %147)
  switch i32 %148, label %157 [
    i32 130, label %149
    i32 128, label %153
  ]

149:                                              ; preds = %146
  %150 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %151 = load i32, i32* %15, align 4
  %152 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %151)
  br label %166

153:                                              ; preds = %146
  %154 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %155 = load i32, i32* %15, align 4
  %156 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %154, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %155)
  br label %166

157:                                              ; preds = %146
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %159 = load i32, i32* %15, align 4
  %160 = load i8**, i8*** @msp430_register_names, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %158, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %159, i8* %164)
  br label %166

166:                                              ; preds = %157, %153, %149
  br label %167

167:                                              ; preds = %129, %166, %131
  %168 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %169 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %172 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %173 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @strlen(i8* %174)
  %176 = sub i64 7, %175
  %177 = call i32 @strncat(i8* %170, i8* %171, i64 %176)
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %180 = call i32 @decode_emulation(i32 %178, %struct.msp430_cmd* %179)
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_as(i32) #1

declare dso_local i32 @get_ad(i32) #1

declare dso_local i32 @get_src(i32) #1

declare dso_local i32 @get_dst(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @decode_emulation(i32, %struct.msp430_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
