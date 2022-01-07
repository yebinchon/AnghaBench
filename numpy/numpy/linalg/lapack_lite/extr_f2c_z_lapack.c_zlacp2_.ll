; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlacp2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlacp2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@zlacp2_.i__ = internal global i32 0, align 4
@zlacp2_.j = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlacp2_(i8* %0, i32* %1, i32* %2, i8** %3, i32* %4, %struct.TYPE_3__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i8**, i8*** %11, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  store i8** %31, i8*** %11, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %13, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i8* @lsame_(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %94

44:                                               ; preds = %7
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %19, align 4
  store i32 1, i32* @zlacp2_.j, align 4
  br label %47

47:                                               ; preds = %90, %44
  %48 = load i32, i32* @zlacp2_.j, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load i32, i32* @zlacp2_.j, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @min(i32 %52, i32 %54)
  store i32 %55, i32* %20, align 4
  store i32 1, i32* @zlacp2_.i__, align 4
  br label %56

56:                                               ; preds = %86, %51
  %57 = load i32, i32* @zlacp2_.i__, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i32, i32* @zlacp2_.i__, align 4
  %62 = load i32, i32* @zlacp2_.j, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* @zlacp2_.i__, align 4
  %67 = load i32, i32* @zlacp2_.j, align 4
  %68 = load i32, i32* %15, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %22, align 4
  %71 = load i8**, i8*** %11, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i8* %75, i8** %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %60
  %87 = load i32, i32* @zlacp2_.i__, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @zlacp2_.i__, align 4
  br label %56

89:                                               ; preds = %56
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @zlacp2_.j, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @zlacp2_.j, align 4
  br label %47

93:                                               ; preds = %47
  br label %196

94:                                               ; preds = %7
  %95 = load i8*, i8** %8, align 8
  %96 = call i8* @lsame_(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %147

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %19, align 4
  store i32 1, i32* @zlacp2_.j, align 4
  br label %101

101:                                              ; preds = %143, %98
  %102 = load i32, i32* @zlacp2_.j, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %101
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* @zlacp2_.j, align 4
  store i32 %108, i32* @zlacp2_.i__, align 4
  br label %109

109:                                              ; preds = %139, %105
  %110 = load i32, i32* @zlacp2_.i__, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %109
  %114 = load i32, i32* @zlacp2_.i__, align 4
  %115 = load i32, i32* @zlacp2_.j, align 4
  %116 = load i32, i32* %17, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* @zlacp2_.i__, align 4
  %120 = load i32, i32* @zlacp2_.j, align 4
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 %120, %121
  %123 = add nsw i32 %119, %122
  store i32 %123, i32* %22, align 4
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i8* %128, i8** %133, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %113
  %140 = load i32, i32* @zlacp2_.i__, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @zlacp2_.i__, align 4
  br label %109

142:                                              ; preds = %109
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* @zlacp2_.j, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @zlacp2_.j, align 4
  br label %101

146:                                              ; preds = %101
  br label %195

147:                                              ; preds = %94
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %19, align 4
  store i32 1, i32* @zlacp2_.j, align 4
  br label %150

150:                                              ; preds = %191, %147
  %151 = load i32, i32* @zlacp2_.j, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %194

154:                                              ; preds = %150
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %20, align 4
  store i32 1, i32* @zlacp2_.i__, align 4
  br label %157

157:                                              ; preds = %187, %154
  %158 = load i32, i32* @zlacp2_.i__, align 4
  %159 = load i32, i32* %20, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %157
  %162 = load i32, i32* @zlacp2_.i__, align 4
  %163 = load i32, i32* @zlacp2_.j, align 4
  %164 = load i32, i32* %17, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %162, %165
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* @zlacp2_.i__, align 4
  %168 = load i32, i32* @zlacp2_.j, align 4
  %169 = load i32, i32* %15, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %167, %170
  store i32 %171, i32* %22, align 4
  %172 = load i8**, i8*** %11, align 8
  %173 = load i32, i32* %22, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %178 = load i32, i32* %21, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i8* %176, i8** %181, align 8
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %183 = load i32, i32* %21, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %161
  %188 = load i32, i32* @zlacp2_.i__, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @zlacp2_.i__, align 4
  br label %157

190:                                              ; preds = %157
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* @zlacp2_.j, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @zlacp2_.j, align 4
  br label %150

194:                                              ; preds = %150
  br label %195

195:                                              ; preds = %194, %146
  br label %196

196:                                              ; preds = %195, %93
  ret i32 0
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
