; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlanst_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlanst_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlanst_.i__ = internal global i64 0, align 8
@dlanst_.sum = internal global i32 0, align 4
@dlanst_.scale = internal global i32 0, align 4
@dlanst_.anorm = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlanst_(i8* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 -1
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 -1
  store i32* %19, i32** %7, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* @dlanst_.anorm, align 4
  br label %190

24:                                               ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @lsame_(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @abs(i32 %34) #3
  store i32 %35, i32* @dlanst_.anorm, align 4
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 1
  store i64 %38, i64* %9, align 8
  store i64 1, i64* @dlanst_.i__, align 8
  br label %39

39:                                               ; preds = %64, %28
  %40 = load i64, i64* @dlanst_.i__, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load i32, i32* @dlanst_.anorm, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* @dlanst_.i__, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @abs(i32 %49) #3
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @max(i32 %51, i32 %52)
  store i32 %53, i32* @dlanst_.anorm, align 4
  %54 = load i32, i32* @dlanst_.anorm, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* @dlanst_.i__, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @abs(i32 %59) #3
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @max(i32 %61, i32 %62)
  store i32 %63, i32* @dlanst_.anorm, align 4
  br label %64

64:                                               ; preds = %43
  %65 = load i64, i64* @dlanst_.i__, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* @dlanst_.i__, align 8
  br label %39

67:                                               ; preds = %39
  br label %189

68:                                               ; preds = %24
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* @lsame_(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i8* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 49
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = call i8* @lsame_(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %157

81:                                               ; preds = %77, %72, %68
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @abs(i32 %88) #3
  store i32 %89, i32* @dlanst_.anorm, align 4
  br label %156

90:                                               ; preds = %81
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @abs(i32 %93) #3
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @abs(i32 %97) #3
  %99 = add nsw i32 %94, %98
  store i32 %99, i32* %13, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @abs(i32 %106) #3
  %108 = load i32*, i32** %7, align 8
  %109 = load i64*, i64** %6, align 8
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @abs(i32 %113) #3
  %115 = add nsw i32 %107, %114
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @max(i32 %116, i32 %117)
  store i32 %118, i32* @dlanst_.anorm, align 4
  %119 = load i64*, i64** %6, align 8
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, 1
  store i64 %121, i64* %9, align 8
  store i64 2, i64* @dlanst_.i__, align 8
  br label %122

122:                                              ; preds = %152, %90
  %123 = load i64, i64* @dlanst_.i__, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp ule i64 %123, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = load i32, i32* @dlanst_.anorm, align 4
  store i32 %127, i32* %14, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i64, i64* @dlanst_.i__, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @abs(i32 %132) #3
  %134 = load i32*, i32** %8, align 8
  %135 = load i64, i64* @dlanst_.i__, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @abs(i32 %138) #3
  %140 = add nsw i32 %133, %139
  %141 = load i32*, i32** %8, align 8
  %142 = load i64, i64* @dlanst_.i__, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @abs(i32 %146) #3
  %148 = add nsw i32 %140, %147
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @max(i32 %149, i32 %150)
  store i32 %151, i32* @dlanst_.anorm, align 4
  br label %152

152:                                              ; preds = %126
  %153 = load i64, i64* @dlanst_.i__, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* @dlanst_.i__, align 8
  br label %122

155:                                              ; preds = %122
  br label %156

156:                                              ; preds = %155, %85
  br label %188

157:                                              ; preds = %77
  %158 = load i8*, i8** %5, align 8
  %159 = call i8* @lsame_(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %160 = icmp ne i8* %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load i8*, i8** %5, align 8
  %163 = call i8* @lsame_(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %187

165:                                              ; preds = %161, %157
  store i32 0, i32* @dlanst_.scale, align 4
  store i32 1, i32* @dlanst_.sum, align 4
  %166 = load i64*, i64** %6, align 8
  %167 = load i64, i64* %166, align 8
  %168 = icmp ugt i64 %167, 1
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load i64*, i64** %6, align 8
  %171 = load i64, i64* %170, align 8
  %172 = sub i64 %171, 1
  store i64 %172, i64* %9, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = call i32 @dlassq_(i64* %9, i32* %174, i64* @c__1, i32* @dlanst_.scale, i32* @dlanst_.sum)
  %176 = load i32, i32* @dlanst_.sum, align 4
  %177 = mul nsw i32 %176, 2
  store i32 %177, i32* @dlanst_.sum, align 4
  br label %178

178:                                              ; preds = %169, %165
  %179 = load i64*, i64** %6, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = call i32 @dlassq_(i64* %179, i32* %181, i64* @c__1, i32* @dlanst_.scale, i32* @dlanst_.sum)
  %183 = load i32, i32* @dlanst_.scale, align 4
  %184 = load i32, i32* @dlanst_.sum, align 4
  %185 = call i32 @sqrt(i32 %184)
  %186 = mul nsw i32 %183, %185
  store i32 %186, i32* @dlanst_.anorm, align 4
  br label %187

187:                                              ; preds = %178, %161
  br label %188

188:                                              ; preds = %187, %156
  br label %189

189:                                              ; preds = %188, %67
  br label %190

190:                                              ; preds = %189, %23
  %191 = load i32, i32* @dlanst_.anorm, align 4
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  ret i32 %192
}

declare dso_local i8* @lsame_(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dlassq_(i64*, i32*, i64*, i32*, i32*) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
