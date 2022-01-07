; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_parseInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_parseInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@NAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"radix %d out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_parseInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_parseInt(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @NAN, align 4
  %31 = call i32 @jsval_number(i32 %30)
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %7, align 4
  br label %195

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  %37 = icmp uge i32 %36, 2
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_int32(i32* %39, i32 %42, i32* %18)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %7, align 4
  br label %195

49:                                               ; preds = %38
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %18, align 4
  %57 = icmp sgt i32 %56, 36
  br i1 %57, label %58, label %69

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @NAN, align 4
  %65 = call i32 @jsval_number(i32 %64)
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %7, align 4
  br label %195

69:                                               ; preds = %55, %49
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @to_flat_string(i32* %71, i32 %74, i32** %20, i32** %16)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %21, align 4
  store i32 %80, i32* %7, align 4
  br label %195

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %87, %81
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @iswspace(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32*, i32** %16, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %16, align 8
  br label %82

90:                                               ; preds = %82
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %100 [
    i32 43, label %93
    i32 45, label %96
  ]

93:                                               ; preds = %90
  %94 = load i32*, i32** %16, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %16, align 8
  br label %100

96:                                               ; preds = %90
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %14, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %16, align 8
  br label %100

100:                                              ; preds = %90, %96, %93
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 48
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 120
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 88
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %107
  store i32 16, i32* %18, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32* %119, i32** %16, align 8
  br label %124

120:                                              ; preds = %112
  store i32 8, i32* %18, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %16, align 8
  %123 = load i64, i64* @FALSE, align 8
  store i64 %123, i64* %15, align 8
  br label %124

124:                                              ; preds = %120, %117
  br label %126

125:                                              ; preds = %103
  store i32 10, i32* %18, align 4
  br label %126

126:                                              ; preds = %125, %124
  br label %148

127:                                              ; preds = %100
  %128 = load i32, i32* %18, align 4
  %129 = icmp eq i32 %128, 16
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 48
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load i32*, i32** %16, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 120
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %16, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 88
  br i1 %143, label %144, label %147

144:                                              ; preds = %139, %134
  %145 = load i32*, i32** %16, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32* %146, i32** %16, align 8
  br label %147

147:                                              ; preds = %144, %139, %130, %127
  br label %148

148:                                              ; preds = %147, %126
  %149 = load i32*, i32** %16, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %16, align 8
  %151 = load i32, i32* %149, align 4
  %152 = call i32 @char_to_int(i32 %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %167, %156
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %17, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %16, align 8
  %165 = load i32, i32* %163, align 4
  %166 = call i32 @char_to_int(i32 %165)
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %157
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %157, label %171

171:                                              ; preds = %167
  br label %178

172:                                              ; preds = %148
  %173 = load i64, i64* %15, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @NAN, align 4
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %175, %172
  br label %178

178:                                              ; preds = %177, %171
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @jsstr_release(i32* %179)
  %181 = load i64, i64* %14, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* %17, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32*, i32** %13, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @jsval_number(i32 %190)
  %192 = load i32*, i32** %13, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %189, %186
  %194 = load i32, i32* @S_OK, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %193, %79, %67, %47, %33
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @to_int32(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32 @char_to_int(i32) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
