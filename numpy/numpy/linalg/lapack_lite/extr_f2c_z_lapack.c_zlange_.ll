; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlange_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlange_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zlange_.i__ = internal global i32 0, align 4
@zlange_.j = internal global i32 0, align 4
@zlange_.sum = internal global i32 0, align 4
@zlange_.scale = internal global i32 0, align 4
@zlange_.value = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlange_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @min(i32 %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 0, i32* @zlange_.value, align 4
  br label %238

38:                                               ; preds = %6
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @lsame_(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  store i32 0, i32* @zlange_.value, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  store i32 1, i32* @zlange_.j, align 4
  br label %45

45:                                               ; preds = %74, %42
  %46 = load i32, i32* @zlange_.j, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %16, align 4
  store i32 1, i32* @zlange_.i__, align 4
  br label %52

52:                                               ; preds = %70, %49
  %53 = load i32, i32* @zlange_.i__, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32, i32* @zlange_.value, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* @zlange_.i__, align 4
  %60 = load i32, i32* @zlange_.j, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = add nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = call i32 @z_abs(i32* %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @max(i32 %67, i32 %68)
  store i32 %69, i32* @zlange_.value, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @zlange_.i__, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @zlange_.i__, align 4
  br label %52

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* @zlange_.j, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @zlange_.j, align 4
  br label %45

77:                                               ; preds = %45
  br label %237

78:                                               ; preds = %38
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @lsame_(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i8* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 49
  br i1 %86, label %87, label %124

87:                                               ; preds = %82, %78
  store i32 0, i32* @zlange_.value, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  store i32 1, i32* @zlange_.j, align 4
  br label %90

90:                                               ; preds = %120, %87
  %91 = load i32, i32* @zlange_.j, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  store i32 0, i32* @zlange_.sum, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %16, align 4
  store i32 1, i32* @zlange_.i__, align 4
  br label %97

97:                                               ; preds = %113, %94
  %98 = load i32, i32* @zlange_.i__, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* @zlange_.i__, align 4
  %104 = load i32, i32* @zlange_.j, align 4
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = call i32 @z_abs(i32* %109)
  %111 = load i32, i32* @zlange_.sum, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* @zlange_.sum, align 4
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* @zlange_.i__, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @zlange_.i__, align 4
  br label %97

116:                                              ; preds = %97
  %117 = load i32, i32* @zlange_.value, align 4
  %118 = load i32, i32* @zlange_.sum, align 4
  %119 = call i32 @max(i32 %117, i32 %118)
  store i32 %119, i32* @zlange_.value, align 4
  br label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @zlange_.j, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @zlange_.j, align 4
  br label %90

123:                                              ; preds = %90
  br label %236

124:                                              ; preds = %82
  %125 = load i8*, i8** %7, align 8
  %126 = call i8* @lsame_(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %201

128:                                              ; preds = %124
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %15, align 4
  store i32 1, i32* @zlange_.i__, align 4
  br label %131

131:                                              ; preds = %140, %128
  %132 = load i32, i32* @zlange_.i__, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* @zlange_.i__, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @zlange_.i__, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @zlange_.i__, align 4
  br label %131

143:                                              ; preds = %131
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %15, align 4
  store i32 1, i32* @zlange_.j, align 4
  br label %146

146:                                              ; preds = %177, %143
  %147 = load i32, i32* @zlange_.j, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %146
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %16, align 4
  store i32 1, i32* @zlange_.i__, align 4
  br label %153

153:                                              ; preds = %173, %150
  %154 = load i32, i32* @zlange_.i__, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @zlange_.i__, align 4
  %160 = load i32, i32* @zlange_.j, align 4
  %161 = load i32, i32* %13, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  %166 = call i32 @z_abs(i32* %165)
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* @zlange_.i__, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %157
  %174 = load i32, i32* @zlange_.i__, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @zlange_.i__, align 4
  br label %153

176:                                              ; preds = %153
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* @zlange_.j, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* @zlange_.j, align 4
  br label %146

180:                                              ; preds = %146
  store i32 0, i32* @zlange_.value, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %15, align 4
  store i32 1, i32* @zlange_.i__, align 4
  br label %183

183:                                              ; preds = %197, %180
  %184 = load i32, i32* @zlange_.i__, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = load i32, i32* @zlange_.value, align 4
  store i32 %188, i32* %18, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* @zlange_.i__, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %19, align 4
  %196 = call i32 @max(i32 %194, i32 %195)
  store i32 %196, i32* @zlange_.value, align 4
  br label %197

197:                                              ; preds = %187
  %198 = load i32, i32* @zlange_.i__, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @zlange_.i__, align 4
  br label %183

200:                                              ; preds = %183
  br label %235

201:                                              ; preds = %124
  %202 = load i8*, i8** %7, align 8
  %203 = call i8* @lsame_(i8* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %204 = icmp ne i8* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %7, align 8
  %207 = call i8* @lsame_(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %234

209:                                              ; preds = %205, %201
  store i32 0, i32* @zlange_.scale, align 4
  store i32 1, i32* @zlange_.sum, align 4
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %15, align 4
  store i32 1, i32* @zlange_.j, align 4
  br label %212

212:                                              ; preds = %226, %209
  %213 = load i32, i32* @zlange_.j, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp sle i32 %213, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %212
  %217 = load i32*, i32** %8, align 8
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* @zlange_.j, align 4
  %220 = load i32, i32* %13, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %218, i64 %223
  %225 = call i32 @zlassq_(i32* %217, i32* %224, i32* @c__1, i32* @zlange_.scale, i32* @zlange_.sum)
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* @zlange_.j, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* @zlange_.j, align 4
  br label %212

229:                                              ; preds = %212
  %230 = load i32, i32* @zlange_.scale, align 4
  %231 = load i32, i32* @zlange_.sum, align 4
  %232 = call i32 @sqrt(i32 %231)
  %233 = mul nsw i32 %230, %232
  store i32 %233, i32* @zlange_.value, align 4
  br label %234

234:                                              ; preds = %229, %205
  br label %235

235:                                              ; preds = %234, %200
  br label %236

236:                                              ; preds = %235, %123
  br label %237

237:                                              ; preds = %236, %77
  br label %238

238:                                              ; preds = %237, %37
  %239 = load i32, i32* @zlange_.value, align 4
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %17, align 4
  ret i32 %240
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @z_abs(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @zlassq_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
