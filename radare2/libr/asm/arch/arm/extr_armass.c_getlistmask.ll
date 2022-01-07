; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getlistmask.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getlistmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getlistmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getlistmask(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %174

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %174

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %172, %27
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %173

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %41, %34
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %2, align 8
  br label %35

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 44
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %53, %45
  %62 = phi i1 [ false, %45 ], [ %60, %53 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %45

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @r_str_ncpy(i8* %68, i8* %69, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i8*, i8** %2, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %2, align 8
  %77 = load i8*, i8** %2, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %2, align 8
  br label %84

84:                                               ; preds = %81, %67
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 45
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %93, %85
  %102 = phi i1 [ false, %85 ], [ %100, %93 ]
  br i1 %102, label %103, label %107

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %85

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @getreg(i8* %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %3, align 4
  %119 = icmp sgt i32 %118, 15
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %112
  store i32 -1, i32* %4, align 4
  br label %174

121:                                              ; preds = %117
  %122 = load i32, i32* %3, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %172

126:                                              ; preds = %107
  %127 = load i8*, i8** %11, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @strncpy(i8* %127, i8* %128, i32 %129)
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i8*, i8** %9, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %9, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @getreg(i8* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %147, label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %7, align 4
  %146 = icmp sgt i32 %145, 15
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %126
  store i32 -1, i32* %4, align 4
  br label %174

148:                                              ; preds = %144
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @getreg(i8* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = icmp sgt i32 %154, 15
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %148
  store i32 -1, i32* %4, align 4
  br label %174

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %168, %157
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = shl i32 1, %164
  %166 = load i32, i32* %4, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %159

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %121
  br label %29

173:                                              ; preds = %29
  br label %174

174:                                              ; preds = %173, %156, %147, %120, %26, %18
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @free(i8* %175)
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_str_ncpy(i8*, i8*, i32) #1

declare dso_local i32 @getreg(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
